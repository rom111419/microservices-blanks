#!/usr/bin/env bash

#docker network create front &&
#docker network create back

: ${FUNCTION:=$1}
: ${OP2:=$2}

function c {
    docker network create front &&
    docker network create back
}

function r {
    docker network inspect ${OP2}
}

function u {
    echo "networks not update"
}

function d {
    docker network rm front &&
    docker network rm back
}

function dc {
    d && c
}


if [[ $1 ]]; then ${FUNCTION}
fi
