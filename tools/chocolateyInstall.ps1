$package = 'cgithubinst'
$url = "https://github.com/hsk/chocolatey-cgithubinst/raw/master/cgithubinst.bat"

$binRoot = Get-BinRoot
Write-Debug "Bin Root is $binRoot"

Get-ChocolateyWebFile "$package" "$binRoot\cgithubinst.bat" "$url"
