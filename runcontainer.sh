#!/bin/bash
docker run -v key.pem:/root/.ssh/key.pem -e SERVER_HOST='172.18.0.1' 
