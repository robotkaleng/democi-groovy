#!/bin/sh
export CC_TARGET=hello  # change it and export your target name
fly -t $CC_TARGET sp -p groovy-pingpong -c ci/pipeline.yml -l ci/vars.yml
fly -t $CC_TARGET up -p groovy-pingpong
