#!/bin/sh

set -e

mkdir -p $1/lib/

ldd $2 | grep '=> /' | awk '{print $3}' | xargs -I '{}' cp -v '{}' $1/lib
