@echo off
rem Enable Virtual Terminal Processing for ANSI escape codes (Windows 10/11 only)
powershell -Command "& { [Console]::OutputEncoding = [System.Text.Encoding]::UTF8; }"

:menu
cls

rem Set menu color to light cyan with simulated glow effect
echo [96m    ------------------		------------	     ---------------        	------------
echo [96m   [  Inject Menu     ]  	[   Press   ]	    [	Eject Menu  ]    	[   Press   ]
echo [96m    ------------------		------------	     ---------------       	------------
echo.
echo [94m   [1] Inject Chams Menu	[KEYBOARD:1]       [5] Remove Chams         	[KEYBOARD:5]
echo [94m   [2] Inject Chams 3D     	[KEYBOARD:2]       [6] Remove Chams 3D      	[KEYBOARD:6]
echo [94m   [3] Inject Chams Blue   	[KEYBOARD:3]       [7] Remove Chams Blue    	[KEYBOARD:7]
echo [94m   [4] Inject Chams Blue Box 	[KEYBOARD:4]       [8] Remove Chams Blue Box 	[KEYBOARD:8]
echo.
echo [93m    -----------------------------------       -----------------------------------
echo [93m   / Press 1, 2, 3, 4 to inject Chams /      / Press 5, 6, 7, 8 to remove Chams /
echo [93m    ----------------------------------       -----------------------------------
echo.

rem Set warning color to red with bold effect
echo [91;1m WARNING! Removing injections - Ejections may crashes your emulator
echo.

rem Set bold white color for install instructions
echo [97;1m To Install runtimes    Type 'AIORT'
echo [97;1m To Install DirectX 12  Type 'DX12'
echo.

rem Set note color to yellow with simulated glow effect
echo [93m NOTE: Please use BlueStacks Nought 32-bit emulator
echo.
echo [93m Last updated : [ 29-July-2024  21:45:15 PM ]

rem Reset to default color
echo [0m

set /p choice="Enter your choice: "

REM Handling user choices
if "%choice%"=="1" (
    echo.
    echo Console:
    Injector.exe --process-name HD-Player.exe --inject "DarkXChamsMenu.dll"
    pause
    goto menu
) else if "%choice%"=="2" (
    echo.
    echo Console:
    Injector.exe --process-name HD-Player.exe --inject "DarkXChams.dll"
    pause
    goto menu
) else if "%choice%"=="3" (
    echo.
    echo Console:
    Injector.exe --process-name HD-Player.exe --inject "DarkXChamsBlue.dll"
    pause
    goto menu
) else if "%choice%"=="4" (
    echo.
    echo Console:
    Injector.exe --process-name HD-Player.exe --inject "DarkXBlueBox.dll"
    pause
    goto menu
) else if "%choice%"=="5" (
    echo.
    echo Console:
    Injector.exe --process-name HD-Player.exe --eject "DarkXChamsMenu.dll"
    pause
    goto menu
) else if "%choice%"=="6" (
    echo.
    echo Console:
    Injector.exe --process-name HD-Player.exe --eject "DarkXChams.dll"
    pause
    goto menu
) else if "%choice%"=="7" (
    echo.
    echo Console:
    Injector.exe --process-name HD-Player.exe --eject "DarkXChamsBlue.dll"
    pause
    goto menu
) else if "%choice%"=="8" (
    echo.
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
