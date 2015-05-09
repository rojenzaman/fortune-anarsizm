#!/usr/bin/env sh

set -e

FORTUNE_TARGET="/usr/share/games/fortunes"
sh ./build.sh
cp build/* $FORTUNE_TARGET

