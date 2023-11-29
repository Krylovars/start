@ECHO off
cls
:start
ECHO 1. Start
ECHO 2. DB
ECHO 3. SCP
set /p choice=What?
if '%choice%'=='' ECHO "%choice%"  NO!!
if '%choice%'=='1' goto Start
if '%choice%'=='2' goto DB
if '%choice%'=='3' goto SCP
ECHO
goto start
:Start
mkdir "" "C:\001\%DATE:~6,8%\%DATE:~3,2%.%DATE:~0,2%"
start "" "C:\001\%DATE:~6,8%\%DATE:~3,2%.%DATE:~0,2%"
@REM git clone https://github.com/KrylovArseny/git_test.git
@REM git add .
@REM git commit -m "Пофиксил"
@REM git push
@REM git branch -v  
@REM git checkout -b new_branch
@REM git commit -a # делаем коммит всех изменений в new_feature
@REM git push origin
@REM git checkout main # переключаемся на master
@REM git merge new1/1 # мержим ветку new_feature
goto end
:bye
ECHO BYE
exit
:DB
start explorer "C:\Users\arsen\AppData\Local\DBeaver\dbeaver.exe"
goto end
:bye
ECHO BYE
exit
:SCP
start explorer "C:\Program Files (x86)\WinSCP\WinSCP.exe"
goto end
:bye
ECHO BYE
exit