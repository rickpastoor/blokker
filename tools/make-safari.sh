#!/bin/bash
#
# This script assumes a linux environment

source ./config

echo "*** blokker.safari: Copying files"

DES=dist/build/blokker.safariextension
rm -rf $DES
mkdir -p $DES

cp -R src/*                             $DES/
cp    platform/safari/Info.plist        $DES/

# Replace version
sed -i.bak 's/BLOKKER_VERSION/'$BLOKKER_VERSION'/g' $DES/Info.plist
rm $DES/Info.plist.bak

if [ "$1" = all ]; then
    echo "*** blokker.safari: Creating package..."
    pushd $(dirname $DES/)
    xarjs create blokker.safariextz --cert ./../../platform/safari/cert.pem --cert ./../../platform/safari/apple-intermediate.pem --cert ./../../platform/safari/apple-root.pem --private-key ./../../platform/safari/privatekey.pem $(basename $DES/)
fi

echo "*** blokker.safari: Package done."
