@echo off
::          888 d8b                                                          888                    
::          888 Y8P                                                          888                    
::          888                                                              888                    
::  8888b.  888 888  8888b.  .d8888b        .d8888b 888d888 .d88b.   8888b.  888888 .d88b.  888d888 
::     "88b 888 888     "88b 88K           d88P"    888P"  d8P  Y8b     "88b 888   d88""88b 888P"   
:: .d888888 888 888 .d888888 "Y8888b.      888      888    88888888 .d888888 888   888  888 888     
:: 888  888 888 888 888  888      X88      Y88b.    888    Y8b.     888  888 Y88b. Y88..88P 888     
:: "Y888888 888 888 "Y888888  88888P'       "Y8888P 888     "Y8888  "Y888888  "Y888 "Y88P"  888     
:: Version 1.0.0 Dynamite
::                                        1111              c=====e
::                               vv   vv 11 11                  H
::    ____________    Dynamite    vv vv     11              _,,_H__
::   (__((__((___()                vvv      11            //|     |
::  (__((__((___()()_____________________________________// |AC   |
:: (__((__((___()()()------------------------------------'  |_____|

set /p in=<installed.txt
set /p up=<stored.txt
goto st

:as
echo Welcome to alias creator! What do you want to do?
echo Type create to create an alias.
:choose
set /p option="> "

if "%option%" == "setup" goto setup
if "%option%" == "create" goto create

:st
echo Welcome to alias creator! What do you want to do?
echo Type setup to setup.
echo Type create to create an alias.
:choose
set /p option="> "

if "%option%" == "setup" goto setup
if "%option%" == "create" goto create

goto st

:setup
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
echo %installed% >> %installed%\installed.txt
echo %stored% >> %installed%\stored.txt
echo Completed Setting Up!
echo Start 

:create
