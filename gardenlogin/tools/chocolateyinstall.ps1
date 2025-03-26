$ErrorActionPreference = 'Stop'
$url64      = "https://github.com/gardener/gardenlogin/releases/download/v3.0.15/gardenlogin_windows_amd64.exe"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  Url64bit        = $url64
  ChecksumType64  = 'sha256'
  Checksum64      = "f0301a5f7def4c94d63186624ff81f13bbbf36f628c27572b29c61a400812f73"
  FileFullPath    = "$toolsDir\gardenlogin.exe"
}
Get-ChocolateyWebFile @packageArgs
Install-BinFile -Name "kubectl-gardenlogin" -Path "$toolsDir\gardenlogin.exe"

