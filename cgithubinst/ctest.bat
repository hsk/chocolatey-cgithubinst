SET FilePath=%~dp0
SET FilePath=%FilePath:~0,-1%
FOR /F "DELIMS=" %%A IN ("%FilePath%") DO SET FolderName=%%~nxA

cuninst -source %CD% -force %FolderName%
cpack
cinst -source %CD% -force %FolderName%


