#!/bin/bash
echo "patching source..."

ROOTDIR="$PWD"
CURRENT_DIR="$ROOTDIR/patch"

cd $ROOTDIR/frameworks/base
git am $CURRENT_DIR/padding.patch

cd $ROOTDIR
echo "Done"