#!/bin/bash

PRJROOT=$1
APKNAME=$2
OUTPATH=`cd $3 && pwd`

echo $@

echo "in custom_app $APKNAME"
if [ $APKNAME == "Phone" ];then
    for file in `find $PRJROOT/Phone/smali -name "*.part"`
    do
	echo "file: $file"
        filepath=`dirname $file`
	filepath=${filepath##*/smali/}
	echo "filepath: $filepath"
        filename=`basename $file .part`
	echo "filename: $filename"
	echo "$OUTPATH"
        dstfile="$OUTPATH/smali/$filepath/$filename"

        cat $file >> $dstfile
    done
fi

if [ $APKNAME == "Settings" ];then
    if [ -f $OUTPATH/res/xml/security_settings_picker.xml ];then
	echo ">>> begin delete unlock_set_slide in $OUTPATH/res/xml/security_settings_picker.xml"
        sed -i '/unlock_set_slide/d' $OUTPATH/res/xml/security_settings_picker.xml
	cp $OUTPATH/res/xml/security_settings_picker.xml /tmp/
    fi
fi

if [ $APKNAME == "framework-res" ];then
        rm -rf $OUTPATH/res/values-xhdpi
fi
