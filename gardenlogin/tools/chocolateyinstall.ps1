$ErrorActionPreference = 'Stop'
$url64      = "https://github.com/gardener/gardenlogin/releases/download/v3.0.14/gardenlogin_windows_amd64.exe"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  Url64bit        = $url64
  ChecksumType64  = 'sha256'
  Checksum64      = "3d43aac1063c47c745d84f30e5baa519ef92fb8fb1462e5caa6a3ffc5850aedb"
  FileFullPath    = "$toolsDir\gardenlogin.exe"
}
Get-ChocolateyWebFile @packageArgs
Install-BinFile -Name "kubectl-gardenlogin" -Path "$toolsDir\gardenlogin.exe"

