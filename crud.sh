#!/usr/bin/env bash

: ${FUNCTION:=$1}
: ${FOLDER:= $PWD}


function c {
    cd `pwd`"/registry" && sh crud.sh c
    cd ../portainer && sh crud.sh c
    cd ../grafana && sh crud.sh c
    cd ../nginx && sh crud.sh c
    cd ../

}

function r {
    docker system df -v
}

function u {
    cd `pwd`"/registry" && sh crud.sh u
    cd ../portainer && sh crud.sh u
    cd ../grafana && sh crud.sh u
    cd ../nginx && sh crud.sh u
    cd ../
}

function d {
    cd `pwd`"/registry" && sh crud.sh d
    cd ../portainer && sh crud.sh d
    cd ../grafana && sh crud.sh d
    cd ../nginx && sh crud.sh d
    cd ../
    docker system prune -f
    docker volume prune -f
}

function dc {
    d && c
}

if [[ $1 ]]; then ${FUNCTION}
fi
