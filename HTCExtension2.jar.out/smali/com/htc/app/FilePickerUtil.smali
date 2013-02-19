.class Lcom/htc/app/FilePickerUtil;
.super Ljava/lang/Object;
.source "FilePickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerUtil$DownloadProgressDialog;
    }
.end annotation


# static fields
.field static final CloudException_DiskFull:I = -0x8

.field static final CloudException_FileNotFound:I = -0x7

.field static final CloudException_MediaUnMounted:I = -0x9

.field static final CloudException_NoNetwork:I = -0xb

.field static final CloudException_OutOfMemory:I = -0xa

.field static final CloudException_RequestFailed:I = -0x5

.field static final CloudException_UnLink:I = -0x1

.field static final DataSourceType_DROPBOX:I = 0x0

.field static final DataSourceType_EXTERNAL_STORAGE:I = -0x3

.field static final DataSourceType_INTERNAL_STORAGE:I = -0x2

.field static final DataSourceType_LOCAL_ALL:I = -0x9

.field static final DataSourceType_SKYDRIVE:I = 0x1

.field static final DataSourceType_USB:I = -0x4

.field static final ExtStoragePath:Ljava/lang/String; = null

.field static final ExtUsbPath:Ljava/lang/String; = "/mnt/sdcard/usb"

.field static final FragmentTabFavoritesId:Ljava/lang/String; = "Tab_Favorites"

.field static final FragmentTabNoneId:Ljava/lang/String; = "Tab_NoneCarousel"

.field static final FragmentTabRecentId:Ljava/lang/String; = "Tab_Recent"

.field static final FragmentTabTypeId:Ljava/lang/String; = "Tab_Type"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final ITEM_TYPE_TEXT_DROPBOX:I = 0x20403c2

.field static final ITEM_TYPE_TEXT_EXT_SDCARD_STORAGE:I = 0x20403c5

.field static final ITEM_TYPE_TEXT_INTERNAL_STORAGE_PHONE:I = 0x20403d8

.field static final ITEM_TYPE_TEXT_INTERNAL_STORAGE_TABLET:I = 0x20403d7

.field private static final ITEM_TYPE_TEXT_LOCAL_STORAGE:I = 0x20403c1

.field private static final ITEM_TYPE_TEXT_SKYDRIVE:I = 0x20403c3

.field static final ITEM_TYPE_TEXT_USB:I = 0x20403c4

.field static final IntStoragePath:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field static final IsDrawSeperatorDivider:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsEnableBottomRound:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsEnableTopRound:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsEnabledTranparentBckground:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsSupportExternalStorage:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsSupportInternalStorage:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsTabletDevice:Z = false

.field static final KEY_SELECTION_TYPE:Ljava/lang/String; = "selectionType"

.field static final MULTIPLE_SELECTION:I = 0x1

.field static final SINGLE_SELECTION:I = 0x0

.field static final STORAGE_TYPE_ONLY_EMMC:I = 0x2

.field static final STORAGE_TYPE_ONLY_SD:I = 0x1

.field static final STORAGE_TYPE_PRI_EMMC_SEC_SD:I = 0x3

.field static final STORAGE_TYPE_PRI_SD_SEC_EMMC:I = 0x4

.field static final USB_CONNECTION_DESTINATION_FOLDER_SINGLE_CHOICE_MODE:I = 0x1

.field static final USB_CONNECTION_DISABLED_MODE:I = -0x1

.field static final USB_CONNECTION_SOURCE_MULTI_CHOICE_MODE:I

.field static drawableResId_Folder_Icon:I


# instance fields
.field private ALLOW_FORDER:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private drawableResIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActHandler:Landroid/os/Handler;

.field private mCloudExceptionType:I

.field private mContext:Landroid/content/Context;

.field private mDataSourceType:I

.field private mDateFormat:Ljava/lang/String;

.field private mDownloadOnProgressListener:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

.field private mDownloadProgressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFilePickerFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

