# !/bin/bash

true && echo "&& true"

false || echo "|| false"

cat /etc/shadow || echo "exit 123" && exit 123
