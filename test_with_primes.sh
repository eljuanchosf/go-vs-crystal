#!/usr/bin/env bash

set -e

langs[0]='crystal'
langs[1]='golang'

if [ -z "$1" ]
  then
    echo "Please specify a max number of integers to explore"
    exit 1
fi

for lang in "${langs[@]}"
do
    pushd ./$lang > /dev/null
    if [ ! -f ./bin/generator ]; then
        ./build.sh
    fi
    echo "$lang > $(time ( GOMAXPROCS=1 bin/generator $1 ) 2>&1 1>/dev/null )"
    popd > /dev/null
done