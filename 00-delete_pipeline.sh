#!/bin/sh
export CC_TARGET=hello  # change it and export your target name
fly -t $CC_TARGET dp -p groovy-pingpong
cf login -a https://api.run.pivotal.io -u ahartono@pivotal.io -p Pivnetpasspass123! -o APJ -s development
cf delete -f groovy-pingpong-qa
cf delete -f groovy-pingpong-prd
cf delete -f test-app-groovy
cf delete -f test-app-bca
