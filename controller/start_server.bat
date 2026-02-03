@echo off
REM ============================================
REM Portfolio - Local Server Launcher for Windows
REM ============================================

echo.
echo ========================================
echo Portfolio Local Server
echo ========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% equ 0 (
    echo [SUCCESS] Python detected!
    echo.
    echo Starting local server...
    echo.
    echo Open your browser and go to:
    echo.
    echo   http://localhost:8000
    echo.
    echo Press Ctrl+C to stop the server
    echo.
    python -m http.server 8000
) else (
    echo [ERROR] Python is not installed!
    echo.
    echo Please install Python from: https://www.python.org/downloads
    echo.
    echo Or try Node.js method:
    echo   npm install -g http-server
    echo   http-server
    pause
)
