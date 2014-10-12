$package = 'cgithubinst'
$url = "https://github.com/hsk/chocolatey-cgithubinst/raw/master/cgithubinst.bat"

$binRoot = Get-BinRoot
Write-Host "Bin Root is $binRoot"
$installDir = "$binRoot\bin\"
if (![System.IO.Directory]::Exists($installDir)) {[System.IO.Directory]::CreateDirectory("$installDir")}

Get-ChocolateyWebFile "$package" "$installDir\cgithubinst.bat" "$url"

Install-ChocolateyPath "$($installDir)"
Install-ChocolateyPath "$($binRoot)"
$env:Path += ";$installDir"

Write-ChocolateySuccess $package
