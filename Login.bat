@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

:: Set title and initial color
title Login

:: Define users and passwords
set users[1]=1
set passwords[1]=1

set users[2]=walker
set passwords[2]=walker#1234

set users[3]=shadow
set passwords[3]=shadow123

set users[4]=dagaya
set passwords[4]=dagaya#1234

set users[5]=monis
set passwords[5]=monis123

set users[6]=teddy
set passwords[6]=teddy

set users[7]=nima
set passwords[7]=mina123

set users[8]=indu
set passwords[8]=indu11

set users[9]=user9
set passwords[9]=password9

set users[10]=user10
set passwords[10]=password10

:: Display login prompt with a rounded look
cls
echo.
echo [94m    ╭───────────────────────────────────╮
echo [94m    │       DARK FORCE Chams V4.20      │
echo [94m    │                                   │
echo [96m    │      Please login to continue     │
echo [94m    ╰───────────────────────────────────╯
echo.
set /p username=[95m    Username: [0m
echo.
set /p password=[95m    Password: [0m

:: Flag for successful login
set loginSuccess=0

:: Check credentials
for /l %%i in (1, 1, 10) do (
    if "!username!"=="!users[%%i]!" if "!password!"=="!passwords[%%i]!" (
        set loginSuccess=1
        goto successfulLogin
    )
)

:: If login failed
echo [91mInvalid credentials! Exiting...
timeout /t 2 /nobreak >nul
exit

:successfulLogin
title Karima Hadissiyakne...
cls
echo.
echo [94m    ╭───────────────────────────────────╮
echo [94m    │     DARK FORCE Chams V4.20        │
echo [94m    │                                   │
echo [92m    │    ===========================    │
echo [92m    │        Login successful           │
echo [92m    │    ===========================    │
echo [94m    ╰───────────────────────────────────╯
echo.
timeout /t 2 /nobreak >nul

:: Check if DARKFORCE.bat exists
if exist DARKFORCE.bat (
    call DARKFORCE.bat
) else (
    echo [91mSystem error! DARKFORCE.bat not found.[0m
)

:: End the script
color 07
pause
exit
