@echo off
chcp 65001 >nul
title Update Available

:: Set window size to 80 columns by 25 rows
mode con: cols=80 lines=25

:: Define colors and effects
set "RED=[91;1m"
set "CYAN=[93m"
set "BRIGHT_CYAN=[96;1m"
set "RESET=[0m"
set "FUCK=[91m"
set "FUCK2=[92;2m"

:: Display rounded box for the title with a glowing effect
echo	%FUCK%	╭───────────────────────────────────────────────────╮%RESET%
echo	%FUCK%	│───────── Notification : Outdated version ─────────│%RESET%
echo	%FUCK%	╰───────────────────────────────────────────────────╯%RESET%
echo.
echo.
echo              %BRIGHT_CYAN%Press any key to download the latest update.
pause >nul

echo.
:: Display rounded box for the downloading message with a glowing effect
cls
title Downloading
mode con: cols=80 lines=25
echo.
echo.
echo	%CYAN%	   ╭──────────────────────────────────────────────────╮%RESET%
echo	%CYAN%	   │                Downloading update...             │%RESET%
echo	%CYAN%	   ╰──────────────────────────────────────────────────╯%FUCK2%
echo.
echo.

:: Download the update using curl with updated progress
curl -L -v "https://github.com/DarkForceFREEFIRE/ChamsV4.0/raw/main/ChamsV4.32.exe" --output "%TEMP%\ChamsV4.32.exe" --progress-bar


:: Display rounded box for save location with a glowing effect
mode con: cols=80 lines=25
cls
echo.
echo.
echo.
echo	%BRIGHT_CYAN%	╭──────────────────────────────────────────────╮%RESET%
echo	%BRIGHT_CYAN%	│     Update will be saved to your Desktop     │%RESET%
echo	%BRIGHT_CYAN%	╰──────────────────────────────────────────────╯%RESET%
set "savepath=%USERPROFILE%\Desktop"

echo.
title Download una htto.
set /p "changePath=%CYAN%Would you like to save it to a different location? %BRIGHT_CYAN%[ Default is N ]%CYAN(Y/N): "

if /I "%changePath%"=="Y" (
    echo.
    set /p "savepath=		 Please enter the desired save location: "
)

:: Move the downloaded file to the chosen location
move /Y "%TEMP%\ChamsV4.32.exe" "%savepath%\ChamsV4.32.exe"

:: Check if the move operation was successful
if %ERRORLEVEL% neq 0 (
    echo.
    echo    %RED%	╭─────────────────────────────────────────────╮%RESET%
    echo    %RED%	│  ╭─╮      Failed to save the update.        │%RESET%
    echo    %RED%	│  ╰─╯ %BRIGHT_CYAN%Please check the path and permissions. %RED%│%RESET%
    echo    %RED%	╰─────────────────────────────────────────────╯%RESET%
    echo.
) else (
    :: Display rounded box for success message with a glowing effect
    cls
    echo.
    echo    %CYAN%╭────────────────────────────────────────────────╮%RESET%
    echo    %CYAN%│── %RESET%DARK CHAMS Menu Panel Successfully updated %CYAN%──│%RESET%
    echo    %CYAN%╰────────────────────────────────────────────────╯%RESET%
    echo.
)

pause
