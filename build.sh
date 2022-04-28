#!/bin/bash
NAME=$(pwd | grep -o "[^(\\|\/)]*$")
SELF=./build.sh
TEMPLATE=./template.tar.gz
tar -xzvf $TEMPLATE
OUT=./package.json
echo $(jq ".name = \"${NAME}\"" $OUT) > $OUT
rm $TEMPLATE
rm $SELF
npm install
code .