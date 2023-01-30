@echo off

:start
cls

set /p directionIP=Type the IP for Ping: 
ping %directionIP%

set /p tracert=Do you want to perform a tracert to the entered IP address? (y/n): 
if /i "%tracert%"=="y" (
    tracert %directionIP%
)

set /p exit=Do you want to go back to the start? (y/n): 
if /i "%exit%"=="y" (
    goto start
)