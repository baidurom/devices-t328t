#!/bin/bash

PRJROOT=$1
APKNAME=$2
OUTPATH=`cd $3 && pwd`

echo $@

echo "in custom_app $APKNAME"
if [ $APKNAME == "android.policy" ];then
    for file in `find $PRJROOT/android.policy.jar.out/smali -name "*.part"`
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
    cd $OUTPATH
    patch -p0 < $PRJROOT/other/patch_for_policy/*.patch
    if [ $? != "0" -o -f smali/com/baidu/keyguard/rom/sdk/ConstellationView/ConstellationViewHelper.smali.orig ];then
         echo "ERROR: can not apply patch for policy to avoid reboot"
	 cp smali/com/baidu/keyguard/rom/sdk/ConstellationView/ConstellationViewHelper.smali.orig smali/com/baidu/keyguard/rom/sdk/ConstellationView/ConstellationViewHelper.smali
	 cd -
	 exit 1
    fi
    echo "patch for policy SUCCESS"
    cd -
fi
