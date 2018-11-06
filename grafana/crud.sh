#!/usr/bin/env bash
: ${FUNCTION:=$1}
: ${FOLDER:= $PWD}

function c {
    cd ./1371-docker && sh crud.sh c
    cd ../
}

function r {
    cd ./1371-docker && sh crud.sh r
    cd ../
}

function u {
    cd ./1371-docker && sh crud.sh u
    cd ../
}

function d {
    cd ./1371-docker && sh crud.sh d
    cd ../
}

function dc {
    d && c
}

if [[ $1 ]]; then ${FUNCTION}
fi
