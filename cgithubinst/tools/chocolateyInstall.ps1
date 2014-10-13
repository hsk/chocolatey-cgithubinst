$package = 'cgithubinst'
$url = "https://github.com/hsk/chocolatey-cgithubinst/raw/master/cgithubinst/cgithubinst.bat"
$url2 = "https://github.com/hsk/chocolatey-cgithubinst/raw/master/cgithubinst/ctest.bat"

$binRoot = Get-BinRoot
Write-Host "Bin Root is $binRoot"
$installDir = "$binRoot\bin\"
if (![System.IO.Directory]::Exists($installDir)) {[System.IO.Directory]::CreateDirectory("$installDir")}

Remove-Item "$installDir\cgithubinst.bat"
Remove-Item "$installDir\ctest.bat"

Get-ChocolateyWebFile "$package" "$installDir\cgithubinst.bat" "$url"
Get-ChocolateyWebFile "$package" "$installDir\ctest.bat" "$url2"

Install-ChocolateyPath "$($installDir)"
Install-ChocolateyPath "$($binRoot)"
$env:Path += ";$installDir"

Write-ChocolateySuccess $package
