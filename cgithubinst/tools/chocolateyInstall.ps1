$package = 'cgithubinst'
$url = "https://github.com/hsk/chocolatey-cgithubinst/raw/master/cgithubinst/"

$files = @("cgithubinst.bat",
  "ctest.bat",
  "cyaml2xml.rb",
  "cxml2yaml.rb")

Start-Process "gem" -ArgumentList "simple-xml"

$binRoot = Get-BinRoot
# $installDir = "$binRoot\bin\"
# $installDir = "$env:ChocolateyInstall"
$installDir =  Split-Path -parent $MyInvocation.MyCommand.Definition
$installDir =  Split-Path -parent $installDir
$installDir = "$installDir\bin"
Write-Host "install dir is $installDir"

#if (![System.IO.Directory]::Exists($installDir)) {[System.IO.Directory]::CreateDirectory("$installDir")}

#foreach ($file in $files) {
#    Remove-Item "$installDir\$file"
#    Get-ChocolateyWebFile "$package" "$installDir\$file" "$url\$file"
#}

Install-ChocolateyPath "$($installDir)"
$env:PATH = "$env:PATH;$installDir"

Write-ChocolateySuccess $package
