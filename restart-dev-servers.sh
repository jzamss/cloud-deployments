#!/bin/sh 

#---------------------------
# CLOUD-SERVERS
#---------------------------
RUN_DIR=`pwd`

cd $RUN_DIR/cloud-partner && docker-compose down
cd $RUN_DIR/cloud-obo && docker-compose down
cd $RUN_DIR/cloud-epayment && docker-compose down
#cd $RUN_DIR/filipizen && docker-compose down
cd $RUN_DIR/nginx && docker-compose down

docker system prune -f

cd $RUN_DIR/cloud-partner && docker-compose up -d
cd $RUN_DIR/cloud-obo && docker-compose up -d
cd $RUN_DIR/cloud-epayment && docker-compose up -d
#cd $RUN_DIR/filipizen && docker-compose up -d
cd $RUN_DIR/nginx && docker-compose up -d

#---------------------------
# GDX-CLIENT
#---------------------------
GDX_DIR=/home/rameses/RAMESES-DEV/test-gdx-client

cd $GDX_DIR/gdx-client && docker-compose down
docker system prune -f
sleep 1
cd $GDX_DIR/gdx-client && docker-compose -f docker-compose.yml -f docker-compose-test.yml up -d


#---------------------------
# ETRACS-SERVER
#---------------------------
ETRACS_DIR=/home/rameses/RAMESES/deployments/lgu-bohol-tagbilaran-deployments
cd $ETRACS_DIR/etracs && docker-compose down
docker system prune -f
sleep 1
cd $ETRACS_DIR/etracs && docker-compose up -d 
cd $ETRACS_DIR/etracs && docker-compose logs -f etracs25-server

cd $RUN_DIR

