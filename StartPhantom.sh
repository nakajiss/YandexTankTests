#!/bin/bash
cd /Phantom/
RESULT=$(docker build . | grep 'built' | cut -c 20-)
docker run --rm -it $RESULT > log.txt
docker rmi $RESULT
grep 'Web link:' log.txt
$SHELL

