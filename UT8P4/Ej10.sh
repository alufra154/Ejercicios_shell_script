#!/bin/bash
dia=$(date +%A)
if [ "$dia" == "Sunday"]; then
tar -cvzf /copia_seguridad/completa/home.tgz /home
tar -cvzf /copia_seguridad/completa/etc.tgz /etc
tar -cvzf /copia_seguridad/completa/root.tgz /root
date > /copia_seguridad/fecha.txt
else
fecha=$(date -%Y-%m-%d)
tar -cvzf /copia_seguridad_incremental/$fecha.tgz /etc
date > /copia_seguridad_incremental/fecha.txt
fi
