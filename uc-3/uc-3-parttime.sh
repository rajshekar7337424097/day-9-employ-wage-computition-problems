#!/bin/bash -x

ispartTime=1;
.
isfullTime=2;
emprateperhr=20;
randomcheck=$((RANDOM%3));

if [ $isfullTime -eq $randomcheck ];
then
	emhrs=8;
elif [ $ispartTime -eq $randomcheck ];
then
	emphrs=4;
else
	emphrs=0;
fi

salary=$(($emphrs*$emprateperhr));
