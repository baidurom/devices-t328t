# Makefile Reference
# Please use this file as the project Makefile reference

##############################################################################
# Only for baidu, otherwise do not set USER
#-----------------------------------------------------------------------------
USER := baidu

##############################################################################
# This value defines the base source branch, only use for baidu server build.
# when open this outside, delete this config
# Support values: rom-mtk, baidu-4.0
#-----------------------------------------------------------------------------
BAIDU_BASE_BRANCH := baidu-4.0

##############################################################################
# This value defines which overlay should be choose, only use for baidu internal.
# Support values: rom-mtk, baidu-4.0
# when your product is mtk, you can choose rom-mtk, otherwise set it to baidu-4.0
#-----------------------------------------------------------------------------
BAIDU_FRAMEWORK_OVERLAY_TYPE := baidu-4.0

##############################################################################
# This value defines which base this project should choose, only for baidu internal.
# Support values: S710, JRD77SS, YINS, YIGN
#-----------------------------------------------------------------------------
BAIDU_BASE_DEVICE := YINS

##############################################################################
# This value define to trigger server to build timely and daily
# if you want to enable server build, set BAIDU_SERVER_BUILD := true
# ----------------------------------------------------------------------------
BAIDU_SERVER_BUILD_ENABLE := true

##############################################################################
# These values define for get new reference base package from server, only use for baidu internal
# path with prefix of "ftp://" would be recognized as ftp server
# Two ways to get package:
# 1) package_path
# 2) base_device + base_version + daily/timely/release_path
#-----------------------------------------------------------------------------
BAIDU_BASE_TYPE		:= target
DAILY_PATH		:= ftp://getprod:getprod@buildprod.scm.baidu.com:/temp/data/prod-64/mc/yi/daily/baidu-4.0
TIMELY_PATH		:= ftp://getprod:getprod@buildprod.scm.baidu.com:/temp/data/prod-64/mc/yi/timely/baidu-4.0
RELEASE_PATH		:= /ROM/rom-release-candidate

##############################################################################
# Default DALVIK_VM_BUILD setting is 27
# android 4.0: 27
# android 4.1: 28
# htc t328t is special one
#-----------------------------------------------------------------------------
DALVIK_VM_BUILD := 28

##############################################################################
# This value will control the method of pack or unpack image and so on
# you can use mtk/qualcomm/ti/nvidia
#-----------------------------------------------------------------------------
PLATFORM := qualcomm

##############################################################################
# you can custom boot image and recovery image name
#-----------------------------------------------------------------------------
# BOOT_IMG := bootname
# RECOVERY_IMG := recoveryname

##############################################################################
# use for newproject, not unpack boot.img to BOOT, or not unpack recovery.img to RECOVERY
# Support Values:
# false, not unpack
#-----------------------------------------------------------------------------
# PRJ_UNPACK_BOOT_IMG := false
# PRJ_UNPACK_RECOVERY_IMG := false

##############################################################################
# customize weather use prebuilt image or pack from BOOT/RECOVERY directory
# Support Values:
# true, use prebuilt boot.img/recovery.img
# flase, pack boot.img/recovery.img from vendor/BOOT / vendor/RECOVERY
# NULL, none boot.img/recovery.img
#-----------------------------------------------------------------------------
PREBUILT_BOOT_IMG := false
PREBUILT_RECOVERY_IMG := true

##############################################################################
# Directorys which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_dirs := app appbackup customize/resource media/audio/notifications media/zchgd

##############################################################################
# Files which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_files := bin/zchgd

##############################################################################
# Vendor apks you want to use
#-----------------------------------------------------------------------------
vendor_saved_apps := BrcmBluetoothServices FMRadioService Bluetooth

##############################################################################
# Apks build from current project root directory
# if the apk is decode from baidu:
# 1, check if the apk in LOCAL_BAIDU_UPDATE_RES_APPS (you can see it in build/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's apk to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_apps := FMRadio
# you need decode FMRadio.apk to the project directory (use apktool d FMRadio.apk) first
# then you can make it by:   make FMRadio
#-----------------------------------------------------------------------------
vendor_modify_apps := FM_Radio framework-htc-res

##############################################################################
# Jars build from current project root directory
# if the jar is decode from baidu:
# 1, check if the jar in LOCAL_BAIDU_UPDATE_RES_APPS (you can see it in build/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's jar to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_jars := android.policy
# you need decode android.policy.jar to the project directory (use apktool d android.policy.jar) first
# then you can make it by:   make android.policy
#-----------------------------------------------------------------------------
vendor_modify_jars := framework secondary_framework framework2 services HTCExtension2 HTCExtension

##############################################################################
# baidu_remove_apps: those baidu apk you want remove 
#-----------------------------------------------------------------------------
# baidu_remove_apps := BaiduUpdate

##############################################################################
# baidu_modify_apps: which base the baidu's apk
# just override the res, append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_apps := Phone BaiduCamera

##############################################################################
# baidu_modify_jars: which base the baidu's jar
# just append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_jars := android.policy

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------

# hide the soft mainkeys
override_property += \
    qemu.hw.mainkeys=1

# modify for generate ota zip
override_property += \
    ro.build.description=冰冻冷咖啡 1.19.1403.1 IML74K CL82971 release-keys \
    ro.build.fingerprint=htccn_chs_cmcc/htc_primotd/primotd:4.0.3/IMM76/82971.1:user/release-keys \
    ro.product.device.alias=t328t,T328T \

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------
remove_property += \
    dev.defaultwallpaper

include $(PORT_BUILD)/main.mk
