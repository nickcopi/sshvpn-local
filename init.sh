#!/bin/bash
./tunmake.sh
ssh -o "StrictHostKeyChecking no" -w 1:1 -i /root/.ssh/key.pem root@$TARGET_HOST -p 8022
ipconfig tun1 up
ipconfig tun1 10.13.37.1 netmask 255.255.255.0
read -r
