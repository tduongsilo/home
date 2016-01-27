#!/bin/bash
for i in `seq 1 10000`;
do
	echo $i ": fswatch . -1"
  fswatch . -1
	parsl publish --deps -i r
	echo -en "\007"
	sleep 1
done