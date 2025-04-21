@echo off
setlocal enabledelayedexpansion

set /p input=Enter Commit Text: 
cls
echo Commit Message: %input%

set date=%DATE%
set time=%TIME%
set now=!time:~0,2!!time:~3,2!!time:~6,2!

REM Create full commit message with timestamp
set message=%input%  %date% %now%

REM Git commands
git add .
git commit -m "%message%"
git pull --all
git push --all

echo.
echo Process Complete! Press Enter to exit...
pause >nul