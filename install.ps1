#Create a temporary directory to store Google Chrome.
md -Path $env:temp\chromeinstall -erroraction SilentlyContinue | Out-Null
$Download = join-path $env:temp\chromeinstall chrome_installer.exe

#Download the Google Chrome installer.
$url = 'https://dl.google.com/chrome/install/latest/chrome_installer.exe'
Invoke-WebRequest $url  -OutFile $Download

#Perform a silent installation of Google Chrome.
Invoke-Expression "$Download /silent /install"
