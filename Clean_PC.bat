@echo off

:start
echo PARA INICIAR LA REPARACION PULSA ENTER
ipconfig /flushdns
echo Es HDD?
choice /C SN /M "SI (S) O NO (N)"
if "%ERRORLEVELS%" =="S" (defrag c:) 
if "%ERRORLEVEL%" == "N"(echo ELEGISTE "NO")
sfc /scannow
CHKDSK  c: /f

goto start

