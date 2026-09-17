#!/bin/bash

echo "In bash script, there are 3 main loops you should learn: 
for, while &until
And two very useful loop controls: 
break & continue. "

echo "********** For Loop **********"
#for i in 1 2 3 4 5 6 7 8 9
for i in {1..5}
do
    echo "Number: $i"
done

echo "********** For Loop **********"
for name in Alice Bob John
do
    echo "Hello $name"
done


echo "********** For Loop **********"
for file in *.log
do
    echo "Checking: $file"
done

echo "********** While Loop **********"
count=1
while [ $count -le 6 ]
do
    echo "Count: $count"
    count=$((count + 1))
done

echo "********** Until Loop **********"
count=1
until [ $count -gt 8 ]
do
    echo "Count: $count"
    count=$((count + 1))
done

echo "********** Break **********"
for i in {1..10}
do
    echo "$i"

    if [ "$i" -eq 7 ]
    then
        break
    fi
done

echo "********** Continue **********"
for i in {1..5}
do
    if [ "$i" -eq 3 ]
    then
        continue
    fi

    echo "$i"
done

echo "- i.e. 3 was skipped."


echo "********** Nasted Loop: loop inside a loop **********"
for i in {1..3}
do
    for j in {1..3}
    do
        echo "$i - $j"
    done
done