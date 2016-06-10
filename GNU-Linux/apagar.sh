#!/bin/sh
clear
until [ $OPCION  = "" ];
do
	echo " =========================================================================="
	echo " ==                                                                      =="
	echo " ==             Bienvenido al Sistema de Apagado Automático              =="
	echo " ==                        Creado por Amir Torrez                        =="
	echo " ==                                                                      =="
	echo " =========================================================================="
	echo "\n MENU"
	echo "   1 -> Determinar tiempo"
	echo "   2 -> Cancelar apagado"
	echo "   3 -> Salir\n"

	read -p " ?: " OPCION

	if [ "$OPCION" = "1" ]; then
		echo -n "\n Ingresa el numero de minutos, tras cual el PC se apagará,\n ó introduce el tiempo con el formato 00:00:00\n\n"
		read -p " ?: " tiempo
		sudo shutdown -h $tiempo
	elif [ "$OPCION" = "2" ]; then
		echo -n "\nCancelando apagado...\n"
		sudo shutdown -c
		echo -n "\n¡Apagado automático cancelado!\n\n"
	elif [ "$OPCION" = "3" ]; then
		echo -n "\n"
		exit
	else
		echo "\n ¡¡Se ingresó una opción que no está en el menú!!\n"
	fi
done
