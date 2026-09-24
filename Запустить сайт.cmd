@echo off
setlocal
cd /d "%~dp0"

if not exist "index.html" (
  echo ERROR: index.html was not found next to this launcher.
  echo Copy the entire project folder and try again.
  pause
  exit /b 1
)

start "" "%~dp0index.html"
if errorlevel 1 (
  echo ERROR: The default browser could not be started.
  pause
  exit /b 1
)

exit /b 0
