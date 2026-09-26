@echo off
setlocal
if "%PORT%"=="" set PORT=8080
pushd "%~dp0"
where php >nul 2>&1
if errorlevel 1 (
  echo PHP not found in PATH.
  echo Install PHP and add it to PATH, for example using Chocolatey:
  echo   choco install php
  echo Or download from https://windows.php.net/ and add php.exe to PATH.
  pause
  exit /b 1
)
php -S 0.0.0.0:%PORT% -t "Web App" "Web App\router.php"
