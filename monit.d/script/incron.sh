#!/bin/sh
if [ -f /agorinfo/program/ordres/*.ini ]
then
echo "fichier ini detecte"
systemctl restart incrond.service
exit 1
else
echo 'pas de .ini'
exit 0
fi

