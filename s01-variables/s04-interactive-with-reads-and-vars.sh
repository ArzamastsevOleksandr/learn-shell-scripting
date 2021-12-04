#!/bin/bash

name=${1}
age=${2}


if test -z ${name};
then read -p "What is you name? " name;
else echo "Name was provided: ${name}"
fi

if test -z ${age};
then read -p "How old are you? " age;
else echo "Age was provided: ${age}"
fi

echo
echo "Your data is:
name=${name}
age=${age}"
