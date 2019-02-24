#!/bin/sh

set -e

mkdir -p $1/lib/

ldd $1 | grep '=> /' | awk '{print $3}' | xargs -I '{}' cp -v '{}' $2/lib
