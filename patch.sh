#!/bin/bash
echo "patching source..."

ROOTDIR="$PWD"
CURRENT_DIR="$ROOTDIR/patch"

cd $ROOTDIR/frameworks/base
git am $CURRENT_DIR/padding.patch
git am $CURRENT_DIR/headsup.patch

cd $ROOTDIR
bash external/motorola/faceunlock/regenerate/regenerate.sh

cd $ROOTDIR
echo "Done"