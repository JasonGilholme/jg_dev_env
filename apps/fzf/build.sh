#!/bin/sh

set -e

export PATH=$PATH:$1/go/bin

make
make install

cp -r bin/* $1/bin
