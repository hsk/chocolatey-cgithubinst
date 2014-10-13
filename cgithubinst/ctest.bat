SET FilePath=%CD%
FOR /F "DELIMS=" %%A IN ("%FilePath%") DO SET FolderName=%%~nxA

cuninst -source %CD% -force %FolderName%
cpack
cinst -source %CD% -force %FolderName%


