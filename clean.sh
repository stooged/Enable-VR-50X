#!/bin/bash
pushd tool
make clean
popd
pushd Enable_VR
make clean
popd
rm -f html_payload/Enable_VR.html
rm -f bin/Enable_VR.bin

