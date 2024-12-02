"Running container in path:"
$setdir = (Split-Path $PSScriptRoot) + "\"
$setdir
$error.clear()
try { 
#podman run -v ${setdir}:/usr/local/Working/ --rm -t local/antora:auroleap
#podman run -v ${setdir}:/usr/local/:Z --rm -t local/antora:auroleap antora.yml
podman run -v ${setdir}:/antora:Z --rm -t local/antora:auroleap antora.yml
}
catch { "Error occured" }
Write-Host 'Press any key to close...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
