#!/usr/bin/env bash

jar=./app/build/libs/app-all.jar
binary=$(basename $(basename $jar) .jar)

gradle build
$JAVA_HOME/bin/native-image \
  --no-fallback \
  -cp $jar -H:Name=${binary} -H:Class=com.mlesniak.kotlin.AppKt
