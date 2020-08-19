#!/bin/bash

# Serveur à pinger pour le test
SERVER=192.168.0.254
# Interface à redémarrer
INTERFACE=wlan0

ping -c2 ${SERVER} > /dev/null 

# Si ping en echec, on rélance l'interface
if [ $? != 0 ] ; then
	echo Rebooting ${INTERFACE}...!
	ifdown --force ${INTERFACE}
	ifup ${INTERFACE}
fi
