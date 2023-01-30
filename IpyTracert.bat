@echo off

:inicio
cls

set /p direccionIP=Introduce la direccion IP: 
ping %direccionIP%

set /p tracert=¿Deseas realizar un tracert a la direccion IP introducida? (s/n): 
if /i "%tracert%"=="s" (
    tracert %direccionIP%
)

set /p salir=¿Deseas volver al inicio? (s/n): 
if /i "%salir%"=="s" (
    goto inicio
)