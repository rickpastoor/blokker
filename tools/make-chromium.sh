#!/bin/bash
#
# This script assumes a linux environment

source ./config

echo "*** blokker(Chromium): Creating package"
echo "*** blokker(Chromium): Copying files"

DES=./dist/build/blokker.chromium
rm -rf $DES
mkdir -p $DES
mkdir -p $DES/img/

cp -R ./src/*                           $DES/
cp -R ./platform/chromium/img/*         $DES/img/
cp    ./platform/chromium/manifest.json $DES/

# Replace version
sed -i.bak 's/BLOKKER_VERSION/'$BLOKKER_VERSION'/g' $DES/manifest.json
rm $DES/manifest.json.bak

if [ "$1" = all ]; then
    echo "*** blokker.chromium: Creating package..."
    pushd $(dirname $DES/)
    zip blokker.chromium.zip -qr $(basename $DES/)/*
    popd
fi

echo "*** blokker(Chromium): Package done."
