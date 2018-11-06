#!/usr/bin/env bash



: ${FUNCTION:=$1}

function c {
    docker-compose up -d --force-recreate --build
}

function r {
    echo ""
    echo "---------------------------------------------------------------------------------------"
    echo "Images"
    docker-compose images
    echo "---------------------------------------------------------------------------------------"
    echo ""
    echo "Containers"
    docker-compose ps
    echo "---------------------------------------------------------------------------------------"echo ""
    echo "Logs"
    docker-compose logs
    echo "---------------------------------------------------------------------------------------"
}

function u {
    docker-compose up -d --build
}

function d {
    docker-compose down --remove-orphans
}

function dc {
    d && c
}

if [[ $1 ]]; then ${FUNCTION}
fi
