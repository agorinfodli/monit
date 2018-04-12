#!/bin/sh
MegaCli64 -PDList -aALL > /tmp/testraid.txt
grep 'Firmware state: Online' /tmp/testraid.txt > /tmp/testraid2.txt
cmdraid=`grep 'Failed' /tmp/testraid2.txt`
if [ $? -eq 0 ]
	#echo $cmdraid
then
	echo "RAID NOK"
	exit 1
else
	echo 'RAID OK'
	exit 0
fi

