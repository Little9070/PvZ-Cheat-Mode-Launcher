@echo off
color A

title PvZ Cheat Mode Launcher 1.0 by Little9070#3932
echo To start the Bloom And Doom beta in cheat mode, press 1.
echo To start the Plants Vs. Zombies beta in cheat mode, press 2.
echo To get troubleshooting steps, press 3.
echo To Cancel, press 4.
echo GUI coming soon.

rem Made by Little9070#3932 on Discord, if you have any issues DM me and I'll fix them.

:strt
set choice=
set /p chce=Number:
if not '%chce%'=='' set choice=%choice:~0,1%
if '%chce%'=='1' goto badt
if '%chce%'=='2' goto pvzt
if '%chce%'=='3' goto help
if '%chce%'=='4' goto term
goto strt

:badt
cls
start BloomAndDoom.exe -tod
exit /b

:pvzt
cls
start PlantsVsZombies.exe -tod
exit /b

:help
echo
exit /b

:term
echo Closing...
exit /b