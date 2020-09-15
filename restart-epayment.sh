#!/bin/sh
RUN_DIR=`pwd`
cd $RUN_DIR/cloud-epayment && docker-compose down
docker system prune -f
cd $RUN_DIR/cloud-epayment && docker-compose up -d
cd $RUN_DIR/cloud-epayment && docker-compose logs -f cloud-epayment-server
