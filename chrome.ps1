#Create a temporary directory to store Google Chrome.
New-Item -Path $env:temp\automation -ItemType Directory -Force -ErrorAction:SilentlyContinue
$path = Join-Path $env:temp\automation chrome_installer.exe

#Download the Google Chrome installer.
$url = 'https://dl.google.com/chrome/install/latest/chrome_installer.exe'
(new-object System.Net.WebClient).DownloadFile($url,$path)

#Perform a silent installation of Google Chrome.
Invoke-Expression "$path /silent /install"
