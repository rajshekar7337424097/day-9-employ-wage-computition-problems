#!/bin/bash -x

ispartTime=1;
randomcheck=$((RANDOM%2));

if [ $ispartTime -eq $randomcheck ];

then
	emphr=8;
	emprateperhr=20;
	salary=$(($emphr*$emprateperhr));
else
	emphr=0;
	echo "empl absent"
fi
