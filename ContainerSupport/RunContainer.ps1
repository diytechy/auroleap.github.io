"Running container in path:"
$setdir = (Split-Path $PSScriptRoot) + "\"
$setdir
$error.clear()
try { 

#podman run -v ${setdir}:/usr/app/antora --rm -t local/antora:auroleap
#podman run -v ${PSScriptRoot}:/usr/app --rm -t local/antora:auroleap
podman run -v ${setdir}:/usr/local/Working/ --rm -t local/antora:auroleap
}
catch { "Error occured" }
Write-Host 'Press any key to close...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
