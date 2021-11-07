#!/usr/bin/env bash

gradle build
docker run --rm -it -v $(pwd):/data ghcr.io/graalvm/graalvm-ce:latest /bin/sh -c 'cd data; gu install native-image; ./build.sh app-linux'