.field private mFilePickerListAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private mFilter:[Ljava/lang/String;

.field mIsDateSurceTypeDropboxItemUiVisabled:Z

.field mIsDateSurceTypeSkyDriveItemUiVisabled:Z

.field private mIsFilePickerModeEnabled:Z

.field private mIsFolderPickerModeEnabled:Z

.field private mIsOnlyShowCanWriteFolder:Z

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mRootPath:Ljava/lang/String;

.field private mSelectedDownloadedBundle:Landroid/os/Bundle;

.field private mSingleCloudServiceModeEnabled:Z

.field private mTimeFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsTabletDevice:Z

    .line 45
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkSupportInternalStorage()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    .line 46
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkSupportExternalStorage()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    .line 48
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    .line 750
    const v0, 0x2080211

    sput v0, Lcom/htc/app/FilePickerUtil;->drawableResId_Folder_Icon:I

    .line 1348
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnableTopRound()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnableTopRound:Z

    .line 1372
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnableBottomRound()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnableBottomRound:Z

    .line 1390
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnabledTranparentBckground()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnabledTranparentBckground:Z

    .line 1404
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->shouldDrawSeperatorDivider()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsDrawSeperatorDivider:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 746
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->DEBUG:Z

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    .line 110
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->mIsOnlyShowCanWriteFolder:Z

    .line 111
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->mSingleCloudServiceModeEnabled:Z

    .line 112
    iput-boolean v3, p0, Lcom/htc/app/FilePickerUtil;->mIsFilePickerModeEnabled:Z

    .line 114
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->mIsFolderPickerModeEnabled:Z

    .line 326
    iput-object v4, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 591
    iput-boolean v3, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeDropboxItemUiVisabled:Z

    .line 592
    iput-boolean v3, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeSkyDriveItemUiVisabled:Z

    .line 673
    const/16 v0, -0x9

    iput v0, p0, Lcom/htc/app/FilePickerUtil;->mDataSourceType:I

    .line 675
    const/4 v0, -0x5

    iput v0, p0, Lcom/htc/app/FilePickerUtil;->mCloudExceptionType:I

    .line 693
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/mnt/sdcard/.voicerecorder"

    aput-object v1, v0, v2

    const-string v1, "/mnt/sdcard/ext_sd/.voicerecorder"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->ALLOW_FORDER:[Ljava/lang/String;

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    .line 937
    iput-object v4, p0, Lcom/htc/app/FilePickerUtil;->mFilter:[Ljava/lang/String;

    .line 747
    invoke-direct {p0}, Lcom/htc/app/FilePickerUtil;->initDrawableResIdMap()V

    .line 748
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 828
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->DEBUG:Z

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    .line 110
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->mIsOnlyShowCanWriteFolder:Z

    .line 111
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->mSingleCloudServiceModeEnabled:Z

    .line 112
    iput-boolean v3, p0, Lcom/htc/app/FilePickerUtil;->mIsFilePickerModeEnabled:Z

    .line 114
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->mIsFolderPickerModeEnabled:Z

    .line 326
    iput-object v4, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 591
    iput-boolean v3, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeDropboxItemUiVisabled:Z

    .line 592
    iput-boolean v3, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeSkyDriveItemUiVisabled:Z

    .line 673
    const/16 v0, -0x9

    iput v0, p0, Lcom/htc/app/FilePickerUtil;->mDataSourceType:I

    .line 675
    const/4 v0, -0x5

    iput v0, p0, Lcom/htc/app/FilePickerUtil;->mCloudExceptionType:I

    .line 693
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/mnt/sdcard/.voicerecorder"

    aput-object v1, v0, v2

    const-string v1, "/mnt/sdcard/ext_sd/.voicerecorder"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->ALLOW_FORDER:[Ljava/lang/String;

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    .line 937
    iput-object v4, p0, Lcom/htc/app/FilePickerUtil;->mFilter:[Ljava/lang/String;

    .line 829
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    .line 830
    invoke-direct {p0}, Lcom/htc/app/FilePickerUtil;->initDrawableResIdMap()V

    .line 831
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDateFormat:Ljava/lang/String;

    .line 833
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mTimeFormat:Ljava/lang/String;

    .line 835
    return-void
.end method

.method static IsEmptyPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 1022
    const/4 v0, 0x0

    .line 1023
    .local v0, result:Z
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1024
    :cond_0
    const/4 v0, 0x1

    .line 1025
    :cond_1
    return v0
.end method

.method private static checkEnableBottomRound()Z
    .locals 2

    .prologue
    .line 1375
    const/4 v0, 0x1

    .line 1376
    .local v0, isEnableBottomRound:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 1384
    const/4 v0, 0x1

    .line 1387
    :goto_0
    return v0

    .line 1381
    :sswitch_0
    const/4 v0, 0x0

    .line 1382
    goto :goto_0

    .line 1376
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private static checkEnableTopRound()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1351
    const/4 v0, 0x1

    .line 1352
    .local v0, isEnableTopRound:Z
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_0

    .line 1363
    const/4 v0, 0x1

    .line 1365
    :goto_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1369
    .end local v0           #isEnableTopRound:Z
    :cond_0
    :goto_1
    return v0

    .line 1360
    .restart local v0       #isEnableTopRound:Z
    :sswitch_0
    const/4 v0, 0x0

    .line 1361
    goto :goto_0

    .line 1367
    :cond_1
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "3.5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1368
    goto :goto_1

    .line 1352
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x3e -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private static checkEnabledListViewRoundedCorner()Z
    .locals 3

    .prologue
    .line 1329
    const/4 v0, 0x0

    .line 1330
    .local v0, enabledListViewRoundedCorner:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 1339
    const/4 v0, 0x0

    .line 1341
    :goto_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1342
    const/4 v0, 0x1

    .line 1345
    .end local v0           #enabledListViewRoundedCorner:Z
    :cond_0
    :goto_1
    return v0

    .line 1336
    .restart local v0       #enabledListViewRoundedCorner:Z
    :sswitch_0
    const/4 v0, 0x1

    .line 1337
    goto :goto_0

    .line 1343
    :cond_1
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1344
    const/4 v0, 0x0

    goto :goto_1

    .line 1330
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x3e -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private static checkEnabledTranparentBckground()Z
    .locals 2

    .prologue
    .line 1393
    const/4 v0, 0x1

    .line 1394
    .local v0, isEnabledTranparentBckground:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v1, :pswitch_data_0

    .line 1399
    const/4 v0, 0x1

    .line 1401
    :goto_0
    return v0

    .line 1396
    :pswitch_0
    const/4 v0, 0x0

    .line 1397
    goto :goto_0

    .line 1394
    :pswitch_data_0
    .packed-switch 0x8a
        :pswitch_0
    .end packed-switch
.end method

.method static checkNetworkConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 1455
    const/4 v2, 0x0

    .line 1456
    .local v2, result:Z
    if-eqz p0, :cond_0

    .line 1457
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1459
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 1460
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1461
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1462
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1463
    const/4 v2, 0x1

    .line 1469
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method static checkStorageType()I
    .locals 1

    .prologue
    .line 1120
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    const/4 v0, 0x3

    .line 1127
    :goto_0
    return v0

    .line 1122
    :cond_0
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1123
    const/4 v0, 0x2

    goto :goto_0

    .line 1124
    :cond_1
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1125
    const/4 v0, 0x4

    goto :goto_0

    .line 1127
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkSupportExternalStorage()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1141
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v1

    .line 1142
    .local v1, type:I
    if-eq v1, v0, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1144
    .local v0, supportExternalStorage:Z
    :cond_0
    :goto_0
    return v0

    .line 1142
    .end local v0           #supportExternalStorage:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkSupportInternalStorage()Z
    .locals 3

    .prologue
    .line 1133
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v1

    .line 1134
    .local v1, type:I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1136
    .local v0, supportInternalStorage:Z
    :goto_0
    return v0

    .line 1134
    .end local v0           #supportInternalStorage:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final getAppListItemMainTitleStringId(IZ)I
    .locals 2
    .parameter "serviceType"
    .parameter "isSignIn"

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, result:I
    packed-switch p0, :pswitch_data_0

    .line 668
    :goto_0
    :pswitch_0
    return v0

    .line 639
    :pswitch_1
    const v0, 0x20403c0

    .line 640
    goto :goto_0

    .line 642
    :pswitch_2
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsTabletDevice:Z

    if-eqz v1, :cond_0

    .line 643
    const v0, 0x20403d7

    goto :goto_0

    .line 645
    :cond_0
    const v0, 0x20403d8

    .line 647
    goto :goto_0

    .line 649
    :pswitch_3
    const v0, 0x20403c5

    .line 650
    goto :goto_0

    .line 652
    :pswitch_4
    if-eqz p1, :cond_1

    .line 653
    const v0, 0x204013b

    goto :goto_0

    .line 655
    :cond_1
    const v0, 0x2040143

    .line 657
    goto :goto_0

    .line 660
    :pswitch_5
    if-eqz p1, :cond_2

    .line 661
    const v0, 0x204013c

    goto :goto_0

    .line 663
    :cond_2
    const v0, 0x2040144

    goto :goto_0

    .line 637
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static final getDataSourceTypeText(I)I
    .locals 3
    .parameter "dataSourceType"

    .prologue
    .line 497
    packed-switch p0, :pswitch_data_0

    .line 518
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CloudServiceName not Found!!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    :pswitch_1
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsTabletDevice:Z

    if-eqz v1, :cond_0

    .line 500
    const v0, 0x20403d7

    .line 521
    .local v0, result:I
    :goto_0
    return v0

    .line 502
    .end local v0           #result:I
    :cond_0
    const v0, 0x20403d8

    .line 504
    .restart local v0       #result:I
    goto :goto_0

    .line 506
    .end local v0           #result:I
    :pswitch_2
    const v0, 0x20403c4

    .line 507
    .restart local v0       #result:I
    goto :goto_0

    .line 509
    .end local v0           #result:I
    :pswitch_3
    const v0, 0x20403c5

    .line 510
    .restart local v0       #result:I
    goto :goto_0

    .line 512
    .end local v0           #result:I
    :pswitch_4
    const v0, 0x20403c2

    .line 513
    .restart local v0       #result:I
    goto :goto_0

    .line 515
    .end local v0           #result:I
    :pswitch_5
    const v0, 0x20403c3

    .line 516
    .restart local v0       #result:I
    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static getExternalStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1167
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v0

    .line 1169
    .local v0, type:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1171
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1179
    :goto_0
    return-object v1

    .line 1172
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1174
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1175
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1177
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1179
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getExternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1258
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v1

    .line 1259
    .local v1, type:I
    const-string v0, "removed"

    .line 1261
    .local v0, state:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1262
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1269
    :cond_0
    :goto_0
    return-object v0

    .line 1263
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1264
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1265
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1266
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getInternalStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1149
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v0

    .line 1151
    .local v0, type:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1153
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1161
    :goto_0
    return-object v1

    .line 1154
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1156
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1157
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1159
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1161
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getInternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1242
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v1

    .line 1243
    .local v1, type:I
    const-string v0, "removed"

    .line 1245
    .local v0, state:Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1246
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1253
    :cond_0
    :goto_0
    return-object v0

    .line 1247
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1248
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1249
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1250
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static final getItemTypeTextByDateSource(I)I
    .locals 2
    .parameter "dataSourceType"

    .prologue
    .line 526
    packed-switch p0, :pswitch_data_0

    .line 547
    :pswitch_0
    const/16 v0, -0xa

    .line 552
    .local v0, result:I
    :goto_0
    return v0

    .line 528
    .end local v0           #result:I
    :pswitch_1
    const v0, 0x20403c1

    .line 529
    .restart local v0       #result:I
    goto :goto_0

    .line 531
    .end local v0           #result:I
    :pswitch_2
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsTabletDevice:Z

    if-eqz v1, :cond_0

    .line 532
    const v0, 0x20403d7

    .restart local v0       #result:I
    goto :goto_0

    .line 534
    .end local v0           #result:I
    :cond_0
    const v0, 0x20403d8

    .line 536
    .restart local v0       #result:I
    goto :goto_0

    .line 538
    .end local v0           #result:I
    :pswitch_3
    const v0, 0x20403c5

    .line 539
    .restart local v0       #result:I
    goto :goto_0

    .line 541
    .end local v0           #result:I
    :pswitch_4
    const v0, 0x20403c2

    .line 542
    .restart local v0       #result:I
    goto :goto_0

    .line 544
    .end local v0           #result:I
    :pswitch_5
    const v0, 0x20403c3

    .line 545
    .restart local v0       #result:I
    goto :goto_0

    .line 526
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static final getLocalDefaultDateSourceType()I
    .locals 2

    .prologue
    .line 574
    const/16 v0, -0x9

    .line 575
    .local v0, result:I
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-eqz v1, :cond_0

    .line 576
    const/16 v0, -0x9

    .line 584
    :goto_0
    return v0

    .line 577
    :cond_0
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-nez v1, :cond_1

    .line 578
    const/4 v0, -0x2

    goto :goto_0

    .line 579
    :cond_1
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-eqz v1, :cond_2

    .line 580
    const/4 v0, -0x3

    goto :goto_0

    .line 582
    :cond_2
    const/16 v0, -0x9

    goto :goto_0
.end method

.method static final getLocalItemType(Ljava/lang/String;)I
    .locals 2
    .parameter "filePath"

    .prologue
    .line 556
    const v0, 0x20403c5

    .line 557
    .local v0, result:I
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-eqz v1, :cond_2

    .line 558
    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    const/4 v0, -0x3

    .line 570
    :cond_0
    :goto_0
    return v0

    .line 560
    :cond_1
    sget-object v1, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    const/4 v0, -0x2

    goto :goto_0

    .line 563
    :cond_2
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-nez v1, :cond_3

    .line 564
    const/4 v0, -0x2

    goto :goto_0

    .line 565
    :cond_3
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-eqz v1, :cond_4

    .line 566
    const/4 v0, -0x3

    goto :goto_0

    .line 568
    :cond_4
    const/4 v0, -0x3

    goto :goto_0
.end method

.method static getParentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 1447
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1448
    .local v1, result:Ljava/lang/String;
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1449
    .local v0, lastIndexOf:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    .line 1450
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1451
    :cond_0
    return-object v1
.end method

.method static getScanningPathByDataType(I)[Ljava/lang/String;
    .locals 6
    .parameter "dataType"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1273
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v1

    .line 1274
    .local v1, type:I
    const/4 v0, 0x0

    .line 1276
    .local v0, rootPath:[Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1322
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataSourceType() not Found!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1290
    :pswitch_1
    if-ne v1, v3, :cond_1

    .line 1291
    new-array v0, v3, [Ljava/lang/String;

    .line 1292
    sget-object v2, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 1325
    :cond_0
    :goto_0
    return-object v0

    .line 1293
    :cond_1
    if-ne v1, v5, :cond_2

    .line 1294
    new-array v0, v3, [Ljava/lang/String;

    .line 1295
    sget-object v2, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_0

    .line 1296
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1297
    new-array v0, v3, [Ljava/lang/String;

    .line 1298
    sget-object v2, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_0

    .line 1299
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1300
    new-array v0, v5, [Ljava/lang/String;

    .line 1301
    sget-object v2, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 1302
    sget-object v2, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    aput-object v2, v0, v3

    goto :goto_0

    .line 1306
    :pswitch_2
    new-array v0, v3, [Ljava/lang/String;

    .line 1307
    sget-object v2, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_0

    .line 1310
    :pswitch_3
    new-array v0, v3, [Ljava/lang/String;

    .line 1311
    sget-object v2, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_0

    .line 1314
    :pswitch_4
    new-array v0, v3, [Ljava/lang/String;

    .line 1315
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_0

    .line 1318
    :pswitch_5
    new-array v0, v3, [Ljava/lang/String;

    .line 1319
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_0

    .line 1276
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static getSortSelectedItemId(II)I
    .locals 2
    .parameter "sortType"
    .parameter "sortOrder"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, result:I
    if-nez p0, :cond_2

    .line 77
    if-nez p1, :cond_1

    .line 78
    const/4 v0, 0x0

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_2
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 83
    if-nez p1, :cond_3

    .line 84
    const/4 v0, 0x2

    goto :goto_0

    .line 86
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private initDrawableResIdMap()V
    .locals 25

    .prologue
    .line 756
    const v9, 0x20801fb

    .line 758
    .local v9, drawableResId_MsWord_Icon:I
    const v7, 0x2080210

    .line 760
    .local v7, drawableResId_MsExcel_Icon:I
    const v8, 0x2080209

    .line 762
    .local v8, drawableResId_MsPowerPoint_Icon:I
    const v10, 0x2080208

    .line 764
    .local v10, drawableResId_PDF_Icon:I
    const v11, 0x20800d2

    .line 766
    .local v11, drawableResId_Photo_Icon:I
    const v4, 0x20801f6

    .line 768
    .local v4, drawableResId_Audio_Icon:I
    const v13, 0x20800d3

    .line 770
    .local v13, drawableResId_Video_Icon:I
    const v6, 0x2080202

    .line 772
    .local v6, drawableResId_Html_Icon:I
    const v12, 0x20800d0

    .line 774
    .local v12, drawableResId_TextFile_Icon:I
    const v5, 0x20801fc

    .line 777
    .local v5, drawableResId_DrmFile_Icon:I
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "doc"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string v24, "docx"

    aput-object v24, v22, v23

    .line 779
    .local v22, wordArray:[Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v15, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string/jumbo v24, "xls"

    aput-object v24, v15, v23

    const/16 v23, 0x1

    const-string/jumbo v24, "xlsx"

    aput-object v24, v15, v23

    .line 781
    .local v15, excelArray:[Ljava/lang/String;
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    const-string v24, "ppt"

    aput-object v24, v19, v23

    const/16 v23, 0x1

    const-string v24, "pptx"

    aput-object v24, v19, v23

    const/16 v23, 0x2

    const-string v24, "pot"

    aput-object v24, v19, v23

    const/16 v23, 0x3

    const-string v24, "pps"

    aput-object v24, v19, v23

    .line 783
    .local v19, pptArray:[Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v23, 0x0

    const-string v24, "pdf"

    aput-object v24, v17, v23

    .line 785
    .local v17, pdfArray:[Ljava/lang/String;
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v23, 0x0

    const-string v24, "jpg"

    aput-object v24, v18, v23

    const/16 v23, 0x1

    const-string v24, "jpeg"

    aput-object v24, v18, v23

    const/16 v23, 0x2

    const-string v24, "gif"

    aput-object v24, v18, v23

    const/16 v23, 0x3

    const-string v24, "bmp"

    aput-object v24, v18, v23

    const/16 v23, 0x4

    const-string v24, "png"

    aput-object v24, v18, v23

    const/16 v23, 0x5

    const-string v24, "svg"

    aput-object v24, v18, v23

    const/16 v23, 0x6

    const-string v24, "svgz"

    aput-object v24, v18, v23

    .line 787
    .local v18, photoArray:[Ljava/lang/String;
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v3, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string v24, "amr"

    aput-object v24, v3, v23

    const/16 v23, 0x1

    const-string v24, "mp3"

    aput-object v24, v3, v23

    const/16 v23, 0x2

    const-string v24, "mid"

    aput-object v24, v3, v23

    const/16 v23, 0x3

    const-string v24, "aac"

    aput-object v24, v3, v23

    const/16 v23, 0x4

    const-string v24, "3gp"

    aput-object v24, v3, v23

    const/16 v23, 0x5

    const-string v24, "m4a"

    aput-object v24, v3, v23

    const/16 v23, 0x6

    const-string v24, "mp4"

    aput-object v24, v3, v23

    .line 789
    .local v3, audioArray:[Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    const-string v24, "mp4"

    aput-object v24, v21, v23

    const/16 v23, 0x1

    const-string v24, "3gp"

    aput-object v24, v21, v23

    .line 791
    .local v21, videoArray:[Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v23, 0x0

    const-string v24, "htm"

    aput-object v24, v16, v23

    const/16 v23, 0x1

    const-string v24, "html"

    aput-object v24, v16, v23

    .line 793
    .local v16, htmlArray:[Ljava/lang/String;
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v23, 0x0

    const-string v24, "txt"

    aput-object v24, v20, v23

    const/16 v23, 0x1

    const-string v24, "vcf"

    aput-object v24, v20, v23

    const/16 v23, 0x2

    const-string v24, "vcs"

    aput-object v24, v20, v23

    const/16 v23, 0x3

    const-string v24, "vmg"

    aput-object v24, v20, v23

    const/16 v23, 0x4

    const-string v24, "vbm"

    aput-object v24, v20, v23

    const/16 v23, 0x5

    const-string v24, "url"

    aput-object v24, v20, v23

    const/16 v23, 0x6

    const-string v24, "vnt"

    aput-object v24, v20, v23

    .line 795
    .local v20, textArray:[Ljava/lang/String;
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v14, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string v24, "dcf"

    aput-object v24, v14, v23

    const/16 v23, 0x1

    const-string v24, "drc"

    aput-object v24, v14, v23

    const/16 v23, 0x2

    const-string v24, "dr"

    aput-object v24, v14, v23

    const/16 v23, 0x3

    const-string v24, "dm"

    aput-object v24, v14, v23

    const/16 v23, 0x4

    const-string v24, "dd"

    aput-object v24, v14, v23

    .line 797
    .local v14, drmArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v7, v15}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v8, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v11, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v3}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v13, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5, v14}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method private is24Hour()Z
    .locals 2

    .prologue
    .line 1068
    const-string v0, "24"

    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isCloudDataSourceType(I)Z
    .locals 1
    .parameter "dataSourceType"

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, isCloudItem:Z
    packed-switch p0, :pswitch_data_0

    .line 239
    :goto_0
    :pswitch_0
    return v0

    .line 230
    :pswitch_1
    const/4 v0, 0x1

    .line 231
    goto :goto_0

    .line 236
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static isExternalStorageAvailable()Z
    .locals 3

    .prologue
    .line 1221
    const/4 v0, 0x0

    .line 1222
    .local v0, bExtStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1224
    .local v1, state:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1225
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1228
    :cond_0
    return v0
.end method

.method static isExternalStorageShared()Z
    .locals 3

    .prologue
    .line 1197
    const/4 v0, 0x0

    .line 1198
    .local v0, bExtStorageShared:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1200
    .local v1, state:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1201
    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1204
    :cond_0
    return v0
.end method

.method static isInternalStorageAvailable()Z
    .locals 3

    .prologue
    .line 1209
    const/4 v0, 0x0

    .line 1210
    .local v0, bIntStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getInternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1212
    .local v1, state:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1213
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1216
    :cond_0
    return v0
.end method

.method static isInternalStorageShared()Z
    .locals 3

    .prologue
    .line 1185
    const/4 v0, 0x0

    .line 1186
    .local v0, bIntStorageShared:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getInternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1188
    .local v1, state:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1189
    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1192
    :cond_0
    return v0
.end method

.method static isLocalDataSourceType(I)Z
    .locals 1
    .parameter "dataSourceType"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, isLocalItem:Z
    packed-switch p0, :pswitch_data_0

    .line 257
    :goto_0
    :pswitch_0
    return v0

    .line 250
    :pswitch_1
    const/4 v0, 0x1

    .line 251
    goto :goto_0

    .line 254
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .parameter "cal1"
    .parameter "cal2"

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 868
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 869
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The dates must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4
    .parameter "date1"
    .parameter "date2"

    .prologue
    .line 857
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 858
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The dates must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 860
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 861
    .local v0, cal1:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 862
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 863
    .local v1, cal2:Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 864
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerUtil;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    return v2
.end method

.method static isToday(Ljava/util/Calendar;)Z
    .locals 1
    .parameter "cal"

    .prologue
    .line 853
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/app/FilePickerUtil;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method static isToday(Ljava/util/Date;)Z
    .locals 1
    .parameter "date"

    .prologue
    .line 849
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/app/FilePickerUtil;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method private putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "drawableResId"
    .parameter "extensionArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 814
    .local p1, targetDrawableResIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p3, :cond_0

    .line 815
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 816
    .local v1, extension:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 819
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #extension:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method static setMoreExpandNoFileFoundText(Landroid/widget/TextView;ILandroid/content/Context;)V
    .locals 5
    .parameter "emptyView"
    .parameter "dataSourceType"
    .parameter "context"

    .prologue
    const v4, 0x2040159

    const v3, 0x2040149

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, noFileFoundText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 124
    .local v0, isNetworkConnected:Z
    packed-switch p1, :pswitch_data_0

    .line 162
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 166
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_1
    return-void

    .line 126
    :pswitch_1
    invoke-static {p2}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    .line 127
    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20403cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    goto :goto_0

    .line 137
    :pswitch_2
    invoke-static {p2}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    .line 138
    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20403cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    goto :goto_0

    .line 148
    :pswitch_3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    goto :goto_0

    .line 151
    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    goto :goto_0

    .line 154
    :pswitch_5
    sget-boolean v2, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v2, :cond_2

    .line 155
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static shouldDrawSeperatorDivider()Z
    .locals 2

    .prologue
    .line 1407
    const/4 v0, 0x1

    .line 1408
    .local v0, shouldDrawSeperatorDivider:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 1416
    const/4 v0, 0x1

    .line 1419
    :goto_0
    return v0

    .line 1413
    :sswitch_0
    const/4 v0, 0x0

    .line 1414
    goto :goto_0

    .line 1408
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method IsSDcardPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 877
    const/4 v0, 0x0

    .line 878
    .local v0, result:Z
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 879
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 881
    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    const/4 v0, 0x1

    .line 885
    :cond_0
    return v0
.end method

.method IsUsbPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 889
    const/4 v0, 0x0

    .line 890
    .local v0, result:Z
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 891
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 893
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_0

    .line 894
    const-string v1, "/mnt/sdcard/usb"

    if-eqz v1, :cond_0

    const-string v1, "/mnt/sdcard/usb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    const/4 v0, 0x1

    .line 900
    :cond_0
    return v0
.end method

.method cancelDownloadDialog()V
    .locals 2

    .prologue
    .line 1574
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->removeDownloadAllCloudIds()V

    .line 1575
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDownloadOnProgressListener()Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1576
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDownloadOnProgressListener()Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->cancelToDownload(Z)V

    .line 1579
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerUtil;->setSelectedDownloadedBundle(Landroid/os/Bundle;)V

    .line 1580
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerUtil;->setProgressDialogProgressValue(I)V

    .line 1581
    return-void
.end method

.method checkCanHideInternalStorageSdcardAndUsb(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 1029
    const/4 v0, 0x0

    .line 1030
    .local v0, result:Z
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1031
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1033
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->IsSDcardPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->IsUsbPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1034
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1035
    const/4 v0, 0x1

    .line 1040
    :cond_1
    return v0
.end method

.method checkFileCanScan(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 904
    const/4 v0, 0x0

    .line 905
    .local v0, result:Z
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 906
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 908
    sget-object v1, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 909
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v0

    .line 917
    :cond_0
    :goto_0
    return v0

    .line 910
    :cond_1
    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 911
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v0

    goto :goto_0

    .line 912
    :cond_2
    const-string v1, "/mnt/sdcard/usb"

    if-eqz v1, :cond_0

    const-string v1, "/mnt/sdcard/usb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->isUsbStorageAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method checkLocalFileDataType(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 921
    const/4 v0, -0x3

    .line 922
    .local v0, dataType:I
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 923
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 925
    sget-object v1, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 926
    const/4 v0, -0x2

    .line 934
    :cond_0
    :goto_0
    return v0

    .line 927
    :cond_1
    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 928
    const/4 v0, -0x3

    goto :goto_0

    .line 929
    :cond_2
    const-string v1, "/mnt/sdcard/usb"

    if-eqz v1, :cond_0

    const-string v1, "/mnt/sdcard/usb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 930
    const/4 v0, -0x4

    goto :goto_0
.end method

.method checkToShowItem(I)Z
    .locals 6
    .parameter "itemTypeId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v2, -0x4

    .line 1473
    const/4 v0, 0x0

    .line 1474
    .local v0, show:Z
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-nez v1, :cond_1

    .line 1475
    if-nez p1, :cond_0

    .line 1476
    const/4 v0, 0x1

    .line 1508
    :cond_0
    :goto_0
    return v0

    .line 1478
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1479
    if-ne p1, v5, :cond_0

    .line 1480
    const/4 v0, 0x1

    goto :goto_0

    .line 1482
    :cond_2
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1483
    if-ne p1, v4, :cond_0

    .line 1484
    const/4 v0, 0x1

    goto :goto_0

    .line 1486
    :cond_3
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 1487
    if-ne p1, v3, :cond_0

    .line 1488
    const/4 v0, 0x1

    goto :goto_0

    .line 1490
    :cond_4
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 1491
    if-ne p1, v2, :cond_0

    .line 1492
    const/4 v0, 0x1

    goto :goto_0

    .line 1494
    :cond_5
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    const/16 v2, -0x9

    if-ne v1, v2, :cond_6

    .line 1495
    packed-switch p1, :pswitch_data_0

    .line 1502
    const/4 v0, 0x0

    .line 1503
    goto :goto_0

    .line 1499
    :pswitch_0
    const/4 v0, 0x1

    .line 1500
    goto :goto_0

    .line 1506
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 1495
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1423
    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    .line 1424
    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    .line 1425
    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mFilePickerFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    .line 1426
    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mFilePickerListAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 1427
    return-void
.end method

.method containExtension(Ljava/lang/String;)Z
    .locals 8
    .parameter "filename"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 948
    if-nez p1, :cond_1

    .line 969
    :cond_0
    :goto_0
    return v4

    .line 950
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_0

    .line 952
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->isContainDM(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->isFilePickerModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 956
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->mFilter:[Ljava/lang/String;

    if-nez v6, :cond_2

    move v4, v5

    .line 957
    goto :goto_0

    .line 959
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 960
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mFilter:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 961
    .local v1, extension:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 962
    goto :goto_0

    .line 960
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method dismissProgressDialog()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 364
    :cond_0
    return-void
.end method

.method existsDownloadList(J)Z
    .locals 6
    .parameter "cloudId"

    .prologue
    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, result:Z
    iget-object v4, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 304
    iget-object v4, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 305
    .local v3, set:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 308
    .local v1, key:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 309
    const/4 v2, 0x1

    goto :goto_0

    .line 313
    .end local v0           #i:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Long;
    .end local v3           #set:Ljava/util/Set;
    :cond_1
    return v2
.end method

.method formatInt(I)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 1104
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 1105
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1107
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getActHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mActHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getAvailableFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"

    .prologue
    .line 982
    const-string v3, ""

    .line 983
    .local v3, result:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->getPathArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, dirs:[Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v4, v3

    .line 995
    .end local v3           #result:Ljava/lang/String;
    .local v4, result:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 986
    .end local v4           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_2

    .line 987
    new-instance v1, Ljava/io/File;

    aget-object v5, v0, v2

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 988
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 989
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 986
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 993
    .end local v1           #folder:Ljava/io/File;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 994
    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    move-object v4, v3

    .line 995
    .end local v3           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method getCloudExceptionType()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/htc/app/FilePickerUtil;->mCloudExceptionType:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDataSourceType()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/htc/app/FilePickerUtil;->mDataSourceType:I

    return v0
.end method

.method getDefaultPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    sget-object v0, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method getDownloadOnProgressListener()Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadOnProgressListener:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    return-object v0
.end method

.method getDownloadProgerss(J)I
    .locals 3
    .parameter "cloudId"

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, progress:I
    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 319
    return v0
.end method

.method getFileTypeImage(Ljava/lang/String;)I
    .locals 9
    .parameter "fileName"

    .prologue
    .line 697
    const v0, 0x20800d0

    .line 702
    .local v0, drawableResId_UnknowFileType:I
    move v4, v0

    .line 703
    .local v4, resultImgId:I
    const-string v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, extension:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v5, v4

    .line 720
    .end local v4           #resultImgId:I
    .local v5, resultImgId:I
    :goto_0
    return v5

    .line 708
    .end local v5           #resultImgId:I
    .restart local v4       #resultImgId:I
    :cond_1
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v5, v4

    .line 709
    .end local v4           #resultImgId:I
    .restart local v5       #resultImgId:I
    goto :goto_0

    .line 711
    .end local v5           #resultImgId:I
    .restart local v4       #resultImgId:I
    :cond_3
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 712
    .local v6, set:Ljava/util/Set;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 713
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 714
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 715
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v5, v4

    .line 716
    .end local v4           #resultImgId:I
    .restart local v5       #resultImgId:I
    goto :goto_0

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5           #resultImgId:I
    .restart local v4       #resultImgId:I
    :cond_5
    move v5, v4

    .line 720
    .end local v4           #resultImgId:I
    .restart local v5       #resultImgId:I
    goto :goto_0
.end method

.method getFilter()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mFilter:[Ljava/lang/String;

    return-object v0
.end method

.method getFormatedDate(Ljava/sql/Date;)Ljava/lang/String;
    .locals 3
    .parameter "filedate"

    .prologue
    .line 1079
    const/4 v0, 0x0

    .line 1080
    .local v0, timeFormat:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/app/FilePickerUtil;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1081
    const-string v0, " kk:mm"

    .line 1085
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDateFormat:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1083
    :cond_0
    const-string v0, " h:mm a"

    goto :goto_0
.end method

.method getFormatedTime(J)Ljava/lang/String;
    .locals 3
    .parameter "current"

    .prologue
    .line 1093
    const/4 v1, 0x0

    .line 1094
    .local v1, timeFormat:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/app/FilePickerUtil;->is24Hour()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1095
    const-string v1, "kk:mm"

    .line 1099
    :goto_0
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    .line 1100
    .local v0, FileDate:Ljava/sql/Date;
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1097
    .end local v0           #FileDate:Ljava/sql/Date;
    :cond_0
    const-string v1, "h:mm a"

    goto :goto_0
.end method

.method getPathArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 1000
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    const/4 v0, 0x0

    .line 1003
    :goto_0
    return-object v0

    .line 1002
    :cond_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, dirs:[Ljava/lang/String;
    goto :goto_0
.end method

.method getProgressDialog(Landroid/app/Activity;)Lcom/htc/app/HtcProgressDialog;
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    .line 334
    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 335
    new-instance v0, Lcom/htc/app/FilePickerUtil$DownloadProgressDialog;

    invoke-direct {v0, p0, p1}, Lcom/htc/app/FilePickerUtil$DownloadProgressDialog;-><init>(Lcom/htc/app/FilePickerUtil;Landroid/content/Context;)V

    .line 336
    .local v0, htcProgressDialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x20403c8

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 337
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 338
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 339
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 340
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 341
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/app/FilePickerUtil$1;

    invoke-direct {v3, p0}, Lcom/htc/app/FilePickerUtil$1;-><init>(Lcom/htc/app/FilePickerUtil;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/app/HtcProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 348
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 349
    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 351
    .end local v0           #htcProgressDialog:Lcom/htc/app/HtcProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v1
.end method

.method getSelectedDownloadedBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mSelectedDownloadedBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method getSimplifiedChinesePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filePath"

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x7

    .line 1430
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1431
    .local v1, mRes:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1432
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1433
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1

    const-string v2, "/sdcard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1434
    const-string p1, "/\u5b58\u50a8\u5361"

    .line 1443
    :cond_0
    :goto_0
    return-object p1

    .line 1435
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    const-string v2, "/sdcard/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 1436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/\u5b58\u50a8\u5361/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1437
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_3

    const-string v2, "/mnt/sdcard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1438
    const-string p1, "/mnt/\u5b58\u50a8\u5361"

    goto :goto_0

    .line 1439
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    const-string v2, "/mnt/sdcard/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt/\u5b58\u50a8\u5361/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method getSizeString(J)Ljava/lang/String;
    .locals 6
    .parameter "fileSize"

    .prologue
    const/high16 v5, 0x4480

    const/high16 v4, 0x42c8

    .line 408
    long-to-float v0, p1

    .line 409
    .local v0, size:F
    const-string v1, ""

    .line 410
    .local v1, unitStr:Ljava/lang/String;
    cmpg-float v2, v0, v5

    if-gez v2, :cond_0

    .line 411
    const-string v1, " Bytes"

    .line 431
    :goto_0
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    :goto_1
    return-object v2

    .line 413
    :cond_0
    div-float v2, v0, v5

    mul-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v0, v2, v4

    .line 414
    cmpg-float v2, v0, v5

    if-gez v2, :cond_1

    .line 415
    const-string v1, " KB"

    goto :goto_0

    .line 417
    :cond_1
    div-float v2, v0, v5

    mul-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v0, v2, v4

    .line 418
    cmpg-float v2, v0, v5

    if-gez v2, :cond_2

    .line 419
    const-string v1, " MB"

    goto :goto_0

    .line 421
    :cond_2
    div-float v2, v0, v5

    mul-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v0, v2, v4

    .line 422
    cmpg-float v2, v0, v5

    if-gez v2, :cond_3

    .line 423
    const-string v1, " GB"

    goto :goto_0

    .line 425
    :cond_3
    div-float v2, v0, v5

    mul-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v0, v2, v4

    .line 426
    const-string v1, " TB"

    goto :goto_0

    .line 434
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method isAllowForder(Ljava/lang/String;)Z
    .locals 5
    .parameter "forderName"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->ALLOW_FORDER:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1059
    .local v3, path:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1060
    const/4 v4, 0x1

    .line 1062
    .end local v3           #path:Ljava/lang/String;
    :goto_1
    return v4

    .line 1058
    .restart local v3       #path:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1062
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method isContainDM(Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"

    .prologue
    .line 1045
    if-eqz p1, :cond_0

    .line 1046
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1047
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1049
    const-string v0, ".dm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    const/4 v0, 0x1

    .line 1054
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDateSurceTypeItemUiVisabled(I)Z
    .locals 2
    .parameter "serviceType"

    .prologue
    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, result:Z
    packed-switch p1, :pswitch_data_0

    .line 629
    :pswitch_0
    const/4 v0, 0x0

    .line 632
    :goto_0
    return v0

    .line 614
    :pswitch_1
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 615
    :goto_1
    goto :goto_0

    .line 614
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 617
    :pswitch_2
    sget-boolean v0, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    .line 618
    goto :goto_0

    .line 620
    :pswitch_3
    sget-boolean v0, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    .line 621
    goto :goto_0

    .line 623
    :pswitch_4
    iget-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeDropboxItemUiVisabled:Z

    .line 624
    goto :goto_0

    .line 626
    :pswitch_5
    iget-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeSkyDriveItemUiVisabled:Z

    .line 627
    goto :goto_0

    .line 612
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isFilePickerModeEnabled()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsFilePickerModeEnabled:Z

    return v0
.end method

.method public isFolderPickerModeEnabled()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsFolderPickerModeEnabled:Z

    return v0
.end method

.method isNetworkAllowed(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1512
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1514
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1515
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 1516
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    const-string v7, "Upload block due to no active network."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :goto_0
    return v5

    .line 1519
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 1520
    .local v4, type:I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 1521
    .local v3, subType:I
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTypeName():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getType(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", getSubtype: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAvailable():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAvailable():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnectedOrConnecting():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isRoaming():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "All:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1532
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    const-string v7, "Upload block due to roaming."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1538
    :cond_1
    if-nez v4, :cond_3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_2

    const/4 v7, 0x7

    if-eq v3, v7, :cond_2

    const/4 v7, 0x4

    if-ne v3, v7, :cond_3

    .line 1542
    :cond_2
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[2G] upload block because network type is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1547
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/16 v8, 0x12

    if-ne v7, v8, :cond_4

    .line 1548
    iget-object v5, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    const-string v7, "Upload by USBNET."

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1549
    goto/16 :goto_0

    .line 1553
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "htc_error_report_prefer_network"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1555
    .local v2, preferNetwork:I
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preferNetwork="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    if-nez v2, :cond_5

    move v5, v6

    .line 1557
    goto/16 :goto_0

    .line 1558
    :cond_5
    if-ne v2, v6, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v6, :cond_6

    move v5, v6

    .line 1559
    goto/16 :goto_0

    .line 1561
    :cond_6
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    const-string v7, "Upload block due to wifi only."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public isOnlyShowCanWriteFolder()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsOnlyShowCanWriteFolder:Z

    return v0
.end method

.method public isSingleCloudServiceModeEnabled()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mSingleCloudServiceModeEnabled:Z

    return v0
.end method

.method isUsbStorageAvailable()Z
    .locals 3

    .prologue
    .line 1233
    const/4 v0, 0x0

    .line 1235
    .local v0, bUsbStorageAvailable:Z
    invoke-static {}, Landroid/os/Environment;->getUsbDeviceState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1237
    return v0
.end method

.method public notifyToDoTaskEvent(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getActHandler()Landroid/os/Handler;

    move-result-object v0

    .line 283
    .local v0, h:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    :cond_0
    return-void
.end method

.method removeDownloadAllCloudIds()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 468
    monitor-exit v1

    .line 470
    :cond_0
    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeDownloadCloudId(J)V
    .locals 8
    .parameter "cloudId"

    .prologue
    .line 444
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 446
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 447
    .local v3, set:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 448
    .local v0, i:Ljava/util/Iterator;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 449
    .local v5, targetList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 450
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 451
    .local v2, key:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_0

    .line 452
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    .end local v2           #key:Ljava/lang/Long;
    :cond_1
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 457
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 458
    .local v4, target:Ljava/lang/Long;
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 460
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #target:Ljava/lang/Long;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    .end local v0           #i:Ljava/util/Iterator;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #set:Ljava/util/Set;
    .end local v5           #targetList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    return-void
.end method

.method public setActHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "actHandler"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil;->mActHandler:Landroid/os/Handler;

    .line 278
    return-void
.end method

.method setCloudExceptionType(I)V
    .locals 0
    .parameter "cloudExceptionType"

    .prologue
    .line 690
    iput p1, p0, Lcom/htc/app/FilePickerUtil;->mCloudExceptionType:I

    .line 691
    return-void
.end method

.method setDataSourceType(I)V
    .locals 0
    .parameter "dataSourceType"

    .prologue
    .line 682
    iput p1, p0, Lcom/htc/app/FilePickerUtil;->mDataSourceType:I

    .line 683
    return-void
.end method

.method setDownloadOnProgressListener(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)V
    .locals 2
    .parameter "downloadOnProgressListener"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadOnProgressListener:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadOnProgressListener:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->cancelToDownload(Z)V

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil;->mDownloadOnProgressListener:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    .line 102
    return-void
.end method

.method setDownloadProgerss(JI)V
    .locals 3
    .parameter "cloudId"
    .parameter "downloadProgerss"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void
.end method

.method public setFilePickerModeEnabled(Z)V
    .locals 0
    .parameter "isFilePickerModeEnabled"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/htc/app/FilePickerUtil;->mIsFilePickerModeEnabled:Z

    .line 185
    return-void
.end method

.method setFilter([Ljava/lang/String;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 944
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil;->mFilter:[Ljava/lang/String;

    .line 945
    return-void
.end method

.method public setFolderPickerModeEnabled(Z)V
    .locals 0
    .parameter "isFolderPickerModeEnabled"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/htc/app/FilePickerUtil;->mIsFolderPickerModeEnabled:Z

    .line 209
    return-void
.end method

.method public setOnlyShowCanWriteFolder(Z)V
    .locals 0
    .parameter "isOnlyShowCanWriteFolder"

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/htc/app/FilePickerUtil;->mIsOnlyShowCanWriteFolder:Z

    .line 299
    return-void
.end method

.method setProgressDialogMessage(JI)V
    .locals 8
    .parameter "size"
    .parameter "progress"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    .line 391
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 395
    iget-object v4, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v4, :cond_0

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/htc/app/FilePickerUtil;->getSizeString(J)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, maxSize:Ljava/lang/String;
    int-to-long v4, p3

    mul-long/2addr v4, p1

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/htc/app/FilePickerUtil;->getSizeString(J)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, currentSize:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, format:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 402
    .end local v1           #currentSize:Ljava/lang/String;
    .end local v2           #format:Ljava/lang/String;
    .end local v3           #maxSize:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p3}, Lcom/htc/app/FilePickerUtil;->setProgressDialogProgressValue(I)V

    .line 405
    :cond_1
    return-void
.end method

.method setProgressDialogMessage(Ljava/lang/String;JLandroid/app/Activity;)V
    .locals 9
    .parameter "fileName"
    .parameter "size"
    .parameter "activity"

    .prologue
    .line 367
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v7, :cond_0

    .line 368
    invoke-virtual {p0, p4}, Lcom/htc/app/FilePickerUtil;->getProgressDialog(Landroid/app/Activity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    .line 370
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20403d4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, fileNameTitle:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20403d5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, sizeTitle:Ljava/lang/String;
    invoke-virtual {p0, p2, p3}, Lcom/htc/app/FilePickerUtil;->getSizeString(J)Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, maxSize:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, message:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v7, :cond_1

    .line 381
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v7, v5}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 382
    const-wide/16 v7, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/htc/app/FilePickerUtil;->getSizeString(J)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, currentSize:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, format:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v7, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 387
    .end local v1           #currentSize:Ljava/lang/String;
    .end local v2           #fileNameTitle:Ljava/lang/String;
    .end local v3           #format:Ljava/lang/String;
    .end local v4           #maxSize:Ljava/lang/String;
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #sizeTitle:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method setProgressDialogProgressValue(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 358
    :cond_0
    return-void
.end method

.method setSelectedDownloadedBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil;->mSelectedDownloadedBundle:Landroid/os/Bundle;

    .line 70
    return-void
.end method

.method showDateSurceTypeCloudItemUiVisabled(I)V
    .locals 2
    .parameter "serviceType"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 595
    iput-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeDropboxItemUiVisabled:Z

    .line 596
    iput-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeSkyDriveItemUiVisabled:Z

    .line 597
    packed-switch p1, :pswitch_data_0

    .line 605
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid argument for the service name of HtcCloudService"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 608
    :goto_0
    return-void

    .line 599
    :pswitch_0
    iput-boolean v1, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeDropboxItemUiVisabled:Z

    goto :goto_0

    .line 602
    :pswitch_1
    iput-boolean v1, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeSkyDriveItemUiVisabled:Z

    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
