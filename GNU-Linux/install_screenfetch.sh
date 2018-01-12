#!/bin/sh
echo "\nSolicitando permiso root"
su
echo "\nDescargando screenfetch"
wget -O screenfetch https://git.io/vaHfR
echo "\nCopiando el script a /usr/bin"
cp screenfetch /usr/bin/
echo "\nAsignando permisos de ejecución"
chmod +x /usr/bin/screenfetch
echo "\nSaliendo..."
clear && screenfetch
