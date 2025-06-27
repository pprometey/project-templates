param (
    [string]$ImageName = "debian-trixie-base",
    [string]$Version = "1.0.1",
    [string]$DockerHubUser = "pprometey"
)

# Проверка наличия Dockerfile
if (-Not (Test-Path -Path "./Dockerfile")) {
    Write-Error "Dockerfile not found in the current directory."
    exit 1
}

# Сборка образа
docker build -f Dockerfile -t $ImageName .

if ($LASTEXITCODE -ne 0) {
    Write-Error "Failed to build image '$ImageName'."
    exit 1
}

$FullNameVersion = "$DockerHubUser/$ImageName`:$Version"
$FullNameLatest = "$DockerHubUser/$ImageName`:latest"

Write-Host "Tagging local image '$ImageName' as:"
Write-Host "  - $FullNameVersion"
Write-Host "  - $FullNameLatest"

docker tag $ImageName $FullNameVersion
docker tag $ImageName $FullNameLatest

Write-Host "Logging in to Docker Hub if required..."
docker login

Write-Host "Pushing images to Docker Hub:"
docker push $FullNameVersion
docker push $FullNameLatest

Write-Host "Successfully pushed:"
Write-Host "  - $FullNameVersion"
Write-Host "  - $FullNameLatest"
