@echo off
if "%2" == "" goto error

git clone git@github.com:%1/chocolatey-%2.git
cd chocolatey-%2
if "%3" == "" goto p2
cd %3
:p2
cpack
cinst -source %CD% %3 %4 %5 %6 %7
cd ..\..
goto end

:p2
cpack
cinst -source %CD% %2 %3 %4 %5 %6 %7
cd ..

goto end
:error
@echo cgithubinst username reponame [packagename] [-force]
:end

