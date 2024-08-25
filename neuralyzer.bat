@echo off
:: Run the VBScript and get the exit code
cscript //nologo confirm_clear.vbs
set "choice=%ERRORLEVEL%"

:: If the user clicked Yes (exit code is 6)
if "%choice%"=="6" (
    echo Applying amnesia...
    python clearmemory.py
) else (
    echo Operation cancelled.
)

pause
