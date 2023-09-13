#!/bin/bash

cat open_change_id | grep -o 'refs/changes/*/[^ ]*' | awk -F '/' '{print $4,$5}' >> output2.txt

sed -i 's/ /,/g' output2.txt
