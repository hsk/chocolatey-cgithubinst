$package = 'cgithubinst'
$url = "https://github.com/hsk/chocolatey-cgithubinst/raw/master/cgithubinst/"

$files = @("cgithubinst.bat",
  "ctest.bat",
  "yaml2xml.rb",
  "xml2yaml.rb")

$binRoot = Get-BinRoot
$installDir = "$binRoot\bin\"
Write-Host "install dir is $installDir"
if (![System.IO.Directory]::Exists($installDir)) {[System.IO.Directory]::CreateDirectory("$installDir")}

foreach ($file in $files) {
    Remove-Item "$installDir\$file"

    Get-ChocolateyWebFile "$package" "$installDir\$file" "$url\$file"
}

Install-ChocolateyPath "$($installDir)"
$env:Path += ";$installDir"

Write-ChocolateySuccess $package
