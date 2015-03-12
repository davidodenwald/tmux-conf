#!/bin/bash

HOUR=$(date | cut -f 4 -d " " | cut -f 1 -d ":")
MINUTE=$(date | cut -f 4 -d " " | cut -f 2 -d ":")

if [ $MINUTE -gt "29" ]
then
	HOUR=$(expr $HOUR + 1)
fi

if [ $HOUR -gt "11" ] 
then
	HOUR=$(expr $HOUR - 12)
fi

if [ $HOUR == 0 ]
then
	echo -n "🕛"

elif [ $HOUR == 1 ]
then
	echo -n "🕐"

elif [ $HOUR == 2 ]
then
	echo -n "🕑"

elif [ $HOUR == 3 ]
then
	echo -n "🕒"

elif [ $HOUR == 4 ]
then
	echo -n "🕓"

elif [ $HOUR == 5 ]
then
	echo -n "🕔"

elif [ $HOUR == 6 ]
then
	echo -n "🕕"

elif [ $HOUR == 7 ]
then
	echo -n "🕖"

elif [ $HOUR == 8 ]
then
	echo -n "🕗"

elif [ $HOUR == 9 ]
then
	echo -n "🕘"

elif [ $HOUR == 10 ]
then
	echo -n "🕙"

elif [ $HOUR == 11 ]
then
	echo -n "🕚"

fi
