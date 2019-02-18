#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)
WORK_DIR=${SCRIPT_DIR}/..
TARGET_PROJECT=anigiri-crawler
TARGET_FILE=search_twitter_invoker.py
LOG_FILE=${WORK_DIR}/log/crawler/anigiri-crawler-shell.log
COMPOSE_FILE=docker-compose.development.yml

export COMPOSE_FILE
cd ${WORK_DIR}
docker-compose run ${TARGET_PROJECT} python ${TARGET_FILE} 2>&1 | tee -a ${LOG_FILE}

