#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)
WORK_DIR=${SCRIPT_DIR}/..
TARGET_PROJECT=anigiri-crawler
TARGET_FILE=anime_list_invoker.py
LOG_FILE=${WORK_DIR}/log/crawler/anigiri-crawler-shell.log

cd ${WORK_DIR}
docker-compose run ${TARGET_PROJECT} python ${TARGET_FILE} 2>&1 | tee -a ${LOG_FILE}
