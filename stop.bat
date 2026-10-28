@echo off
setlocal
cd /d "%~dp0"
for /f "tokens=5" %%I in ('netstat -ano ^| findstr ":8767" ^| findstr LISTENING') do taskkill /PID %%I /T /F >nul 2>&1
exit /b 0
