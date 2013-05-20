#!/bin/bash

# This shell can be used to process some special action before build target files, 
# Sucn as, you can delete some apk files you don't want join to image, but it is in
# prebuit.list or *.list
# and so on

echo "$0" 

PRJROOT=$PWD
PRJOUT=$PWD/out
APKTOOL=$PORT_ROOT/tools/apktool
SIGN_KEY_TOOL=$PORT_ROOT/tools/sign_key.sh
AAPT=$PORT_ROOT/tools/aapt

cp $PRJROOT/other/recovery.img $PRJROOT/out/merged_target_files/BOOTABLE_IMAGES/

if [ ! -d $PRJROOT/other/TMP ]
then
	mkdir -p $PRJROOT/other/TMP
fi

merged_install_framework_params=`ls ~/apktool/framework/*[1-9].apk | sed 's/^/-I /g'`

$APKTOOL if $PRJROOT/source/system/framework/framework-res.apk
$APKTOOL if $PRJROOT/source/system/framework/framework-res-yi.apk

rm -rf $PRJROOT/other/TMP/BaiduCamera_overlay_res
$PORT_ROOT/tools/apktool d -f $PRJROOT/source/system/app/BaiduCamera.apk $PRJROOT/other/TMP/BaiduCamera_overlay_res

if [ -d $PRJROOT/other/TMP/BaiduCamera_overlay_res/assets  ];then
$AAPT package -u -z $merged_install_framework_params \
	-M $PRJROOT/other/TMP/BaiduCamera_overlay_res/AndroidManifest.xml \
	-A $PRJROOT/other/TMP/BaiduCamera_overlay_res/assets \
	-S $PRJROOT/BaiduCamera/res \
	-S $PRJROOT/other/TMP/BaiduCamera_overlay_res/res \
	-F $PRJROOT/other/TMP/BaiduCamera.apk
else
$AAPT package -u -z $merged_install_framework_params \
	-M $PRJROOT/other/TMP/BaiduCamera_overlay_res/AndroidManifest.xml \
	-S $PRJROOT/BaiduCamera/res \
	-S $PRJROOT/other/TMP/BaiduCamera_overlay_res/res \
	-F $PRJROOT/other/TMP/BaiduCamera.apk
fi

rm -rf $PRJROOT/other/TMP/BaiduCamera
$APKTOOL d -f $PRJROOT/other/TMP/BaiduCamera.apk $PRJROOT/other/TMP/BaiduCamera

rm -rf $PRJROOT/other/TMP/BaiduCamera_overlay_res/res
cp $PRJROOT/other/TMP/BaiduCamera/res $PRJROOT/other/TMP/BaiduCamera_overlay_res -rf
rm $PRJROOT/other/TMP/BaiduCamera.apk
$PORT_ROOT/tools/apktool b $PRJROOT/other/TMP/BaiduCamera_overlay_res $PRJROOT/other/TMP/BaiduCamera.apk

$PORT_ROOT/tools/update_res_id.sh $PRJROOT/other/TMP/BaiduCamera.apk
cp $PRJOUT/smali_out/app/BaiduCamera.apk $PRJOUT/merged_target_files/SYSTEM/app/BaiduCamera.apk

rm -rf $PRJROOT/other/TMP/Phone_overlay_res
$PORT_ROOT/tools/apktool d -f $PRJROOT/source/system/app/Phone.apk $PRJROOT/other/TMP/Phone_overlay_res

if [ -d $PRJROOT/other/TMP/Phone_overlay_res/assets  ];then
$AAPT package -u -z $merged_install_framework_params \
	-M $PRJROOT/other/TMP/Phone_overlay_res/AndroidManifest.xml \
	-A $PRJROOT/other/TMP/Phone_overlay_res/assets \
	-S $PRJROOT/Phone/res \
	-S $PRJROOT/other/TMP/Phone_overlay_res/res \
	-F $PRJROOT/other/TMP/Phone.apk
else
$AAPT package -u -z $merged_install_framework_params \
	-M $PRJROOT/other/TMP/Phone_overlay_res/AndroidManifest.xml \
	-S $PRJROOT/Phone/res \
	-S $PRJROOT/other/TMP/Phone_overlay_res/res \
	-F $PRJROOT/other/TMP/Phone.apk
fi

rm -rf $PRJROOT/other/TMP/Phone
$APKTOOL d -f $PRJROOT/other/TMP/Phone.apk $PRJROOT/other/TMP/Phone

rm -rf $PRJROOT/other/TMP/Phone_overlay_res/res
cp $PRJROOT/other/TMP/Phone/res $PRJROOT/other/TMP/Phone_overlay_res -rf
rm $PRJROOT/other/TMP/Phone.apk
$PORT_ROOT/tools/apktool b $PRJROOT/other/TMP/Phone_overlay_res $PRJROOT/other/TMP/Phone.apk

$PORT_ROOT/tools/update_res_id.sh $PRJROOT/other/TMP/Phone.apk
cp $PRJOUT/smali_out/app/Phone.apk $PRJOUT/merged_target_files/SYSTEM/app/Phone.apk




