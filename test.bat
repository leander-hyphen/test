@echo off

set "SELF=%~dpnx0"

powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/leander-hyphen/test/raw/main/test.bat', '%~dp0\test.bat')"

ping -n 1 -w 1000 127.0.0.1 >nul

if not "%SELF%"=="%~dp0\test.bat" (
    echo Updating now...
    timeout /t 5 /nobreak >nul
    start "" "%~dp0\test.bat"
    exit /b
) else (
    echo This batch file is up-to-date.
    echo Welcome to my batch file!
    :: Your batch file commands here
echo updated!
)
