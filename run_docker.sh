#!/bin/bash
set -e
PORT=8081
docker build . -t qemu-esp32
echo "Starting docker container with port $PORT => 80. Visit http://localhost:$PORT"
docker run --name qemu-esp32 --rm -i -t -p $PORT:80 qemu-esp32 bash
