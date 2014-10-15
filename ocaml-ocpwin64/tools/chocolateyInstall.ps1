$url = 'http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin64/ocpwin64-20141010-mingw64-4.01.0+ocp1.exe'

Install-ChocolateyPackage 'ocaml-ocpwin64' 'exe' '/VERYSILENT' "$($url)"
