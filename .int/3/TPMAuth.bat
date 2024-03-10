@echo off
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)
Powershell.exe Clear-Tpm
Powershell.exe Initialize-Tpm
Powershell.exe Unblock-Tpm
Powershell.exe Disable-TpmAutoProvisioning
pause