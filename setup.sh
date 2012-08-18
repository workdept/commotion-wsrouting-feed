#!/bin/bash

cd ../commotion-openwrt/openwrt

if ! grep -q commotionapps feeds.conf; then
    echo "adding commotion apps package feed..."
    echo "src-link commotionapps ../../../commotion-examples" >> feeds.conf
fi

scripts/feeds update -a
scripts/feeds install -a
for i in $(ls ../../commotion-examples/); do scripts/feeds install $i; done
