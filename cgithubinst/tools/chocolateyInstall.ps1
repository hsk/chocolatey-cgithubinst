$package = 'cgithubinst'
$url = "https://github.com/hsk/chocolatey-cgithubinst/raw/master/cgithubinst.bat"
$url2 = "https://github.com/hsk/chocolatey-cgithubinst/raw/master/ctest.bat"

$binRoot = Get-BinRoot
Write-Host "Bin Root is $binRoot"
$installDir = "$binRoot\bin\"
if (![System.IO.Directory]::Exists($installDir)) {[System.IO.Directory]::CreateDirectory("$installDir")}

Get-ChocolateyWebFile "$package" "$installDir\cgithubinst.bat" "$url"
Get-ChocolateyWebFile "$package" "$installDir\ctest.bat" "$url2"

Install-ChocolateyPath "$($installDir)"
Install-ChocolateyPath "$($binRoot)"
$env:Path += ";$installDir"

Write-ChocolateySuccess $package
