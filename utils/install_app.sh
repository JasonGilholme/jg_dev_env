#!/bin/sh

SOURCE_DIR=$1
INSTALL_DIR=$2
APP_NAME=$3

echo Installing App: 
echo ----Source Dir: $SOURCE_DIR
echo ----Install Dir: $INSTALL_DIR

mkdir -p $INSTALL_DIR/apps/$APP_NAME/lib/

find $INSTALL_DIR/apps/$APP_NAME -executable -type f | xargs -I '{}' ldd '{}' | grep '=> /' | awk '{print $3}' | xargs -I '{}' cp -v '{}' $INSTALL_DIR/apps/$APP_NAME/lib

INSTALL_SCRIPT=$SOURCE_DIR/.install
if [ -f $INSTALL_SCRIPT ]; then
    cp -v $INSTALL_SCRIPT $INSTALL_DIR/apps/$APP_NAME/.install
fi

BASH_PROF=$SOURCE_DIR/.bash_profile
if [ -f $BASH_PROF ]; then
    cp -v $BASH_PROF $INSTALL_DIR/apps/$APP_NAME/.bash_profile
fi

BASH_RC=$SOURCE_DIR/.bashrc
if [ -f $BASH_RC ]; then
    cp -v $BASH_RC $INSTALL_DIR/apps/$APP_NAME/.bashrc
fi

cd $INSTALL_DIR
mkdir -p _archives

pwd
ls -la
zip -yr _archives/$APP_NAME.zip apps/$APP_NAME


