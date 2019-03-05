#!/bin/sh

set -e

SOURCE_DIR=$1
INSTALL_DIR=$2

echo Installing App: 
echo ----Source Dir: $SOURCE_DIR
echo ----Install Dir: $INSTALL_DIR

mkdir -p $INSTALL_DIR/lib/

find $INSTALL_DIR -executable -type f | xargs -I '{}' ldd '{}' | grep '=> /' | awk '{print $3}' | xargs -I '{}' cp -v '{}' $INSTALL_DIR/lib

cp -v $SOURCE_DIR/.bash_profile $INSTALL_DIR/.bash_profile
cp -v $SOURCE_DIR/.bashrc $INSTALL_DIR/.bashrc
