@echo off
mode con: cols=100 lines=69

:: Set Title
title Leviosa Checker

:check

:: Clear Screen
cls

:: Set Color to Green
color 0a

echo **************************************
ping localhost -n 2 >nul
echo *                                    *
ping localhost -n 2 >nul
echo *          Leviosa Checker          *
ping localhost -n 2 >nul
echo *                                    *
ping localhost -n 2 >nul
echo **************************************
ping localhost -n 2 >nul

:: Set Color to Cyan
color 0b

wmic diskdrive get serialNumber
ping localhost -n 2 >nul
wmic diskdrive get model
ping localhost -n 2 >nul
wmic diskdrive get size
ping localhost -n 2 >nul
wmic diskdrive get mediaType
ping localhost -n 2 >nul
wmic CPU Get DeviceID,NumberOfCores,NumberOfLogicalProcessors
ping localhost -n 2 >nul
wmic bios get version
ping localhost -n 2 >nul
wmic csproduct get name
ping localhost -n 2 >nul
wmic os get version
ping localhost -n 2 >nul
wmic path win32_computersystemproduct get uuid
ping localhost -n 2 >nul
getmac
ping localhost -n 2 >nul
echo.

:: Set Color to White
color 07

echo Scroll up if you have to.
ping localhost -n 2 >nul
echo Press any key to refresh.
ping localhost -n 2 >nul

pause>nul
goto check
