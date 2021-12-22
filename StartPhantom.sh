#!/bin/bash
cd ~/QA/yandex.tank/data/Phantom/
RESULT=$(docker build . | grep 'built' | cut -c 20-)
docker run --rm -it $RESULT > file.txt
docker rmi $RESULT
grep 'Web link:' file.txt
$SHELL

