#!/usr/bin/env bash
#docker cp <containerId>:/file/path/within/container /host/path/target

: ${FUNCTION:=$1}
: ${FOLDER:= $PWD}

function c {
    docker cp grafana:/etc/grafana/grafana.ini ./
}

function r {
    cat grafana.ini
}

function u {
    docker cp ./grafana.ini grafana:/etc/grafana/
}

function d {
    rm grafana.ini
}

function dc {
    d && c
}

if [[ $1 ]]; then ${FUNCTION}
fi
