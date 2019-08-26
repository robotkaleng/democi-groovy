#!/bin/sh
cf apps
cf push -f alternative_manifest.yml
