#!/bin/bash
docker build -t civiclabs:latest .
docker run -d --privileged=true --name dev civiclabs:latest tail -f /dev/null
docker exec -it dev bash

