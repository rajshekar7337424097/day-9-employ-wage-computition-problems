#!/bin/bash -x

isempPresent=1;
randomcheck=$((RANDOM%2));

if [ $isempPresent -eq $randomcheck ];

then
	echo "employ present";
else
	echo "employ absent";
fi
