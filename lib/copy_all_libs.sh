#!/bin/sh

set -e

mkdir -p $1/lib/

find $1 -executable -type f | xargs -I '{}' ldd '{}' | grep '=> /' | awk '{print $3}' | xargs -I '{}' cp -v '{}' $1/lib
