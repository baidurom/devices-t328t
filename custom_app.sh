#!/bin/bash

PRJROOT=$PWD
APKNAME=$1
OUTPATH=`cd $2 && pwd`

echo $@

echo "in custom_app $APKNAME"


if [ $APKNAME == "framework-res" ];then
        rm -rf $OUTPATH/res/values-xhdpi
        rm -rf $OUTPATH/res/drawable-xhdpi/text_cursor_holo_light.9.png
fi
