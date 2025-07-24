$ErrorActionPreference = 'Stop'
$url64      = "https://github.com/gardener/gardenctl-v2/releases/download/v3.0.16/gardenctl_v2_windows_amd64.exe"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  Url64bit        = $url64
  ChecksumType64  = 'sha256'
  Checksum64      = "adb843cd90975ac4b32b7370ed5e4ec869abd070a50da3e253c6fbada16e048e"
  FileFullPath    = "$toolsDir\gardenctl.exe"
}
Get-ChocolateyWebFile @packageArgs
