#!/bin/sh 
RUN_DIR=`pwd`

cd $RUN_DIR/cloud-partner && docker-compose down
cd $RUN_DIR/cloud-obo && docker-compose down
cd $RUN_DIR/cloud-epayment && docker-compose down
# cd $RUN_DIR/filipizen && docker-compose down
cd $RUN_DIR/nginx && docker-compose down

docker system prune -f

cd $RUN_DIR/cloud-partner && docker-compose up -d
cd $RUN_DIR/cloud-obo && docker-compose up -d
cd $RUN_DIR/cloud-epayment && docker-compose up -d
#cd $RUN_DIR/filipizen && docker-compose up -d
cd $RUN_DIR/nginx && docker-compose up -d

cd $RUN_DIR/cloud-partner && docker-compose logs -f cloud-partner-server

