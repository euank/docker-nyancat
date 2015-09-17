#!/bin/sh
set -e

if [ -n "$1" ]; then
  git fetch origin $1:buildme
  git checkout buildme
  LDFLAGS="-static" CFLAGS="-Os" make clean && make
fi

cp src/nyancat /out/nyancat
