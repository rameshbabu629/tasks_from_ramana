#!/bin/bash

cat open_change_id | grep -o 'refs/changes/*/[^ ]*' | awk -F '/' '{print $4,$5}' >> output.txt

#var2=`cat open_change_id1 | grep -o 'refs/changes/*/[^ ]*' | awk -F '/' '{print $5}'`

#echo $var >> output.txt

#sed 's/ /,/g' output.txt


