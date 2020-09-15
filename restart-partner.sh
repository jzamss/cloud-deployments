#!/bin/sh
RUN_DIR=`pwd`
cd $RUN_DIR/cloud-partner && docker-compose down
docker system prune -f
cd $RUN_DIR/cloud-partner && docker-compose up -d
cd $RUN_DIR/cloud-partner && docker-compose logs -f cloud-partner-server
