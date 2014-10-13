# Chocolatey github installer

cgithubinit is Chocolatey github installer

## install

```
$ git clone git@github.com:hsk/chocolatey-cgithubinst.git
$ cd chocolatey-cgithubinst
$ ctest

```

## usage

```
$ cgithubinst username reposname [packagename] [-force]
```

## ctest

ctest is easy package uninstall cpack and install tool.

ctest process like follow commands.
```
cuinst -source %cd% package
cpack
cinst -source %cd% package
```

usase:

```
$ ctest

or

$ ctest -force
```

## examples

```
cgithubinst cd01 KaoriyaVim
cgithubinst hsk mingw-get
cgithubinst hsk ocaml

mingw-get upgrade
mingw-get update
mingw-get install msys
mingw-get install msys-base
mingw-get install msys-bash
mingw-get install msys-wget
chocolatey install curl
mingw-get install mingw-developer-toolkit

curl -kL https://raw.github.com/hcarty/ocamlbrew/master/ocamlbrew-install | env OCAMLBREW_FLAGS="-r" bash
git clone https://github.com/protz/ocaml-installer.git

```
