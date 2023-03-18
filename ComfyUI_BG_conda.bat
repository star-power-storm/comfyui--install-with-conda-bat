@echo off

echo Checking if %ENV_NAME% environment exists...
conda info --envs | findstr /C:"%ENV_NAME%" >nul
if %errorlevel% equ 1 (
  echo %ENV_NAME% environment not found. Creating...
  conda create --name %ENV_NAME% python=%PYTHON_VERSION%.*
)
