SET FilePath=%CD%
FOR /F "DELIMS=" %%A IN ("%FilePath%") DO SET FolderName=%%~nxA
if exist "%FolderName%.nuspec.yaml" yaml2xml.rb

cuninst -source %CD% -force %FolderName%

cpack
cinst -force %FolderName% -source '"%cd%;http://chocolatey.org/api/v2/"'


