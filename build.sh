#!/usr/bin/env bash

jar=./app/build/libs/app-all.jar
binary=$(basename $(basename $jar) .jar)

if [ ! -z "$1" ]
then
    # Linux
    binary=$1
    $JAVA_HOME/bin/native-image \
      --no-fallback \
      --static \
      -cp $jar -H:Name=${binary} -H:Class=com.mlesniak.kotlin.AppKt
else
    # MacOS
    gradle build
    $JAVA_HOME/bin/native-image \
      --no-fallback \
      -cp $jar -H:Name=${binary} -H:Class=com.mlesniak.kotlin.AppKt
fi

