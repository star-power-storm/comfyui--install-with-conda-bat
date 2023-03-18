@echo off

set ENV_NAME=ComfyUI
set PYTHON_VERSION=3.10
set REQUIREMENTS_FILE=requirements.txt
set GPU_ARCH=

echo "-----Create Conda-----"
call ComfyUI_BG_conda.bat

echo "-----Install ComfyUI-----"
call ComfyUI_BG_install.bat

pause
