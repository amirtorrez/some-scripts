@echo off
title Vacunador USB
color 4F
@echo ----------------------------------------------
@echo ---- REPARACION DE FICHEROS MEMORIA FLASH ----
@echo ----------------------------------------------
@echo Cambiando Atributo de Carpetas...
Attrib /d /s -r -h -s -a 
@echo ----------------------------------------------
@echo Eliminando Accesos Directos...
if exist *.lnk del *.lnk
@echo ----------------------------------------------
@echo Eliminando Archivos scr...
if exist *.scr del *.scr
@echo ----------------------------------------------
@echo Eliminando Archivos vbs...
if exist *.vbs del *.vbs
@echo ----------------------------------------------
@echo Eliminando Recycler...
if exist *.Recycler.exe del *.Recycler.exe
@echo ----------------------------------------------
@echo Eliminando Desktop...
if exist desktop.ini del desktop.ini
@echo ----------------------------------------------
@echo Eliminando Autorun...
if exist autorun.inf del autorun.inf
@echo ----------------------------------------------
@echo ----------------------------------------------
@echo Finalizando...
@echo ----------------------------------------------
@echo ----------------------------------------------
@echo Operacion Completada!!  
@echo ----------------------------------------------
@echo ----------------------------------------------
pause
