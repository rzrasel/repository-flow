@echo off
setlocal enabledelayedexpansion

REM Get current branch name
for /f "delims=" %%b in ('git rev-parse --abbrev-ref HEAD') do set branchName=%%b

:loop
echo Current Branch: [%branchName%]
set /p input=Enter Commit Text: 
if "%input%"=="" (
    echo.
    echo You must enter a commit message!
    echo.
    goto loop
)

REM Get timestamp
set date=%DATE%
set time=%TIME%
set hms=!time:~0,2!!time:~3,2!!time:~6,2!
set message=%input% - %date% %hms%

echo.
echo Staging files...
git add .

echo Committing to branch [%branchName%]: "%message%"
git commit -m "%message%"

echo Pulling latest changes...
git pull --all

echo ⬆️ Pushing to all remotes...
git push --all

echo.
echo Commit complete on branch [%branchName%]. Press Enter to exit...
pause >nul