#!/bin/sh

ttyd -p 7681 -c "$HL_USER_USERNAME:$HL_USER_PASSWORD" bash &
node /server.js &
wait
