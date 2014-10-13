: ファイルのパスを取得(例 \folder1\folder1.2\)
SET FilePath=%~dp0
: 取得したパスの終端の「\」取り除く(例 \folder1\folder1.2)
SET FilePath=%FilePath:~0,-1%
: forを使用してバッチパラメータを使いフォルダ名のみを取得する(例 folder1.2)
FOR /F "DELIMS=" %%A IN ("%FilePath%") DO SET FolderName=%%~nxA
echo %FolderName%

rem cuninst -source %CD% -force %1
rem cpack
rem cinst -source %CD% -force %1

echo %~dp0

