@echo off
if "%2" == "" goto error

git clone git@github.com:%1/chocolatey-%2.git
cd chocolatey-%2

cpack
cinst -source %CD% %2 %3 %4 %5 %6 %7
cd ..

goto end
:error
@echo cgithubinst username packagename [-force]
:end

