$ErrorActionPreference = 'Stop'
$url64      = "https://github.com/gardener/gardenlogin/releases/download/v3.0.18/gardenlogin_windows_amd64.exe"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  Url64bit        = $url64
  ChecksumType64  = 'sha256'
  Checksum64      = "ecc632cdc61e925ee4fb3ca8d4f781980969fcfa5da2aa8d7ac5fcede7e7780a"
  FileFullPath    = "$toolsDir\gardenlogin.exe"
}
Get-ChocolateyWebFile @packageArgs
Install-BinFile -Name "kubectl-gardenlogin" -Path "$toolsDir\gardenlogin.exe"

