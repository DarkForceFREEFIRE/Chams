@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

:menu
title DARK CHAMS V 4.20
cls
color 0F

rem Set menu color to light cyan with simulated glow effect
echo [96m    ╭───────────────────╮      ╭────────────╮       ╭───────────────────╮       ╭───────────╮
echo [96m    │  Inject Menu      │      │   Press    │       │  Eject Menu       │       │   Press   │
echo [96m    ╰───────────────────╯      ╰────────────╯       ╰───────────────────╯       ╰───────────╯
echo.
echo.
echo [94m   [1] Inject Chams Menu	[KEYBOARD:1]       [5] Remove Chams         	[KEYBOARD:5]
echo [94m   [2] Inject Chams 3D     	[KEYBOARD:2]       [6] Remove Chams 3D      	[KEYBOARD:6]
echo [94m   [3] Inject Chams Blue   	[KEYBOARD:3]       [7] Remove Chams Blue    	[KEYBOARD:7]
echo [94m   [4] Inject Chams Blue Box 	[KEYBOARD:4]       [8] Remove Chams Blue Box 	[KEYBOARD:8]
echo.
echo [93m    ╭───────────────────────────────────────╮       ╭──────────────────────────────────────╮
echo [93m    │    Press 1, 2, 3, 4 to inject Chams   │       │    Press 5, 6, 7, 8 to remove Chams  │
echo [93m    ╰───────────────────────────────────────╯       ╰──────────────────────────────────────╯

rem Set bold white color for install instructions
echo [93m    ╭───────────────────────────────────────╮       ╭──────────────────────────────────────╮
echo [93m    │  To Install runtimes    Type 'AIORT'  │       │   To Install DirectX    Type 'DX12'  │
echo [93m    ╰───────────────────────────────────────╯       ╰──────────────────────────────────────╯
echo.

rem Set warning color to red with bold effect
echo [91;1m  WARNING! Removing injections - Ejections may crash your emulator
echo.
echo [91;1m  NOTE: Please use BlueStacks Nought 32-bit emulator
echo.
echo [92m    ╭────────────────────────────────────────────────╮
echo [92m    │      ▸ DARK FORCE  Chams Panel V 4.20          │
echo [92m    ╰────────────────────────────────────────────────╯
echo [92m    │ [93m      Design and programming by [97mWALKER UI [92m     │
echo [92m    │       [93m Credits: [97mREGz.WALKER, ᴰᴬᴿᴷ xCRȺZY [92m      │
echo [92m    ╰────────────────────────────────────────────────╯

rem Reset to default color
echo [0m

set /p choice="Enter your choice: "

REM Handling user choices
if "%choice%"=="1" (
    title Is your back white?
    echo.
    echo Console:
    Injector.exe --process-name HD-Player.exe --inject "DarkXChamsMenu.dll"
    pause
    goto menu
) else if "%choice%"=="2" (
    title Chams 3D
    echo.
    echo Console:
    Injector.exe --process-name HD-Player.exe --inject "DarkXChams.dll"
    pause
    goto menu
) else if "%choice%"=="3" (
    echo.
    title Chams Blue
    echo Console:
    Injector.exe --process-name HD-Player.exe --inject "DarkXChamsBlue.dll"
    pause
    goto menu
) else if "%choice%"=="4" (
    echo.
    title Chams BlueBox
    echo Console:
    Injector.exe --process-name HD-Player.exe --inject "DarkXBlueBox.dll"
    pause
    goto menu
) else if "%choice%"=="5" (
    echo.
    title See if the emulator crashed...
    echo Console:
    Injector.exe --process-name HD-Player.exe --eject "DarkXChamsMenu.dll"
    pause
    goto menu
) else if "%choice%"=="6" (
    echo.
    title See if the emulator crashed...
    echo Console:
    Injector.exe --process-name HD-Player.exe --eject "DarkXChams.dll"
    pause
    goto menu
) else if "%choice%"=="7" (
    echo.
    title See if the emulator crashed...
    echo Console:
    Injector.exe --process-name HD-Player.exe --eject "DarkXChamsBlue.dll"
    pause
    goto menu
) else if "%choice%"=="8" (
    echo.
    title See if the emulator crashed...
    echo Console:
    Injector.exe --process-name HD-Player.exe --eject "DarkXBlueBox.dll"
    pause
    goto menu
) else if "%choice%"=="AIORT" (
    echo.
    echo Console:
    Runtimes.bat
    pause
    goto menu
) else if "%choice%"=="DX12" (
    echo.
    echo Console:
    DirectX12.bat
    pause
    goto menu
) else (
    echo Invalid choice. Please enter a number from 1 to 8 or a valid command.
    pause
    goto menu
)
