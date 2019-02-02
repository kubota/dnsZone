#!/bin/bash

if [ "$1" == "" ]
then
	echo "<<<<< Information >>>>>>>"
	echo "./dnsZone.sh fakedomain.ch"	
else
	for server in $(host -t ns $1 | cut -d " " -f4);
		do
		host -l $1 $server;
	done
fi