$error.clear()
try { 
podman build -t local/antora:auroleap -f $PSScriptRoot/AuroleapExtendedAntora.Dockerfile .
#podman build -t local/antora:auroleap -f $PSScriptRoot/Dockerfile.txt .
}
catch { "Error occured" }
Write-Host 'Press any key to close...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

