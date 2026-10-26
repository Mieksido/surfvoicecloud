@echo off
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :8767 ^| findstr LISTENING') do taskkill /f /pid %%a >nul 2>&1
echo voxd-cloud stopped
