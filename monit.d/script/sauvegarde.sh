#!/bin/sh
if [ -f /tmp/agrapport ]
then
grep -q 'Echec' /tmp/agrapport
if [ $? -eq 0 ]
then echo "Erreur de sauvegarde"
exit 1
else echo "Sauvegarde OK"
fi
else
echo "Pas de fichier agrapport"
exit 1
fi

