#!/bin/sh
export CC_TARGET=hello  # change it and export your target name
fly -t $CC_TARGET trigger-job -j groovy-pingpong/promote-to-prod -w
