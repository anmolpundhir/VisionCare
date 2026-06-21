@echo off
echo.
echo ============================================================
echo  VisionCare Backend Server Startup
echo ============================================================
echo.

REM Check if Python is available
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python is not installed or not in PATH
    echo Please install Python and add it to your system PATH
    pause
    exit /b 1
)

echo [INFO] Installing/updating dependencies...
pip install -r ../requirements.txt

echo.
echo [INFO] Starting Flask server...
echo.
python app.py

pause
