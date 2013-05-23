#!/bin/bash

PRJROOT=$PWD
PRJOUT=$PWD/out
TARGET_SYSTEM_DIR=$PRJOUT/merged_target_files/SYSTEM


if [ -d "$TARGET_SYSTEM_DIR/vendor/operator/app" ];then
	rm -rf "$TARGET_SYSTEM_DIR/vendor/operator/app"
fi

if [ -d "$TARGET_SYSTEM_DIR/customize/resource" ];then
	rm -rf "$TARGET_SYSTEM_DIR/customize/resource"
	echo "remove $TARGET_SYSTEM_DIR/customize/resource"
fi

if [ -d "$TARGET_SYSTEM_DIR/media" ];then
	rm -rf "$TARGET_SYSTEM_DIR/media/bootanimation.zip" 
	rm -rf "$TARGET_SYSTEM_DIR/media/bootaudio.mp3" 
       rm -rf "$TARGET_SYSTEM_DIR/media/shutaudio.mp3" 
       rm -rf "$TARGET_SYSTEM_DIR/media/shutanimation.zip"
	rm -rf "$TARGET_SYSTEM_DIR/media/shutdownanimation.zip" 
       rm -rf "$TARGET_SYSTEM_DIR/media/audio/ringtones"
       rm -rf "$TARGET_SYSTEM_DIR/media/audio/notifications"
fi

if [ -f "$TARGET_SYSTEM_DIR/bin/zchgd" ];then
	rm -rf "$TARGET_SYSTEM_DIR/bin/zchgd"
fi

if [ -d "$TARGET_SYSTEM_DIR/media/zchgd" ];then
	rm -rf "$TARGET_SYSTEM_DIR/media/zchgd"
fi

