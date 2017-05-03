#!/bin/sh
 
ssh app@188.226.144.168 <<EOF
  cd ~/hello-jenkins
  git pull
  npm install --production
  forever restartall
exit
EOF