@echo off
::    _____     ______
::   /     \   |
::  /   __  \  |   |   |
::  |  | ++ |  |  -+- -+- Simulator
::  \  |__  /  |   |   |
::   -------   |______ v1.0.0
 
:start
echo C++ Simulator - Type help for help
echo Hi, What do you want to do today?
set /p whatd="> "

if %whatd% == "help" goto ynh
if %whatd% == "create" goto pain
if %whatd% == "exit" exit
else goto start

:ynh
echo Help
echo create - Create a C++ File
echo exit - Leave
goto start

:pain
echo.
echo C++ Simulator Code Creator
echo.
echo What is the name of the code?
echo (e.g. hello) (No file handles)
set /p nc="> "
clear
:codeloop
set /p code="> "
echo %code% >> %nc%.cpp
if "%code%" == "exit" exit
goto codeloop
:ty
echo ty