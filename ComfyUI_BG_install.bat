@echo off

echo Activating %ENV_NAME% environment...
call activate %ENV_NAME%

set /p gpu_type="Is your GPU an NVIDIA or AMD card? (Enter N for NVIDIA, A for AMD, or leave blank for CPU only) "
if /i "%gpu_type%"=="N" (
  set GPU_ARCH=cu117
) else if /i "%gpu_type%"=="A" (
  set GPU_ARCH=rocm5.2
) else (
  echo WARNING: No suitable GPU found. Using CPU for computation...
)

if not "%GPU_ARCH%"=="" (
  echo Using %GPU_ARCH% for computation...
  pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/%GPU_ARCH% --no-warn-script-location
  if /i "%GPU_ARCH%"=="cu117" (
    pip install xformers
  )
)

pip install transformers
pip install -r %REQUIREMENTS_FILE%

set /p mem_size="Is your GPU memory size greater than 3GB? (Enter Y for yes, N for no) "
if /i "%mem_size%"=="Y" (
  echo Generating 2.run.bat...
  echo @echo off > 2.run.bat
  echo call activate ComfyUI >> 2.run.bat
  echo python main.py >> 2.run.bat
  echo if %%errorlevel%% neq 0 pause >> 2.run.bat
  echo call deactivate >> 2.run.bat
) else (
  echo Generating 2.run.bat...
  echo @echo off > 2.run.bat
  echo call activate ComfyUI >> 2.run.bat
  echo python main.py --lowvram >> 2.run.bat
  echo if %%errorlevel%% neq 0 pause >> 2.run.bat
  echo call deactivate >> 2.run.bat
)

echo Done.


