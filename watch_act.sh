#!/bin/bash
cmd="$1 $2 $3 $4 $5"
echo "cmd: $cmd"
for i in `seq 1 10000`;
do
  echo " "
  echo " "
  echo " "
	echo $i ": fswatch . -1"
  fswatch . -1
	eval $cmd
	echo -en "\007"
	sleep 1
done
