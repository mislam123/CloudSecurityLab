#!/bin/bash

score=75

if [ "$score" -ge 90 ]
then
    echo "Excellent"
elif [ "$score" -ge 70 ]
then
    echo "Good"
elif [ "$score" -ge 50 ]
then
    echo "Pass"
else
    echo "Fail"
fi
