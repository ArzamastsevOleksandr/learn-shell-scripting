# !/bin/bash

cd $(dirname $0)
echo "Current dir: "
pwd

dir_name=dpkg

if [[ ! -d ${dir_name} ]]; then
  mkdir ${dir_name} || {
    echo "Can not create directory: ${dir_name}"
    exit 1
  }
fi

cp /var/log/dpkg.log ${dir_name} || {
  echo "Can not copy logs to ${dir_name}"
  exit 1
}
