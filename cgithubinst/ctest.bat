: �t�@�C���̃p�X���擾(�� \folder1\folder1.2\)
SET FilePath=%~dp0
: �擾�����p�X�̏I�[�́u\�v��菜��(�� \folder1\folder1.2)
SET FilePath=%FilePath:~0,-1%
: for���g�p���ăo�b�`�p�����[�^���g���t�H���_���݂̂��擾����(�� folder1.2)
FOR /F "DELIMS=" %%A IN ("%FilePath%") DO SET FolderName=%%~nxA
echo %FolderName%

rem cuninst -source %CD% -force %1
rem cpack
rem cinst -source %CD% -force %1

echo %~dp0

