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
fi
