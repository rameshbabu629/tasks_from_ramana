#!/bin/bash

# Prompt the user to enter the variable name (change_id or _account_id)
echo "Enter the ids you want (change_id or account_id):"
read var_name

# Input file path
input_file="change_id_mul"

# Check if the user entered "change_id" or "_account_id"
if [ "$var_name" == "change_id" ]; then
  # Assign a value to the change_id variable (you can replace this with your actual value)
  change_id=`cat change_id_mul | grep -o '"change_id":"[^"]*' | awk -F ':"' '{print $2}'`
  # Print the value of change_id
  echo "The change_ids are: $change_id"
elif [ "$var_name" == "account_id" ]; then
  # Assign a value to the _account_id variable (you can replace this with your actual value)
  account_id=`cat change_id_mul | grep -o '"_account_id":[^}]*' | awk -F ':' '{print $2}'`
  # Print the value of _account_id
  echo "The account_ids are: $account_id"
else
  # Handle the case when the user enters an unsupported variable name
  echo "Unsupported variable name: $var_name"
fi

