@echo off
setlocal enabledelayedexpansion

rem Define usernames and passwords
set "user1=walker"
set "pass1=walker#1234"
set "user2=shadow"
set "pass2=shadowlive"
set "user3=dagaya"
set "pass3=dagaya#1234"
set "user4=teddy"
set "pass4=teddy#1234"
set "user5=tst"
set "pass5=tst"
set "user6=monis"
set "pass6=monis#1234"
set "user7=free"
set "pass7=123"

:login
cls
echo.
echo.
echo    [94m   DARK FORCE Chams V3.26
echo.
echo    [96m Please login to continue 
echo.
set /p usern=    [95m        Username: 
echo.
set /p passwd=    [95m        Password: 

rem Check credentials
set "valid=false"
for /L %%i in (1,1,7) do (
    if "!user%%i!"=="%usern%" if "!pass%%i!"=="%passwd%" set "valid=true"
)

if "%valid%"=="true" (
    echo.
    echo [92m Login successful. Waiting for packages
    if exist "DARKFOREC.bat" (
        call DARKFOREC.bat
    ) else (
	echo.
        echo [91m Error: Package files were not found.
	echo.
        echo [97m Please ensure the file is correctly downloaded or you can contact DARK CRAZY.
        echo.
	echo [90m - Actions -
	echo.
        pause
        goto login
    )
) else (
    echo.
    echo [91m    Username or Password is incorrect.
    echo.
    echo [90m - Actions -
    echo.
    pause
    goto login
)
