param(
    [string]$ContainerName = "rag-guide-voicevox",
    [string]$Image = "voicevox/voicevox_engine:cpu-ubuntu20.04-latest",
    [int]$Port = 50021
)

$ErrorActionPreference = "Stop"

$python = Join-Path $env:USERPROFILE ".cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe"
if (-not (Test-Path -LiteralPath $python)) {
    $pythonCmd = Get-Command python -ErrorAction SilentlyContinue
    if (-not $pythonCmd) {
        throw "Python was not found. Install Python or run inside the Codex bundled runtime."
    }
    $python = $pythonCmd.Source
}

$docker = Get-Command docker -ErrorAction SilentlyContinue
if (-not $docker) {
    throw "Docker was not found. Install Docker Desktop and start it before generating VOICEVOX audio."
}

& $python -c "import importlib.util, sys; sys.exit(0 if importlib.util.find_spec('lameenc') else 1)"
if ($LASTEXITCODE -ne 0) {
    & $python -m pip install lameenc
}

$running = docker ps --filter "name=$ContainerName" --format "{{.Names}}"
if ($running -contains $ContainerName) {
    Write-Output "VOICEVOX Engine is already running at http://127.0.0.1:$Port"
    Write-Output "PYTHON=$python"
    exit 0
}

$existing = docker ps -a --filter "name=$ContainerName" --format "{{.Names}}"
if ($existing -contains $ContainerName) {
    docker rm $ContainerName | Out-Null
}

docker image inspect $Image *> $null
if ($LASTEXITCODE -ne 0) {
    docker pull $Image
}

docker run --rm -d --name $ContainerName -p "127.0.0.1:$Port`:50021" $Image | Out-Null

$ready = $false
for ($i = 0; $i -lt 90; $i++) {
    try {
        Invoke-RestMethod -Uri "http://127.0.0.1:$Port/version" -TimeoutSec 5 | Out-Null
        $ready = $true
        break
    }
    catch {
        Start-Sleep -Seconds 2
    }
}

if (-not $ready) {
    throw "VOICEVOX Engine did not become ready at http://127.0.0.1:$Port"
}

Write-Output "VOICEVOX Engine is running at http://127.0.0.1:$Port"
Write-Output "PYTHON=$python"
