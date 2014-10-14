@echo off
if "%2" == "" goto error

git clone git@github.com:%1/chocolatey-%2.git
cd chocolatey-%2
if "%3" == "" goto p2
cd %3

if exist "%3.nuspec.yaml" yaml2xml.rb

cpack
cinst -source %CD% %3 %4 %5 %6 %7
cd ..\..
goto end

:p2

if exist "%2.nuspec.yaml" yaml2xml.rb

cpack
cinst -source %CD% %2 %3 %4 %5 %6 %7
cd ..

goto end
:error
@echo cgithubinst username reponame [packagename] [-force]
:end

