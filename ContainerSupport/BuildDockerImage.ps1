$error.clear()
try { 
podman build -t local/antora:auroleap -f $PSScriptRoot/AuroleapExtendedAntora.Dockerfile .
}
catch { "Error occured" }
if (!$error) { 
"****************************************************************"
"                        No Error Occured" 
"****************************************************************"
#"Closing in 3 seconds..."
#Start-Sleep -Seconds 3
}else{
"****************************************************************"
"                             ERROR" 
"****************************************************************"
}
Write-Host 'Press any key to close...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

