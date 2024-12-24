@echo off
REM Check if winget is available
echo ██╗    ██╗██╗███╗   ██╗ ██████╗ ███████╗████████╗   ██╗  ██╗██╗   ██╗██████╗     ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗ 
echo ██║    ██║██║████╗  ██║██╔════╝ ██╔════╝╚══██╔══╝   ██║  ██║██║   ██║██╔══██╗    ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
echo ██║ █╗ ██║██║██╔██╗ ██║██║  ███╗█████╗     ██║█████╗███████║██║   ██║██████╔╝    ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝
echo ██║███╗██║██║██║╚██╗██║██║   ██║██╔══╝     ██║╚════╝██╔══██║██║   ██║██╔══██╗    ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗
echo ╚███╔███╔╝██║██║ ╚████║╚██████╔╝███████╗   ██║      ██║  ██║╚██████╔╝██████╔╝    ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║
echo  ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝   ╚═╝      ╚═╝  ╚═╝ ╚═════╝ ╚═════╝     ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝
echo Checking for winget...
winget --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Winget is not installed or not available on your system.
    echo Please install the App Installer from the Microsoft Store and try again.
    pause
    exit /b
)

REM Installing Visual Studio Code
echo Installing Visual Studio Code...
winget install -e --id Microsoft.VisualStudioCode

REM Check installation status
if %ERRORLEVEL% EQU 0 (
    echo Visual Studio Code installed successfully.
) else (
    echo Failed to install Visual Studio Code. Please check for errors above.
)
pause
