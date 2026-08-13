@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo   正在同步到 GitHub ...
echo   （腾讯云 EdgeOne Pages 会自动部署，无需手动操作）
echo ============================================
echo.
git add -A
git commit -m "update site content"
git push origin main
echo.
echo --------------------------------------------------
if %errorlevel%==0 (
  echo   ✅ 已推送 GitHub，EdgeOne 将自动部署
  echo      约 1-2 分钟后访问网站即可看到更新
) else (
  echo   ❌ 推送失败，请检查网络后重试
)
echo --------------------------------------------------
pause
