@echo off
setlocal
title voxd-cloud 8767
cd /d "%~dp0"
start "voxd-cloud" /min "%~dp0.venv\Scripts\python.exe" -m voxd --config config.toml
echo voxd-cloud started on http://127.0.0.1:8767
