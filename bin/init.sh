#!/bin/bash -x

RELATIVE_PROJECT_DIR_PATH=..
PROJECT_DIR=$(cd $(dirname $0);cd $RELATIVE_PROJECT_DIR_PATH; pwd)

# init environment variables
cp -v ${PROJECT_DIR}/src/.env.example ${PROJECT_DIR}/src/.env

# init mysql log files
touch ${PROJECT_DIR}/log/mysql/mysqld.log

# init backend log files
touch ${PROJECT_DIR}/log/python/app.log
touch ${PROJECT_DIR}/log/python/sql.log

# init log file permission
find ${PROJECT_DIR}/log -type f -print | xargs chmod 666
