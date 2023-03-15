@echo off

set "SELF=%~dpnx0"

powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/leander-hyphen/test/main/test.bat', '%~dp0\test.bat')"

if not "%SELF%"=="%~dp0\test.bat" (
    start "" "%~dp0\test.bat"
    exit /b
)

echo off
title 0..bat
echo 0.bat
pause >nul
