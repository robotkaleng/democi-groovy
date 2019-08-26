#!/bin/sh
export CC_TARGET=hello  # change it and export your target name
fly -t $CC_TARGET dp -p groovy-pingpong
cf login -a https://api.run.pivotal.io -u ahartono@pivotal.io -p Pivnetpasspass123! -o APJ -s development
cf delete groovy-pingpong-qa
cf delete groovy-pingpong-prd
cf delete test-app-groovy
