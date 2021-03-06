#!/bin/bash

#
# Move to the directory containing this script so we can source the env.sh
# properties that follow
#
cd `dirname $0`

#
# Common properties shared by scripts
#
. env.sh

exec_cmd "java -agentlib:native-image-agent=config-merge-dir=src/main/resources/META-INF/native-image --module-path $MODPATH --module $MAINMODULE/$MAINCLASS"
