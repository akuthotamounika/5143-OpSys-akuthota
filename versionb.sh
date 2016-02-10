#!/bin/bash
file04=$1
fname=$(basename $file04)
temp="${fname##*/}"
w=${temp%.*}
extension=`echo "$fname" | cut -d '.' -f2`
DATE=`date +%Y-%m-%d`
result="$w"_"$DATE"."$extension"
echo $result
cp $1 $result
