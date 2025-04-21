@echo off
:loop
set /p input=Enter Commit Text: 
if "%input%"=="" (
    echo You must enter a commit message!
    goto loop
)

set date=%DATE%
set time=%TIME%
set message=%input% %date% %time%

git add .
git commit -m "%message%"
git pull --all
git push --all

echo Process Complete. Press Enter to exit...