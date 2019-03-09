#!/bin/sh

set -e

export PATH=$PATH:$1/apps/go/bin

make
make install

mkdir -p $1/apps/fzf/bin

cp -r bin/* $1/apps/fzf/bin
