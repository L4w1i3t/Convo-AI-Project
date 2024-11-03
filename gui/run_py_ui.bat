@echo off
REM run_py_ui.bat
REM Batch script to run the ALTER EGO Python application

REM Activate virtual environment if it exists
IF EXIST "..\venv\Scripts\activate.bat" (
    call ..\venv\Scripts\activate.bat
    IF %ERRORLEVEL% NEQ 0 (
        echo Failed to activate virtual environment.
        pause
        exit /b %ERRORLEVEL%
    )
)

REM Run the main application
py main.py

REM Handle errors
IF %ERRORLEVEL% NEQ 0 (
    echo The application encountered an error. Please check the logs.
    pause
)