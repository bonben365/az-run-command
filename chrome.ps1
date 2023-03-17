#Create a temporary directory to store Google Chrome.
New-Item -Path $env:temp\automation -ItemType Directory -Force -ErrorAction:SilentlyContinue
$path = Join-Path $env:temp\automation chrome_installer.exe

#Download and install the Google Chrome.
$url = 'https://dl.google.com/chrome/install/latest/chrome_installer.exe'
(new-object System.Net.WebClient).DownloadFile($url,$path)
Invoke-Expression "$path /silent /install"

#Download and install Mozilla Firefox.
$path = Join-Path $env:temp\automation firefox_installer.exe
$url = 'https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US'
(new-object System.Net.WebClient).DownloadFile($url,$path)
Invoke-Expression "$path /silent /install"
