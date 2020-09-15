#!/bin/sh
RUN_DIR=`pwd`
cd $RUN_DIR/cloud-partner && docker-compose down
cd $RUN_DIR/filipizen && docker-compose down
cd $RUN_DIR/cloud-epayment && docker-compose down
cd $RUN_DIR/cloud-obo && docker-compose down
cd $RUN_DIR/nginx && docker-compose down
cd $RUN_DIR
docker system prune -f
