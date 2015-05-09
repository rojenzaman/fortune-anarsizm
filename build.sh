#!/usr/bin/env sh

if [ ! -d "./build" ]; then
  mkdir "./build"
fi

cat people/* > build/anarchist-collection
strfile build/anarchist-collection
