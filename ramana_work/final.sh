cat open_change_id | grep -o 'refs/changes/*/[^ ]*' | awk -F '/' '{print $4,$5}' >> final_output.txt 

sed -i 's/ /,/g' final_output.txt

cat final_output.txt
