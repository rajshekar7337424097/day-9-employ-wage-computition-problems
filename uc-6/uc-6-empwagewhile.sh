#!/bin/bash -x

ispartTime=1;
isFullTime=2;
max_rate_in_month=100;
numOfworkingdays=20;
emprateperhr=20;

totalemphrs=0;
totalworkingdays=0;

while [[ $totalemphrs -lt $max_rate_in_month && $totalworkingdays -lt $numOfworkingdays ]]
do
	((totalworkingdays++))
	randomcheck=$((RANDOM%3));
	case $randomcheck in
			$isFullTime)
				emphrs=8;
				;;
			$ispartTime)
				emphrs=4;
				;;
			*)
				emphrs=0;
				;;
	esac

	totalemphrs=$(($totalemphrs+$emphrs))
	totalsalary=$(($totalemphrs*$emprateperhr));
done

