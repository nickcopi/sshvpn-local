#!/bin/bash
docker run -e TARGET_PORT='8022' -e TARGET_HOST='172.17.0.1' --cap-add NET_ADMIN sshvpnlocal 
