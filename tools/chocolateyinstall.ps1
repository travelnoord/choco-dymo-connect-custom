$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'dymo-connect-custom*'
  fileType       = 'exe'
  silentArgs     = "/S /V`"/qn /norestart`""
  validExitCodes = @(0,1641,3010)
  url            = '\\nas.internoord.local\software\dymo-connect\DCDSetup1.4.6.37.exe'
  checksum       = '82272f159dbc2318989681056db5a0a3e502a4d780807a50ecd849f30845e644'
  checksumType   = 'sha256'
  destination    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyPackage @packageArgs