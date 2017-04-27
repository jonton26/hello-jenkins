#!/bin/sh
 
ssh app146.185.161.15 <<EOF
  cd ~/hello-jenkins
  git pull
  npm install --production
  forever restartall
  exit
EOF