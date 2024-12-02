#podman run -v ${PWD}:/antora:Z --rm -t local/antora:auroleap entrypoint.sh
#podman run -v ${PWD}:/ --rm -t antora/antora antora-playbook.yml
#"Script location:"
#$PSScriptRoot
"Running container in path:"
$BinDir = $PSScriptRoot + "\DockerAppPath"
$BinDir
$setdir = (Split-Path $PSScriptRoot) + "\Working\Antora"
$setdir
$error.clear()
try { 

#podman run -v ${setdir}:/usr/app/antora --rm -t local/antora:auroleap
#podman run -v ${PSScriptRoot}:/usr/app --rm -t local/antora:auroleap
podman run -v ${setdir}:/Working/Antora --rm -t local/antora:auroleap
}
catch { "Error occured" }
Write-Host 'Press any key to close...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
