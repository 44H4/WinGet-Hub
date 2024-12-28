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
echo        Winget Hub Installer - QuickLook
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

REM Installing QuickLook
echo Installing QuickLook...
winget install -e --id PaddyXu.QuickLook
echo Opening the WinGet Hub website (minimized) for more information...
start /MIN powershell -command "Start-Process 'https://winget-hub.pages.dev'"
REM Check installation status
if %ERRORLEVEL% EQU 0 (
    echo QuickLook installed successfully.
) else (
    echo Failed to install QuickLook. Please check for errors above.
)
pause