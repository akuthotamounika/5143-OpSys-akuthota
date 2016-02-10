#!/bin/bash
Name=$1
Date=`date +%Y-%m-%d`
final="$Date"_"$Name"
echo $final
cp $Name $final
