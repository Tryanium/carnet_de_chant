#!/bin/bash
find songs -name "*.sg" -print | while read -r song
do
	i=$((i+1))
	echo -en "[$i] chktex '$song'..."
	res="$(chktex "$song" 2>&1)"
	rc=$?
	if [[ "$DEBUG" != 'false' ]]
	then
	  awk '{print "[debug]  "$0}'<<<"$res"
	fi
	if [ $rc -eq 0 ]
	then
		echo "ok"
	else
		echo "ERR"
	fi
	RC=$((RC+rc))
	echo RC=$RC>rc
done
