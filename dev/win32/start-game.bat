@echo off

title Toontown The Return Game Launcher

echo Choose your connection method!
echo.
echo #1 - Localhost
echo #2 - Dev Server
echo #3 - Custom
echo #4 - Local RemoteDB
echo #5 - Prod Server
echo.

:selection

set INPUT=-1
set /P INPUT=Selection: 

if %INPUT%==1 (
    set TT_GAMESERVER=gameserver-1v.toontown.com
) else if %INPUT%==2 (
    set TT_GAMESERVER=167.114.220.172
) else if %INPUT%==4 (
    set TT_GAMESERVER=127.0.0.1
) else if %INPUT%==5 (
    SET TT_GAMESERVER=lw2.ez-webz.com:7198
) else if %INPUT%==3 (
    echo.
    set /P TT_GAMESERVER=Gameserver: 
) else (
	goto selection
)

echo.

if %INPUT%==2 (
    set /P ttUsername="Username: "
    set /P ttPassword="Password: "
) else if %INPUT%==4 (
    set /P ttUsername="Username: "
    set /P ttPassword="Password: "
) else (
    set /P TT_PLAYCOOKIE=Username: 
)

echo.
