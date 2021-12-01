#!/bin/sh

for i in `seq 2 100`

do

count=0

temp=`expr $i - 1`

for j in `seq 2 $temp`

do

mod=`expr $i % $j`

if [ $mod = 0 ]

then

count=`expr $count + 1`

break

fi

done

if [ $count = 0 ]

then

echo $i

fi

done
