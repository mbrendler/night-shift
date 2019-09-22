#! /bin/sh

set -ex

CC="${CC:-cc}"

PRIVATE_FRAMEWORKS_DIR=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/PrivateFrameworks

"${CC}" \
  -Wall \
  -Wpedantic \
  -o night-shift \
  -F"$PRIVATE_FRAMEWORKS_DIR" \
  -framework Foundation \
  -framework CoreBrightness \
  night-shift.m
