#!/bin/bash
./tunmake.sh
ssh -o "StrictHostKeyChecking no" -w 1:1 -i /root/.ssh/key.pem root@$TARGET_HOST -p 8022 '/app/connected.sh' &
sleep 5
ifconfig tun1 up
ifconfig tun1 10.13.37.1 netmask 255.255.255.252
sleep 4200000
