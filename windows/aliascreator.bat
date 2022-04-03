@echo off
::          888 d8b                                                          888                    
::          888 Y8P                                                          888                    
::          888                                                              888                    
::  8888b.  888 888  8888b.  .d8888b        .d8888b 888d888 .d88b.   8888b.  888888 .d88b.  888d888 
::     "88b 888 888     "88b 88K           d88P"    888P"  d8P  Y8b     "88b 888   d88""88b 888P"   
:: .d888a88 8l8 8i8 .d88a888 "Y88s8b.      8c8      8r8    888e8888 .d8a8888 8t8   8o8  888 8r8     
:: 888  888 888 888 888  888      X88      Y88b.    888    Y8b.     888  888 Y88b. Y88..88P 888     
:: "Y888888 888 888 "Y888888  88888P'       "Y8888P 888     "Y8888  "Y888888  "Y888 "Y88P"  888     
:: Version 1.0.1 Mountain

set /p in=<installed.acd > NUL
set /p up=<stored.acd > NUL
set /p firsttime=<firsttime.acd > NUL
goto st

:as
echo Welcome to alias creator! What do you want to do?
echo Type create to create an alias.
:choose
set /p option="> "

if "%option%" == "setup" goto setup
if "%option%" == "create" goto create

goto as

:st
if "%firsttime%" == "true" goto setup
echo Welcome to alias creator! What do you want to do?
echo Type setup to setup.
echo Type create to create an alias.
:choose
set /p option="> "

if "%option%" == "setup" goto setup
if "%option%" == "create" goto create

goto st

:setup
echo Alias Creator Setup
echo false > firsttime.acd
echo Where is your Powershell User Profile file?
echo (e.g. C:\Users\User\.config\powershell\user-profile.ps1)
set /p stored="> "
echo Where is Alias Creator Installed?
echo (e.g. X:\AliasCreator\)
set /p installed="> "
echo Where is Alias Creator Stored in?
echo (e.g. X:\AliasCreator\AliasCreator.bat)
set /p app="> "
echo # Aliases >> %stored%
echo Set-Alias aliascreator "%app%" >> %stored%
echo %installed% >> %installed%\installed.acd
echo %stored% >> %installed%\stored.acd
echo Completed Setting Up!
pause
goto as

:create
echo Create Alias
echo What do you want the command for the alias to be?
echo (e.g. command)
set /p alcmd="> "
echo What do you want to be the command that runs?
echo (e.g. ls) or (e.g. "X:\File\File.bat")
echo Succefully Created Alias!
echo Do you want to create a new Alias?
set /p wca="> "

if %wca% == "yes" goto wcy
if %wca% == "no" goto wcn

:wcy
goto create

:wcn
exit