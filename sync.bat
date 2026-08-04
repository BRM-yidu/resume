@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo   正在同步到 GitHub ...（约 1 分钟后网站更新）
echo ============================================
echo.
git add -A
git commit -m "update site content"
git push
echo.
echo --------------------------------------------------
if %errorlevel%==0 (
  echo   ✅ 同步完成！约 1 分钟后网站自动更新：
  echo      https://brm-yidu.github.io/resume/
) else (
  echo   ❌ 同步失败，请检查网络后重试
)
echo --------------------------------------------------
pause
