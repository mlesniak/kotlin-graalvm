#!/usr/bin/env bash

./build-linux.sh
docker run --rm -it -v $(pwd):/data alpine time -v data/app-linux
