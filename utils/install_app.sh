#!/bin/sh

SOURCE_DIR=$1
INSTALL_DIR=$2

echo Installing App: 
echo ----Source Dir: $SOURCE_DIR
echo ----Install Dir: $INSTALL_DIR

mkdir -p $INSTALL_DIR/lib/

find $INSTALL_DIR -executable -type f | xargs -I '{}' ldd '{}' | grep '=> /' | awk '{print $3}' | xargs -I '{}' cp -v '{}' $INSTALL_DIR/lib

INSTALL_SCRIPT=$SOURCE_DIR/.install
if [ -f $INSTALL_SCRIPT ]; then
    cp -v $INSTALL_SCRIPT $INSTALL_DIR/.install
fi

BASH_PROF=$SOURCE_DIR/.bash_profile
if [ -f $BASH_PROF ]; then
    cp -v $BASH_PROF $INSTALL_DIR/.bash_profile
fi

BASH_RC=$SOURCE_DIR/.bashrc
if [ -f $BASH_RC ]; then
    cp -v $BASH_RC $INSTALL_DIR/.bashrc
fi
