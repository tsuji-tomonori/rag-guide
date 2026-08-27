from __future__ import annotations

import argparse
import sys
import wave
from pathlib import Path

import lameenc


def convert_wav_to_mp3(input_wav: Path, output_mp3: Path, bit_rate: int) -> None:
    with wave.open(str(input_wav), "rb") as source:
        channels = source.getnchannels()
        sample_width = source.getsampwidth()
        sample_rate = source.getframerate()
        pcm = source.readframes(source.getnframes())

    if sample_width != 2:
        raise SystemExit(f"unsupported sample width: {sample_width}. expected 16-bit PCM wav.")

    encoder = lameenc.Encoder()
    encoder.set_bit_rate(bit_rate)
    encoder.set_in_sample_rate(sample_rate)
    encoder.set_channels(channels)
    encoder.set_quality(2)

    output_mp3.parent.mkdir(parents=True, exist_ok=True)
    output_mp3.write_bytes(encoder.encode(pcm) + encoder.flush())


def main() -> int:
    parser = argparse.ArgumentParser(description="Convert a 16-bit PCM WAV file to MP3.")
    parser.add_argument("--in-wav", required=True, type=Path)
    parser.add_argument("--out-mp3", required=True, type=Path)
    parser.add_argument("--bit-rate", default=128, type=int)
    args = parser.parse_args()

    convert_wav_to_mp3(args.in_wav, args.out_mp3, args.bit_rate)
    print(f"wrote {args.out_mp3}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
