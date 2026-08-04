@echo off
chcp 65001 >nul
rem 直接打开作品管理器（无需 Python / 无需服务器，双击即用）
start "" "%~dp0..\resume-tools\editor.html"
echo 已打开作品管理器（若未弹出，请手动双击 resume-tools\editor.html）
pause
