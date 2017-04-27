#!/bin/sh
 
ssh app@146.185.161.15 <<EOF
  cd ~/hello-jenkins
  git pull
  npm install --production
  forever restartall
  exit
EOF