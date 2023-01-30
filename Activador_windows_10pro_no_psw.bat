@echo off
echo Introduzca la clave Windows 10 Pro
set /p key=
slmgr /ipk %key% && slmgr /skms kms.digiboy.ir && start /wait slmgr /ato

echo Ya tienes Windows 10 activado, disfrutalo.
CreateObject("WScript.Shell").PopUp "Cortesia de Alberto López",6
exit