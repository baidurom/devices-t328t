#!/bin/bash

PRJROOT=$PWD
APKNAME=$1
OUTPATH=`cd $2 && pwd`

echo $@

echo "in custom_app $APKNAME"

if [ $APKNAME == "Settings" ];then
    if [ -f $OUTPATH/res/xml/security_settings_picker.xml ];then
	echo ">>> begin delete unlock_set_slide in $OUTPATH/res/xml/security_settings_picker.xml"
        sed -i '/unlock_set_baidu_slide/d' $OUTPATH/res/xml/security_settings_picker.xml
    fi
fi

if [ $APKNAME = "Phone" ];then
	echo ">>> in custom_app for Phone"

        # Delete the startRecording(ILjava/lang/String;)Ljava/lang/String; method in Recorder.smali
        # We will add a new modified startRecording(ILjava/lang/String;)Ljava/lang/String; method into Recorder.smali
        sed -i -e "/^\.method.*startRecording(ILjava\/lang\/String;)Ljava\/lang\/String/,/^\.end method/d" $OUTPATH/smali/com/android/phone/Recorder.smali
fi

if [ $APKNAME == "framework-res" ];then
        rm -rf $OUTPATH/res/values-xhdpi
        rm -rf $OUTPATH/res/drawable-xhdpi/text_cursor_holo_light.9.png
fi
