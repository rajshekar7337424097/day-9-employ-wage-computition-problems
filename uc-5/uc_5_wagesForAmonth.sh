#!/bin/bash -x

ispartTime=1;
isfulltime=2;
totalsalary=0;
emprateperhr=20;
numberworkingdays=20;

for (( day=1; day<=$numberworkingdays; day++ ))
do
	randomcheck=$((RANDOM%3));
		case $randomcheck in 
			$isfulltime)
				emphr=8
				;;
			$ispartTime)
				emphr=4
				;;
			*)
			emphr=0
				;;
		esac

	salary=$(($emphr*$emprateperhr));
	totalsalary=$(($totalsalary+$salary));
done
