#!/bin/bash

adb shell mkdir -p /sdcard/media/audio/alarms
adb shell mkdir -p /sdcard/media/audio/notifications
adb shell mkdir -p /sdcard/media/audio/ringtones

for f in `ls | grep -v push.sh`; do
  cd $f
  cd alarms
  adb push . /sdcard/media/audio/alarms/
  cd ../notifications
  adb push . /sdcard/media/audio/notifications
  cd ../ringtones
  adb push . /sdcard/media/audio/ringtones
  cd ../..
done

echo ""
echo "All done! Reboot to take effect!"
