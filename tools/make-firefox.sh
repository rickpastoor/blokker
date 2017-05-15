#!/bin/bash
#
# This script assumes a linux environment

source ./config

echo "*** blokker.firefox: Copying files"

DES=dist/build/blokker.firefox
rm -rf $DES
mkdir -p $DES
mkdir -p $DES/img

cp -R src/*                             $DES/
cp -R platform/chromium/img/*           $DES/img
cp    platform/firefox/manifest.json    $DES/

# Replace version
sed -i.bak 's/BLOKKER_VERSION/'$BLOKKER_VERSION'/g' $DES/manifest.json
rm $DES/manifest.json.bak

if [ "$1" = all ]; then
    echo "*** blokker.firefox: Creating package..."
    pushd $(dirname $DES/)
    zip blokker.firefox.zip -qrj $(basename $DES/)
    popd
fi

echo "*** blokker(Firefox): Package done."
