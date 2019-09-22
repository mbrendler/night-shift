#! /bin/sh

set -ex

CC="${CC:-cc}"

PRIVATE_FRAMEWORKS_DIR=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/PrivateFrameworks

BUILD_OPTIONS="-O3"

if [ "$1" = '--debug' ] ; then
  BUILD_OPTIONS="-g"
fi

"${CC}" \
  -Wall \
  -Wpedantic \
  "$BUILD_OPTIONS" \
  -o night-shift \
  -F"$PRIVATE_FRAMEWORKS_DIR" \
  -framework Foundation \
  -framework CoreBrightness \
  night-shift.m
