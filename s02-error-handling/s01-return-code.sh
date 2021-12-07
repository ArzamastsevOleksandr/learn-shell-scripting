#!/bin/bash

# Run with -x flag to see debug output

DIRECTORY=/tmp/

mktemp
mktemp_ret_code=$?

echo "mktemp returned ${mktemp_ret_code}"

mkdir ${DIRECTORY}temp_dir
mkdir_ret_code=$?

test -d ${DIRECTORY}temp_dir
test_ret_code=$?

[[ -d ${DIRECTORY}temp_dir ]]
short_ret_code=$?

echo "mkdir: ${mkdir_ret_code}, test: ${test_ret_code}, short: ${short_ret_code}"
