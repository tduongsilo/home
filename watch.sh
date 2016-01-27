#!/bin/bash
for i in `seq 1 10000`;
do
	echo $i ": fswatch $G3_BASE -1"
	fswatch $G3_BASE -1
    rsync -oprtlvessh --progress --exclude=*.swp --exclude=.svn $G3_BASE/gui/ap/* $AOSCP/gui/ap/
    rsync -oprtlvessh --progress --exclude=*.swp --exclude=.svn $G3_BASE/gui/is/* $AOSCP/gui/is/
	rsync -oprtlvessh --progress --exclude=*.swp --exclude=.svn $G3_BASE/phpshare/* $AOSCP/phpshare/
	rsync -oprtlvessh --progress --exclude=*.swp --exclude=.svn $G3_BASE/backend/* $AOSCP/proc/
	echo -en "\007"
	echo -en "\007"
	echo -en "\007"
	sleep 1
done