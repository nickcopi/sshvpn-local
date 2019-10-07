#!/bin/bash
./tunmake.sh
## TODO
## determine the external ip of the container
## pass it to the other container
## the other container adds a static route 
## ip route add $PUBLIC_IP/32 via 172.17.0.1 dev eth0
ssh -o "StrictHostKeyChecking no" -w 1:1 -i /root/.ssh/key.pem root@$TARGET_HOST -p $TARGET_PORT '/app/connected.sh' &
sleep 5
ifconfig tun1 up
ifconfig tun1 10.13.37.1 netmask 255.255.255.252
iptables -A FORWARD -i tun1 -o eth0 -j ACCEPT
iptables -A FORWARD -i eth0 -o tun1 -m state --state ESTABLISHED,RELATED  -j ACCEPT
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sleep infinity
