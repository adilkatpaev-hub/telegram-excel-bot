@echo off
cd /d "%~dp0"

if not exist ".env" (
  echo File .env not found.
  echo Create .env and add:
  echo BOT_TOKEN=your_bot_token
  pause
  exit /b 1
)

if not exist ".venv\Scripts\activate.bat" (
  echo Virtual environment not found.
  echo Run install.bat first.
  pause
  exit /b 1
)

call .venv\Scripts\activate.bat
python bot.py
pause
