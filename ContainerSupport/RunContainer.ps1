#podman run -v ${PWD}:/antora:Z --rm -t local/antora:auroleap entrypoint.sh
#podman run -v ${PWD}:/ --rm -t antora/antora antora-playbook.yml
"Script location:"
$PSScriptRoot
"Running container in path:"
${env:PWD}
pwd
$error.clear()
try { 

podman run -v ${PWD}:/usr/app --rm -t local/antora:auroleap
}
catch { "Error occured" }
if (!$error) { 
"****************************************************************"
"                        No Error Occured" 
"****************************************************************"
#"Closing in 3 seconds..."
#Start-Sleep -Seconds 
}else{
"****************************************************************"
"                             ERROR" 
"****************************************************************"
}
Write-Host 'Press any key to close...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
