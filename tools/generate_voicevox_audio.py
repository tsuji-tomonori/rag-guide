from __future__ import annotations

import argparse
import json
import shutil
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
import wave
from pathlib import Path


def request_json(
    url: str,
    *,
    method: str = "GET",
    data: bytes | None = None,
    timeout: int = 120,
    retries: int = 3,
) -> object:
    req = urllib.request.Request(
        url,
        data=data,
        method=method,
        headers={"Content-Type": "application/json"},
    )
    for attempt in range(1, retries + 1):
        try:
            with urllib.request.urlopen(req, timeout=timeout) as response:
                return json.loads(response.read().decode("utf-8"))
        except (urllib.error.URLError, ConnectionError) as exc:
            if attempt == retries:
                raise
            print(f"request failed; retrying in 15s ({attempt}/{retries}): {exc}", flush=True)
            time.sleep(15)
    raise RuntimeError("unreachable")


def request_bytes(
    url: str,
    *,
    method: str = "POST",
    data: bytes | None = None,
    timeout: int = 600,
    retries: int = 3,
) -> bytes:
    req = urllib.request.Request(
        url,
        data=data,
        method=method,
        headers={"Content-Type": "application/json"},
    )
    for attempt in range(1, retries + 1):
        try:
            with urllib.request.urlopen(req, timeout=timeout) as response:
                return response.read()
        except (urllib.error.URLError, ConnectionError) as exc:
            if attempt == retries:
                raise
            print(f"request failed; retrying in 15s ({attempt}/{retries}): {exc}", flush=True)
            time.sleep(15)
    raise RuntimeError("unreachable")


def find_speaker_id(host: str, speaker_name: str, style_name: str) -> int:
    speakers = request_json(f"{host}/speakers")
    assert isinstance(speakers, list)
    for speaker in speakers:
        if speaker.get("name") != speaker_name:
            continue
        for style in speaker.get("styles", []):
            if style.get("name") == style_name:
                return int(style["id"])
        available = ", ".join(style.get("name", "") for style in speaker.get("styles", []))
        raise SystemExit(f"style not found for {speaker_name}: {style_name}. available: {available}")
    available_speakers = ", ".join(str(s.get("name", "")) for s in speakers)
    raise SystemExit(f"speaker not found: {speaker_name}. available: {available_speakers}")


def split_text(text: str, max_chars: int) -> list[str]:
    paragraphs = [part.strip() for part in text.replace("\r\n", "\n").split("\n\n") if part.strip()]
    chunks: list[str] = []
    current = ""
    for paragraph in paragraphs:
        if len(current) + len(paragraph) + 2 <= max_chars:
            current = f"{current}\n\n{paragraph}".strip()
            continue
        if current:
            chunks.append(current)
            current = ""
        if len(paragraph) <= max_chars:
            current = paragraph
            continue
        sentences = paragraph.replace("。", "。\n").splitlines()
        for sentence in sentences:
            if len(current) + len(sentence) + 1 > max_chars and current:
                chunks.append(current)
                current = sentence
            else:
                current = f"{current}{sentence}".strip()
    if current:
        chunks.append(current)
    return chunks


def synthesize_chunk(host: str, speaker_id: int, text: str, speed_scale: float, pause_length: float) -> bytes:
    query_params = urllib.parse.urlencode({"text": text, "speaker": speaker_id})
    query = request_json(f"{host}/audio_query?{query_params}", method="POST", retries=5)
    assert isinstance(query, dict)
    query["speedScale"] = speed_scale
    query["pauseLength"] = pause_length
    query["pauseLengthScale"] = 1.0
    synth_params = urllib.parse.urlencode({"speaker": speaker_id})
    return request_bytes(
        f"{host}/synthesis?{synth_params}",
        method="POST",
        data=json.dumps(query, ensure_ascii=False).encode("utf-8"),
        retries=5,
    )


def concatenate_wavs(wav_files: list[Path], output_file: Path) -> None:
    params = None
    frames = []
    for wav_file in wav_files:
        with wave.open(str(wav_file), "rb") as source:
            source_params = source.getparams()
            if params is None:
                params = source_params
            elif source_params[:3] != params[:3]:
                raise SystemExit(f"wav format mismatch: {wav_file}")
            frames.append(source.readframes(source.getnframes()))
    if params is None:
        raise SystemExit("no wav files generated")
    output_file.parent.mkdir(parents=True, exist_ok=True)
    with wave.open(str(output_file), "wb") as target:
        target.setparams(params)
        for frame in frames:
            target.writeframes(frame)


def main() -> int:
    parser = argparse.ArgumentParser(description="Generate narration WAV with VOICEVOX Engine.")
    parser.add_argument("--text", required=True, type=Path)
    parser.add_argument("--out-wav", required=True, type=Path)
    parser.add_argument("--host", default="http://127.0.0.1:50021")
    parser.add_argument("--speaker-name", default="ずんだもん")
    parser.add_argument("--style-name", default="ノーマル")
    parser.add_argument("--speed-scale", default=1.0, type=float)
    parser.add_argument("--pause-length", default=0.45, type=float)
    parser.add_argument("--max-chars", default=700, type=int)
    parser.add_argument("--keep-chunks", action="store_true")
    args = parser.parse_args()

    text = args.text.read_text(encoding="utf-8").strip()
    if not text:
        raise SystemExit("input text is empty")

    try:
        speaker_id = find_speaker_id(args.host.rstrip("/"), args.speaker_name, args.style_name)
    except urllib.error.URLError as exc:
        raise SystemExit(f"VOICEVOX Engine is not reachable: {exc}") from exc

    chunks = split_text(text, args.max_chars)
    temp_dir = args.out_wav.with_suffix("")
    temp_dir.mkdir(parents=True, exist_ok=True)
    wav_files = []
    for index, chunk in enumerate(chunks, start=1):
        wav_file = temp_dir / f"chunk_{index:03}.wav"
        if wav_file.exists() and wav_file.stat().st_size > 0:
            wav_files.append(wav_file)
            print(f"reusing {wav_file}", flush=True)
            continue
        wav_file.write_bytes(
            synthesize_chunk(args.host.rstrip("/"), speaker_id, chunk, args.speed_scale, args.pause_length)
        )
        wav_files.append(wav_file)
        print(f"generated {wav_file}")

    concatenate_wavs(wav_files, args.out_wav)
    if not args.keep_chunks:
        shutil.rmtree(temp_dir)
    print(f"wrote {args.out_wav}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
