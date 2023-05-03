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

function test() {
    cd ./english_note/
    bundle exec rspec
}

function test-ci() {
    docker-compose up -d
    cd ./english_note/
    bin/setup
    bundle exec rspec
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
    test)
        test
        ;;
    test-ci)
        test-ci
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
