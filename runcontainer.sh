#!/bin/bash
docker run -e TARGET_PORT='8022' -e TARGET_HOST='35.221.21.69' --cap-add NET_ADMIN sshvpnlocal 
