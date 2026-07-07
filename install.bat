@echo off
cd /d "%~dp0"

set "PYTHON_EXE=python"
python --version >nul 2>&1
if errorlevel 1 set "PYTHON_EXE=%LocalAppData%\Programs\Python\Python313\python.exe"

"%PYTHON_EXE%" --version >nul 2>&1
if errorlevel 1 (
  echo Python not found.
  echo Install Python 3.11 or newer and enable Add python.exe to PATH.
  pause
  exit /b 1
)

"%PYTHON_EXE%" -m venv .venv
call .venv\Scripts\activate.bat
python -m pip install --upgrade pip
pip install -r requirements.txt

echo.
echo Done. Now run start_bot.bat
pause
