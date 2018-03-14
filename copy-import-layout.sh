#!/usr/bin/env bash

cd $(dirname $0)
find . -mindepth 3 -type d -name codeStyles | xargs -I dir cp -v .idea/codeStyles/* dir/
