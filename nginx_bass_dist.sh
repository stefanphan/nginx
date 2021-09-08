#!/bin/bash
#PROJ_PATH=/appset
#ip=10.0.0.7
expect -c "
  spawn scp -r $PROJ_PATH/nginx/dist root@$ip:/appset/nginx/html/baas
  expect {
    \"*password*\" {set timeout 300; send \"weineng0528@@\r\";}
  }
expect eof"
