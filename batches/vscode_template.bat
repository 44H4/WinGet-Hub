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
echo        Winget Hub Installer - Visual Studio Code
echo --------------------------------------------------------
echo Made by : 44H4
echo Opening the WinGet Hub website for more information...
start https://44h4.github.io/WinGet-Hub
pause
echo Checking for WinGet...
winget --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Winget is not installed or not available on your system.
    echo Please install the App Installer from the Microsoft Store and try again.
    pause
    exit /b
)

REM Installing Visual Studio Code
echo Installing Visual Studio Code...
winget install -e --id Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements

REM Check installation status
if %ERRORLEVEL% EQU 0 (
    echo Visual Studio Code installed successfully.
) else (
    echo Failed to install Visual Studio Code. Please check for errors above.
)
pause
