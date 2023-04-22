#!/bin/bash

function usage() {
    echo "Usage: $0 [start|stop|restart|status]"
    exit 1
}

function start() {
    docker-compose up -d
    cd ./english_note/
    bin/dev
}

function stop() {
    docker-compose down
}

function restart() {
    stop
    start
}

function status() {
    docker-compose ps
}

case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    restart)
        restart
        ;;
    status)
        status
        ;;
    *)
        usage
        ;;
esac
