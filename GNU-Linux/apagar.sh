#!/bin/sh
clear
echo " =========================================================================="
echo " ==                                                                      =="
echo " ==             Bienvenido al Sistema de Apagado Automático              =="
echo " ==                        Creado por Amir Torrez                        =="
echo " ==                                                                      =="
echo " =========================================================================="
echo "\n MENU"
echo "   1 -> Determinar minutos"
echo "   2 -> Fijar hora"
echo "   3 -> Cancelar apagado"
echo "   4 -> Salir\n"
read -p " ?: " OPCION
case $OPCION in
	1) echo -n "\nIngresa el numero de minutos, tras cual el PC se apagará: "
	   read minutos
	   sudo shutdown -h $minutos;;
	2) echo -n "\nIngresa la hora de apagado: "
	   read hora
	   sudo shutdown -h $hora;;
	3) echo -n "\nCancelando apagado...\n"
	   sudo shutdown -c
	   echo -n "\n¡Apagado automático cancelado!\n\n";;
	4) exit;;
	*) echo "\nSe ingresó una opción que no está en el menú"
	   exit 1;;
esac
exit 0
