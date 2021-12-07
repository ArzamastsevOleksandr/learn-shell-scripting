# !/bin/bash

FILE=/tmp/random_file.txt

NON_EMPTY_VAR=sky

if [[ -n ${NON_EMPTY_VAR} ]]; then
  echo "-n:   Var has content: ${NON_EMPTY_VAR}"
fi

if [[ ! -z ${NON_EMPTY_VAR} ]]; then
  echo "! -z: Var has content: ${NON_EMPTY_VAR}"
fi

if [[ ! -f ${FILE} ]]; then
  echo "File ${FILE} does not exist. Exiting..."
  exit 1
else
  echo "aaa" >> ${FILE}

  if [[ $? -ne 0 ]]; then
    echo "Failure"
  else
    echo "Success"
  fi

  cat ${FILE}
fi
