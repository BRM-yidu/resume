@echo off
chcp 65001 >nul
cd /d "%~dp0"
set "PY="
where python >nul 2>nul && set "PY=python"
if not defined PY where py >nul 2>nul && set "PY=py"
if not defined PY (
  echo [错误] 未检测到 Python，无法启动本地服务。
  echo 请改用：直接双击 resume-tools\editor.html 使用作品管理器（Chrome/Edge）。
  pause
  exit /b
)
echo 正在启动本地服务，请稍候...
start "YIDU-Peng 本地服务" cmd /k "%PY% -m http.server 8735 --directory %~dp0.."
timeout /t 3 /nobreak >nul
start http://localhost:8735/resume-tools/editor.html
echo.
echo 若浏览器未自动打开，请手动访问：
echo   作品管理器  http://localhost:8735/resume-tools/editor.html
echo   网站预览    http://localhost:8735/resume/
echo.
echo 使用完毕后，直接关闭「YIDU-Peng 本地服务」窗口即可。
pause
