#!/bin/bash
ssh -w 1:1 -i ~/root/.ssh/key.pem root@$TARGET_HOST -p 8022
