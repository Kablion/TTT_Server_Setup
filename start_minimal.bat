@echo off
for /f "delims=" %%a in ('cscript//nologo C:\GModServer\random_minimal.vbs') do (set result=%%a)
cls
xcopy /s/y "workshop_lua\workshop_minimal.lua" "garrysmod\lua\autorun\server\workshop.lua"
echo Protecting srcds from crashes...
echo If you want to close srcds and this script, close the srcds window and type Y depending on your language followed by Enter.
title srcds.com Watchdog
:srcds
echo (%time%) srcds started.
echo Starting Map: %result%
start /wait srcds.exe -console -game garrysmod +gamemode terrortown +map %result% +maxplayers 16 +host_workshop_collection 1964446840
echo (%time%) WARNING: srcds closed or crashed, restarting.
goto srcds