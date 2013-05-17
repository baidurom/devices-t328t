#!/bin/bash

# This shell can be used to process some special action before build target files, 
# Sucn as, you can delete some apk files you don't want join to image, but it is in
# prebuit.list or *.list
# and so on

echo "$0" 

PRJROOT=$PWD

cp $PRJROOT/other/recovery.img $PRJROOT/out/merged_target_files/BOOTABLE_IMAGES/
