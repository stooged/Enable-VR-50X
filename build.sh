#!/bin/bash
set -e
pushd tool
make
popd
pushd Enable_VR
make
popd
mkdir -p bin
rm -f bin/Enable_VR.bin
cp Enable_VR/Enable_VR.bin bin/Enable_VR.bin
mkdir -p html_payload
tool/bin2js bin/Enable_VR.bin > html_payload/payload.js
sed "s/###/$(cat html_payload/payload.js)/" exploit.template > html_payload/Enable_VR.html
rm -f Enable_VR/Enable_VR.bin
rm -f html_payload/payload.js
