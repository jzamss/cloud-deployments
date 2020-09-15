#!/bin/sh
RUN_DIR=`pwd`
cd $RUN_DIR/filipizen && docker-compose down
docker system prune -f
cd $RUN_DIR/filipizen && docker-compose up -d
cd $RUN_DIR/filipizen && docker-compose logs -f filipizen-web
