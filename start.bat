@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo 正在启动本地预览，请稍候...
start "" cmd /c "timeout /t 1 >nul & start http://localhost:8735/"
python -m http.server 8735
