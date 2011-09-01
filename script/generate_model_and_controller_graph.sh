#!/bin/sh

echo 'generating doc/model.png'
railroady --label -M | dot -Tpng > doc/model.png
#echo 'generating doc/controller.png'
#railroady --label --hide-protected --hide-private -C | neato -Tpng > doc/controller.png

