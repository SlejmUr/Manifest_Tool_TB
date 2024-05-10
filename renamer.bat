@echo off

set "file=CODEX.ini"

if not exist "%file%" (
    echo CODEX.ini file not found.
    exit /b
)

set /p newGameName=Enter new GameName: 
set /p newUsername=Enter new Username: 

(for /f "tokens=1,* delims==" %%a in ('type "%file%"') do (
    if "%%a"=="GameName" (
        echo GameName=%newGameName%
    ) else if "%%a"=="UserName" (
        echo UserName=%newUsername%
    ) else (
        echo %%a=%%b
    )
)) > "%file%.tmp"

move /y "%file%.tmp" "%file%" > nul

echo GameName and UserName updated successfully.
