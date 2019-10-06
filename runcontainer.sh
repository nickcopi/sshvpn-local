#!/bin/bash
docker run -e TARGET_HOST='172.18.0.1' --cap-add NET_ADMIN sshvpnlocal 
