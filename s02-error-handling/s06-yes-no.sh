# !/bin/bash

read -p "Yes or no? " choice

if [[ ${choice,,} = 'y' || ${choice,,} = 'yes' ]]; then
  echo "OK"
  exit 1
fi

if [[ ${choice^^} = 'N' || ${choice^^} = 'NO' ]]; then
  echo "NOK"
  exit 1
fi
