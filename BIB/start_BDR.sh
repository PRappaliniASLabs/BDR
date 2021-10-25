#!/bin/bash

./stop_BDR.sh

rm nohup.out 2> /dev/null

nohup java -Xmx128m -Xms128m -Dhttp.port=10010,10011 -jar testappserver.jar 1stTierconfig.xml &

nohup java -Xmx128m -Xms128m -Dhttp.port=10020 -jar testappserver.jar 2ndTierconfig.xml &

nohup java -Xmx128m -Xms128m -Dhttp.port=10030 -jar testappserver.jar 3dTierconfig.xml &



