:: In summary, this script does some tidying up
:: on your windows machine (make sure you run as admin).

:: Part 1 - System File Checker: Repair missing/corrupted system files
:: Part 2 - Defragment / Optimize your data drives


:: =====================================
:: ========System File Checker==========
:: =====================================

@echo off
:: Check if the script is running with administrative privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Running with administrative privileges
) else (
    echo This script requires administrative privileges. Please run as an administrator.
    pause
    exit /b
)

:: Run the sfc /scannow command
echo Starting system file check...
sfc /scannow

echo System file check complete.


:: =====================================
:: ========Defragment / Optimize =======
:: =====================================

:: SPECIFY THE DRIVE LETTER/s TO OPTIMIZE

:: * Note: the driver variable (ex: "myHHD")
::         isn't important, only the drive letter 
set mySSD=C:
set myHHD=D:

:: Perform a basic defragmentation
echo Optimizing drive %mySSD%...
defrag %mySSD% /O

echo Optimizing drive %myHHD%...
defrag %myHHD% /O

echo Drive optimizations complete.
pause
