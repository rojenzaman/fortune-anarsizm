#!/usr/bin/env sh

if [ ! -d "./build" ]; then
  mkdir "./build"
fi

cat people/* > build/anarchism
strfile build/anarchism
