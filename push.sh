#!/bin/bash

adb shell mkdir -p /sdcard/media/audio/alarms
adb shell mkdir -p /sdcard/media/audio/notifications
adb shell mkdir -p /sdcard/media/audio/ringtones

for f in *; do
  if [ -d $f ]; then
    cd $f
    cd alarms
    adb push . /sdcard/media/audio/alarms/
    cd ../notifications
    adb push . /sdcard/media/audio/notifications
    cd ../ringtones
    adb push . /sdcard/media/audio/ringtones
    cd ../..
  fi
done

echo ""
echo "All done! Reboot to take effect!"
