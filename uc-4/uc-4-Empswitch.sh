#!/bin/bash -x

ispartTime=1;
isfullTime=2;
emprateperhr=20;
randomcheck=$((RANDOM%3));

case $randomcheck in
	$ispartTime)
		emphrs=4;
		;;
	$isfullTime)
		emphrs=8;
		;;
	*)
	emphrs=0;
		;;
esac
salary=$(($emphrs*$emprateperhr));

