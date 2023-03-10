#!/bin/bash 

read -p "Enter 'google.com' to ping, anythig else is invalid: " hostname

#The input validation
if [ "$hostname" != "google.com" ]; then
  echo "The input must be google.com, anything else is invalid"
  exit 1
fi

#created file to store ping results
ping -c 5 "$hostname" > ping_results.txt

# Print a message indicating that the ping is complete
echo "Success! Results added to ping_results.txt."

