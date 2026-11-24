@echo off
chcp 65001 >nul
echo ========================================================
echo   MACGO PRO v2.5 - Static Website Cloud Deployment
echo ========================================================
echo.
echo [Option 1] Deploy instant 24/7 to https://macgo.surge.sh and https://macgo-pro.surge.sh:
echo   set SURGE_LOGIN=macgopro25892@euploading.com
echo   set SURGE_TOKEN=0edca151a78ff78d1313d00fb91717d1
echo   npx -y surge "%~dp0." https://macgo.surge.sh
echo   npx -y surge "%~dp0." https://macgo-pro.surge.sh
echo.
echo [Option 2] Deploy instant 24/7 static site via ShipStatic:
echo   npx -y @shipstatic/ship "%~dp0."
echo.
echo [Option 3] Deploy via Cloudflare Pages:
echo   npx -y wrangler pages deploy "%~dp0." --project-name=macgo-pro
echo.
echo [Option 4] Deploy via Vercel:
echo   npx -y vercel "%~dp0." --prod
echo.
echo Running 1-click deployment to https://macgo.surge.sh and https://macgo-pro.surge.sh...
set SURGE_LOGIN=macgopro25892@euploading.com
set SURGE_TOKEN=0edca151a78ff78d1313d00fb91717d1
call npx -y surge --project "%~dp0." --domain https://macgo.surge.sh
call npx -y surge --project "%~dp0." --domain https://macgo-pro.surge.sh
del /q "%~dp0CNAME" 2>nul
echo.
echo Done! Live at:
echo   - https://macgo.surge.sh
echo   - https://macgo-pro.surge.sh
pause
