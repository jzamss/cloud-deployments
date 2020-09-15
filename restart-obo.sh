#!/bin/sh
RUN_DIR=`pwd`
cd $RUN_DIR/cloud-obo && docker-compose down
docker system prune -f
cd $RUN_DIR/cloud-obo && docker-compose up -d
cd $RUN_DIR/cloud-obo && docker-compose logs -f cloud-obo-server
