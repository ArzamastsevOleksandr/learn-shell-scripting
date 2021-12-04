#!/bin/bash

text_var="Text variable"
# print the variable content to the cmd
echo ${text_var}

number_var=1
# will print 1 + 1 because Bash considers all variables as string
echo deal with strings: ${number_var} + 1
# tell Bash to handle number_var as a number
echo -n "deal with numbers: "
echo $((${number_var} + 1))

name="Tom"
echo "${name} is in the text. And ${name} is interpolated"
