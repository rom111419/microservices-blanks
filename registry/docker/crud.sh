#!/usr/bin/env bash

: ${FUNCTION:=$1}
: ${FOLDER:= $PWD}

function c {
    cd `pwd`"/network" && sh crud.sh c
    cd ../12-compose && sh crud.sh c
    cd ../

}


function r {
    cd `pwd`"/network" && sh crud.sh r
    cd ../12-compose && sh crud.sh r
    cd ../

}

function u {
    cd `pwd`"/network" && sh crud.sh u
    cd ../12-compose && sh crud.sh u
    cd ../
}

function d {
    cd `pwd`"/network" && sh crud.sh d
    cd ../12-compose && sh crud.sh d
    cd ../
}

function dc {
    d && c
}

if [[ $1 ]]; then ${FUNCTION}
fi
