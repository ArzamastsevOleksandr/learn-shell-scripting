# !/bin/bash

echo "args passed: $#"

if [[ $# -ne 3 ]]; then
  echo "Expected format is: $0 <dir> <file> <content>"
  exit 1
fi

dir_name=$1
file_name=$2
content=$3

absolute_file_path=${dir_name}/${file_name}

if [[ ! -d ${dir_name} ]]; then
  mkdir ${dir_name} || {
    echo "Can not create the directory ${dir_name}. Exiting"
    exit 1
  }
fi

if [[ ! -f ${absolute_file_path} ]]; then
  touch ${absolute_file_path} || {
    echo "Can not create a file ${absolute_file_path}. Exiting"
    exit 1
  }
fi

echo ${content} >> ${absolute_file_path}
