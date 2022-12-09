@echo off
color A

rem Made by Little9070#3932 on Discord, if you have any issues DM me and I'll fix them.

title PvZ Cheat Mode Launcher 1.1 by Little9070#3932

:begn
echo To start the Bloom And Doom beta in cheat mode, press 1.
echo To start the Plants Vs. Zombies beta in cheat mode, press 2.
echo To get troubleshooting steps, press 3.
echo To specify a custom PvZ executable name, press 4.
echo To Cancel, press 5.
echo GUI coming soon.

:strt
set choice=
set /p chce=Number:
if not '%chce%'=='' set choice=%choice:~0,1%
if '%chce%'=='1' goto badt
if '%chce%'=='2' goto pvzt
if '%chce%'=='3' goto help
if '%chce%'=='4' goto cstm
if '%chce%'=='5' goto term
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
echo Place this in the installation directory of PvZ, so it should be next to main.pak and your PvZ executable file.
echo If you get a file not found error, make sure you're pressing the right version in the batch file, if that error continues make sure it's named BloomAndDoom.exe or PlantsVsZombies.exe (capitalization doesn't matter.)
echo If you get "invalid command line parameter: -tod" that means you aren't using a beta version.
echo If you have any bugs/requests, send me a DM on Discord at "Little9070#3932". (Caps sensitive)
echo GUI coming soon.
pause
exit /b

:cstm
set choice=
set /p cstv=Executable name:
start %cstv% -tod
exit/b

:term
echo Closing...
exit /b