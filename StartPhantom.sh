#!/bin/bash
cd ~/QA/yandex.tank/data/Phantom/
RESULT=$(docker build . | grep 'built' | cut -c 20-)
docker run --rm -it $RESULT #| tee log.txt
docker rmi $RESULT
#grep 'Web link:' log.txt
$SHELL

