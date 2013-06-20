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
	cp $OUTPATH/res/xml/security_settings_picker.xml /tmp/
    fi
fi

if [ $APKNAME == "framework-res" ];then
        rm -rf $OUTPATH/res/values-xhdpi
        rm -rf $OUTPATH/res/drawable-xhdpi/text_cursor_holo_light.9.png
fi
