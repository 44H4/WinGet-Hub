
@echo off
color a
:: Check for administrator privileges
net session >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo This script requires administrative privileges.
    pause
    exit /b
)

REM Check if winget is available
echo --------------------------------------------------------
echo        Winget Hub Installer - Lively Wallpaper
echo --------------------------------------------------------
echo Made by : 44H4
echo Opening the WinGet Hub website (minimized) for more information...

pause
echo Checking for WinGet...
winget --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Winget is not installed or not available on your system.
    echo Please install the App Installer from the Microsoft Store and try again.
    pause
    exit /b
)

REM Installing Lively Wallpaper
echo Installing Lively Wallpaper...
winget install -e --id rocksdanister.LivelyWallpaper
echo Opening the WinGet Hub website (minimized) for more information...
start /MIN powershell -command "Start-Process 'https://44h4.github.io/WinGet-Hub'"
REM Check installation status
if %ERRORLEVEL% EQU 0 (
    echo Lively Wallpaper installed successfully.
) else (
    echo Failed to install Lively Wallpaper. Please check for errors above.
)
pause
