$package = 'newml'
$url = "https://github.com/hsk/newml"

$installDir =  Split-Path -parent $MyInvocation.MyCommand.Definition
$installDir =  Split-Path -parent $installDir
Set-Location -Path $installDir -PassThru

$installDir = "$installDir\newml"
Write-Host "install dir is $installDir"

if (![System.IO.Directory]::Exists($installDir)) {[System.IO.Directory]::CreateDirectory("$installDir")}

Start-Process "git" -ArgumentList "clone $url.git" -PassThru -Wait -NoNewWindow

Set-Location -Path $installDir -PassThru

Start-Process "ocamlyacc" -ArgumentList "parser.mly" -PassThru -Wait -NoNewWindow

Remove-Item "parser.mli"

Start-Process "ocamllex" -ArgumentList "lexer.mll" -PassThru -Wait -NoNewWindow

Start-Process "ocamlc" -ArgumentList "ast.ml parser.ml lexer.ml gen_ml.ml main.ml -o newmlc.exe" -PassThru -Wait -NoNewWindow

Install-ChocolateyPath "$($installDir)"
$env:PATH = "$env:PATH;$installDir"

Write-ChocolateySuccess $package
