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