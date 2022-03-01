#!/bin/bash
echo "[ ****** ] Starting Endpoint of Application [ ****** ]"


if ! [ -d "./vendor" ]; then
    echo " Install depedences whit composer..."
    # composer install --ignore-platform-reqs  --no-interaction --verbose --no-suggest
    composer install 
fi

