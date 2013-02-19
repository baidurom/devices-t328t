.class public Lcom/htc/util/http/XMLRequest;
.super Ljava/lang/Object;
.source "XMLRequest.java"


# static fields
.field protected static ESCAPE_CHAR:B = 0x0t

.field public static final HTTP:Ljava/lang/String; = "http://"

.field public static final HTTPS:Ljava/lang/String; = "https://"

.field protected static final Hexhars:[B = null

.field public static final Host:Ljava/lang/String; = "andota.htcsense.com"

.field public static final HostTest:Ljava/lang/String; = "andota.htctouch.com"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "XMLRequest"

.field private static final PREFIX:Ljava/lang/String; = "[XMLRequest] "

.field static final RADIX:I = 0x10

.field public static final SEPARATOR:Ljava/lang/String; = "#"

.field protected static final WWW_FORM_URL:Ljava/util/BitSet; = null

.field public static final apiLevelTag:Ljava/lang/String; = "al"

.field public static final appendLog:Ljava/lang/String; = "/common-log/rws/log/basic"

.field public static final assetIdTag:Ljava/lang/String; = "aId"

.field public static final certTag:Ljava/lang/String; = "ct"

.field public static final cidTag:Ljava/lang/String; = "ci"

.field public static final deviceTag:Ljava/lang/String; = "de"

.field public static final digestTag:Ljava/lang/String; = "digest"

.field public static final getAlarmList:Ljava/lang/String; = "/and-sound/rws/alarm/list"

.field public static final getAppsList:Ljava/lang/String; = "/and-apps/rws/app/list"

.field public static final getAssetScene:Ljava/lang/String; = "/and-scene/rws/asset/detail/"

.field public static final getCategoryApps:Ljava/lang/String; = "/common/rws/category/apps"

.field public static final getCategoryHTC:Ljava/lang/String; = "/common/rws/category/asset"

.field public static final getCategoryMarket:Ljava/lang/String; = "/common/rws/category/direct"

.field public static final getCategorySDM:Ljava/lang/String; = "/common/rws/category/"

.field public static final getCategoryScene:Ljava/lang/String; = "/common/rws/category/scene"

.field public static final getCategorySoundSet:Ljava/lang/String; = "/common/rws/category/sound"

.field public static final getChart:Ljava/lang/String; = "/common-stock/rws/history"

.field public static final getLogSetting:Ljava/lang/String; = "/common-log/rws/log/setting"

.field public static final getNotificationList:Ljava/lang/String; = "/and-sound/rws/notification/list"

.field public static final getPackageDetail:Ljava/lang/String; = "/and-apps/rws/package/detail/"

.field public static final getPackageDetail2:Ljava/lang/String; = "/and-apps/rws/package/detail2/"

.field public static final getPlugInList:Ljava/lang/String; = "/and-apps/rws/plug/list"

.field public static final getQuotes:Ljava/lang/String; = "/common-stock/rws/quote"

.field public static final getRateing:Ljava/lang/String; = "/and-apps/rws/rating"

.field public static final getRingtoneLsit:Ljava/lang/String; = "/and-sound/rws/ringtone/list"

.field public static final getSceneByCat:Ljava/lang/String; = "/and-scene/rws/scene/list-by-category/"

.field public static final getSceneCatList:Ljava/lang/String; = "/and-scene/rws/scene/listcategory"

.field public static final getSceneList:Ljava/lang/String; = "/and-scene/rws/scene/list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final getSkinByCat:Ljava/lang/String; = "/and-scene/rws/skin/list-by-category/"

.field public static final getSkinCatList:Ljava/lang/String; = "/and-scene/rws/skin/listcategory"

.field public static final getSkinList:Ljava/lang/String; = "/and-scene/rws/skin/list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final getSoundDetail:Ljava/lang/String; = "/and-sound/rws/asset/detail/"

.field public static final getSoundSetDetail:Ljava/lang/String; = "/and-sound/rws/soundset/detail/"

.field public static final getSoundSetList:Ljava/lang/String; = "/and-sound/rws/soundset/list"

.field public static final getSymbol:Ljava/lang/String; = "/common-stock/rws/symbol"

.field public static final getWallpapaerCatList:Ljava/lang/String; = "/and-scene/rws/wallpaper/listcategory"

.field public static final getWallpaperByCat:Ljava/lang/String; = "/and-scene/rws/wallpaper/list-by-category/"

.field public static final getWallpaperList:Ljava/lang/String; = "/and-scene/rws/wallpaper/list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final getWidgetList:Ljava/lang/String; = "/and-apps/rws/widget/list"

.field public static final handsetTime:Ljava/lang/String; = "ht"

.field public static final htcAccount:Ljava/lang/String; = "mya"

.field public static final htcSdkVer:Ljava/lang/String; = "uisdk"

.field public static final hwcidTag:Ljava/lang/String; = "hc"

.field public static final imeiTag:Ljava/lang/String; = "ii"

.field public static final localeTag:Ljava/lang/String; = "le"

.field public static final mccTag:Ljava/lang/String; = "mcc"

.field public static final mncTag:Ljava/lang/String; = "mnc"

.field public static final pagingCtrl:Ljava/lang/String; = "next"

.field public static final platformTag:Ljava/lang/String; = "pl"

.field public static final ratingScoreTag:Ljava/lang/String; = "score"

.field public static final relesaseKey:Ljava/lang/String; = "rk"

.field public static final romVersionTag:Ljava/lang/String; = "rv"

.field public static final searchCondition:Ljava/lang/String; = "filter"

.field public static final senseVer:Ljava/lang/String; = "sv"

.field public static final skinVer:Ljava/lang/String; = "skn"

.field public static final skuTag:Ljava/lang/String; = "sk"

.field public static final sortingTag:Ljava/lang/String; = "sort"

.field public static final targetVersionTag:Ljava/lang/String; = "tv"

.field public static final weatherCity:Ljava/lang/String; = "/common-weather/rws/city"

.field public static final weatherCityCode:Ljava/lang/String; = "/common-weather/rws/citycodes"

.field public static final weatherLatitude:Ljava/lang/String; = "/common-weather/rws/point"


# instance fields
.field private mApiLevel:Ljava/lang/String;

.field private mCert:Ljava/lang/String;

.field private mCid:Ljava/lang/String;

.field private mConnectTimeout:I

.field private final mContext:Landroid/content/Context;

.field private mDeviceFlag:Ljava/lang/String;

.field private mHCid:Ljava/lang/String;

.field private mHtcAccoutn:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mKeyType:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mOWCert:Ljava/lang/String;

.field private mOWCid:Ljava/lang/String;

.field private mOWDeviceFlag:Ljava/lang/String;

.field private mOWHost:Ljava/lang/String;

.field private mOWKeyType:Ljava/lang/String;

.field private mOWSchema:Ljava/lang/String;

.field private mOWSku:Ljava/lang/String;

.field private final mPlatform:Ljava/lang/String;

.field private mRomVersion:Ljava/lang/String;

.field private mSkinVer:Ljava/lang/String;

.field private mSku:Ljava/lang/String;

.field private mSocketTimeout:I

.field private mUiSdk:Ljava/lang/String;

.field private mXmlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1048
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/http/XMLRequest;->Hexhars:[B

    .line 1113
    const/16 v0, 0x25

    sput-byte v0, Lcom/htc/util/http/XMLRequest;->ESCAPE_CHAR:B

    .line 1118
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/htc/util/http/XMLRequest;->WWW_FORM_URL:Ljava/util/BitSet;

    return-void

    .line 1048
    nop

    :array_0
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "htcAccount"

    .prologue
    const/16 v6, 0x1f40

    const/16 v7, 0x28

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 471
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    .line 416
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    .line 417
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    .line 418
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    .line 419
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mHCid:Ljava/lang/String;

    .line 420
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    .line 421
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    .line 422
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    .line 423
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    .line 424
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    .line 425
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    .line 426
    const-string v5, "2"

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mPlatform:Ljava/lang/String;

    .line 427
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    .line 428
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    .line 429
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    .line 430
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    .line 433
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    .line 434
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    .line 435
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    .line 436
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    .line 437
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWKeyType:Ljava/lang/String;

    .line 438
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    .line 439
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    .line 442
    iput v6, p0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    .line 443
    iput v6, p0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    .line 445
    iput-object v8, p0, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 472
    iput-object p1, p0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    .line 474
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 475
    .local v4, telMgr:Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_3

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    .line 478
    sget-object v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v6, "2.1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 480
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v5, v7, :cond_4

    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v5, :cond_4

    .line 481
    const-string v5, "211"

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    .line 493
    :cond_0
    :goto_0
    sget-object v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v6, "3.5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 495
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x7b

    if-ne v5, v6, :cond_1

    .line 497
    const-string v5, "-42"

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    .line 501
    :cond_1
    const-string v5, "ro.cid"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    .line 502
    const-string v5, "ro.build.version.incremental"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    .line 503
    const-string v5, "ro.build.version.sdk"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    .line 504
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    .line 505
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    .line 506
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    .line 507
    const-string v5, "ro.htc.common.version"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    .line 508
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    const-string v6, "."

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    .line 511
    invoke-static {p1}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    .line 514
    const-string v5, "ro.product.version"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, productVersion:Ljava/lang/String;
    const-string v5, "0"

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    .line 518
    if-eqz v3, :cond_2

    .line 520
    :try_start_0
    const-string v5, "//."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, networkOperator:Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_7

    .line 531
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    .line 532
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    .line 541
    :goto_2
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/HTCWORACert"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, certFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 544
    const-string v5, "1"

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    .line 583
    :goto_3
    const-string v5, "1"

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    .line 585
    if-eqz p2, :cond_3

    .line 586
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    .line 606
    .end local v0           #certFile:Ljava/io/File;
    .end local v2           #networkOperator:Ljava/lang/String;
    .end local v3           #productVersion:Ljava/lang/String;
    :cond_3
    return-void

    .line 482
    :cond_4
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v5, v7, :cond_5

    .line 484
    const-string v5, "210"

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    goto/16 :goto_0

    .line 485
    :cond_5
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x21

    if-ne v5, v6, :cond_6

    .line 487
    const-string v5, "213"

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    goto/16 :goto_0

    .line 488
    :cond_6
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x22

    if-ne v5, v6, :cond_0

    .line 490
    const-string v5, "212"

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    goto/16 :goto_0

    .line 523
    .restart local v3       #productVersion:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 525
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 536
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #networkOperator:Ljava/lang/String;
    :cond_7
    const-string v5, "000"

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    .line 537
    const-string v5, "00"

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    goto :goto_2

    .line 576
    .restart local v0       #certFile:Ljava/io/File;
    :cond_8
    const-string v5, "2"

    iput-object v5, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    goto :goto_3
.end method

.method public static IsNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 459
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 461
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 464
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 467
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method private addHeaders(Lorg/apache/http/HttpRequest;Ljava/util/Map;)V
    .locals 8
    .parameter "httpGet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p2, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 884
    .local v4, timestamp:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    .line 886
    .local v0, account:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    if-eqz v5, :cond_1

    if-eqz p2, :cond_0

    const-string v5, "de"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 887
    :cond_0
    const-string v5, "de"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_1
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    const-string v5, "sk"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 889
    :cond_2
    const-string v5, "sk"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    :cond_3
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    if-eqz v5, :cond_5

    if-eqz p2, :cond_4

    const-string v5, "ci"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 891
    :cond_4
    const-string v5, "ci"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_5
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mHCid:Ljava/lang/String;

    if-eqz v5, :cond_7

    if-eqz p2, :cond_6

    const-string v5, "hc"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    .line 893
    :cond_6
    const-string v5, "hc"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mHCid:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_7
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    if-eqz v5, :cond_9

    if-eqz p2, :cond_8

    const-string v5, "rv"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_9

    .line 895
    :cond_8
    const-string v5, "rv"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_9
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    if-eqz v5, :cond_b

    if-eqz p2, :cond_a

    const-string v5, "al"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_b

    .line 897
    :cond_a
    const-string v5, "al"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_b
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    if-eqz v5, :cond_d

    if-eqz p2, :cond_c

    const-string v5, "le"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_d

    .line 899
    :cond_c
    const-string v5, "le"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_d
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    if-eqz v5, :cond_e

    if-eqz p2, :cond_e

    const-string v5, "ii"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_e

    .line 903
    :cond_e
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    if-eqz v5, :cond_10

    if-eqz p2, :cond_f

    const-string v5, "mnc"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_10

    .line 904
    :cond_f
    const-string v5, "mnc"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_10
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    if-eqz v5, :cond_12

    if-eqz p2, :cond_11

    const-string v5, "mcc"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_12

    .line 906
    :cond_11
    const-string v5, "mcc"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_12
    const-string v5, "2"

    if-eqz v5, :cond_14

    if-eqz p2, :cond_13

    const-string v5, "pl"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_14

    .line 908
    :cond_13
    const-string v5, "pl"

    const-string v6, "2"

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_14
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    if-eqz v5, :cond_16

    if-eqz p2, :cond_15

    const-string v5, "ct"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_16

    .line 910
    :cond_15
    const-string v5, "ct"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :cond_16
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    if-eqz v5, :cond_18

    if-eqz p2, :cond_17

    const-string v5, "rk"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_18

    .line 912
    :cond_17
    const-string v5, "rk"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_18
    if-eqz p2, :cond_19

    const-string v5, "tv"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1a

    .line 914
    :cond_19
    const-string v5, "tv"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_1a
    if-eqz p2, :cond_1b

    const-string v5, "ht"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_23

    .line 916
    :cond_1b
    const-string v5, "ht"

    invoke-interface {p1, v5, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :goto_0
    if-eqz p2, :cond_1c

    const-string v5, "mya"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 927
    const-string v5, "mya"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #account:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 934
    .restart local v0       #account:Ljava/lang/String;
    :cond_1c
    if-eqz v0, :cond_1e

    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    if-eqz v5, :cond_1e

    if-eqz p2, :cond_1d

    const-string v5, "digest"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1e

    .line 936
    :cond_1d
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v0}, Lcom/htc/util/http/XMLRequest;->getAuthDigest(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, digest:Ljava/lang/String;
    if-eqz v1, :cond_24

    .line 940
    const-string v5, "digest"

    invoke-interface {p1, v5, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .end local v1           #digest:Ljava/lang/String;
    :cond_1e
    :goto_1
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    if-eqz v5, :cond_20

    if-eqz p2, :cond_1f

    const-string v5, "uisdk"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_20

    .line 950
    :cond_1f
    const-string v5, "uisdk"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :cond_20
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    if-eqz v5, :cond_22

    if-eqz p2, :cond_21

    const-string v5, "skn"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_22

    .line 955
    :cond_21
    const-string v5, "skn"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :cond_22
    if-eqz p2, :cond_25

    .line 971
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 972
    .local v3, keys:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v5, v3

    if-ge v2, v5, :cond_25

    .line 975
    aget-object v5, v3, v2

    check-cast v5, Ljava/lang/String;

    aget-object v6, v3, v2

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 918
    .end local v2           #i:I
    .end local v3           #keys:[Ljava/lang/Object;
    :cond_23
    const-string v5, "ht"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #timestamp:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #timestamp:Ljava/lang/String;
    goto/16 :goto_0

    .line 944
    .restart local v1       #digest:Ljava/lang/String;
    :cond_24
    const-string v5, "digest"

    const-string v6, ""

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 989
    .end local v1           #digest:Ljava/lang/String;
    :cond_25
    const-string v5, "ii"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 992
    const-string v5, "ii"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 994
    :cond_26
    const-string v5, "mya"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 997
    const-string v5, "mya"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 1042
    :cond_27
    return-void
.end method

.method private static final encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "value"

    .prologue
    const/16 v11, 0x10

    .line 1138
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/http/XMLRequest;->newBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1142
    .local v2, bytes:[B
    if-nez v2, :cond_0

    .line 1143
    const/4 v7, 0x0

    .line 1173
    .end local v2           #bytes:[B
    :goto_0
    return-object v7

    .line 1139
    :catch_0
    move-exception v3

    .line 1140
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v7, ""

    goto :goto_0

    .line 1145
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #bytes:[B
    :cond_0
    const/4 v9, 0x0

    aget-byte v10, v2, v9

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 1147
    sget-object v8, Lcom/htc/util/http/XMLRequest;->WWW_FORM_URL:Ljava/util/BitSet;

    .line 1148
    .local v8, urlsafe:Ljava/util/BitSet;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1149
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v9, v2

    if-ge v6, v9, :cond_4

    .line 1150
    aget-byte v0, v2, v6

    .line 1151
    .local v0, b:I
    if-gez v0, :cond_1

    .line 1152
    add-int/lit16 v0, v0, 0x100

    .line 1154
    :cond_1
    invoke-virtual {v8, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1155
    const/16 v9, 0x20

    if-ne v0, v9, :cond_2

    .line 1156
    const/16 v0, 0x2b

    .line 1158
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1149
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1160
    :cond_3
    sget-byte v9, Lcom/htc/util/http/XMLRequest;->ESCAPE_CHAR:B

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1161
    shr-int/lit8 v9, v0, 0x4

    and-int/lit8 v9, v9, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 1162
    .local v4, hex1:C
    and-int/lit8 v9, v0, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 1163
    .local v5, hex2:C
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1164
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 1169
    .end local v0           #b:I
    .end local v4           #hex1:C
    .end local v5           #hex2:C
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lcom/htc/util/http/XMLRequest;->newString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .local v7, result:Ljava/lang/String;
    goto :goto_0

    .line 1170
    .end local v7           #result:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1171
    .restart local v3       #ex:Ljava/io/UnsupportedEncodingException;
    const-string v7, ""

    goto :goto_0
.end method

.method public static getAuthDigest(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "currentTimeStamp"
    .parameter "imei"
    .parameter "myhtcAccount"

    .prologue
    .line 1130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1131
    .local v0, conbine:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1132
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/http/XMLRequest;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDigest(Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .parameter "myhtcAccount"
    .parameter "handsetTime"

    .prologue
    .line 1065
    const/4 v1, 0x0

    .line 1069
    .local v1, digest:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1070
    .local v4, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1072
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1073
    .local v2, digestA:Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 1074
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 1076
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/htc/util/http/XMLRequest;->toHexStr([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1083
    .end local v0           #bytes:[B
    .end local v2           #digestA:Ljava/security/MessageDigest;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :goto_0
    return-object v1

    .line 1078
    :catch_0
    move-exception v3

    .line 1081
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static newBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1176
    if-nez p0, :cond_0

    .line 1177
    const/4 v0, 0x0

    .line 1179
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static newString([B)Ljava/lang/String;
    .locals 2
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1183
    if-nez p0, :cond_0

    .line 1184
    const/4 v0, 0x0

    .line 1186
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static toHexStr([B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1093
    .local v1, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1095
    aget-byte v3, p0, v0

    and-int/lit16 v2, v3, 0xff

    .line 1096
    .local v2, v:I
    sget-object v3, Lcom/htc/util/http/XMLRequest;->Hexhars:[B

    shr-int/lit8 v4, v2, 0x4

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1097
    sget-object v3, Lcom/htc/util/http/XMLRequest;->Hexhars:[B

    and-int/lit8 v4, v2, 0xf

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1093
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1099
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public PrintMember()V
    .locals 3

    .prologue
    .line 1196
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mDeviceFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mSku="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mCid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mRomVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mApiLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mLocale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mImei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mUiSdk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mMcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mCert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mKeyType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mHtcAccoutn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mSkinVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    return-void
.end method

.method public getXMLTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I
    .locals 19
    .parameter "schema"
    .parameter "host"
    .parameter "service"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 651
    .local p4, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, request:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 652
    :cond_0
    const/16 v15, 0x190

    .line 750
    :cond_1
    :goto_0
    return v15

    .line 654
    :cond_2
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 655
    .local v7, httpParameters:Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 656
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 657
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 659
    .local v5, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/16 v16, 0x0

    .line 678
    .local v16, uriBuilder:Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    if-eqz p5, :cond_4

    .line 682
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v9

    .line 683
    .local v9, keys:[Ljava/lang/Object;
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 684
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_4

    .line 686
    if-nez v8, :cond_3

    .line 687
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v17, v9, v8

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 689
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v17, v9, v8

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 695
    .end local v8           #i:I
    .end local v9           #keys:[Ljava/lang/Object;
    :cond_4
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 698
    .local v6, httpGet:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v6, v1}, Lcom/htc/util/http/XMLRequest;->addHeaders(Lorg/apache/http/HttpRequest;Ljava/util/Map;)V

    .line 700
    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 702
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 704
    .local v15, status:I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v15, v0, :cond_6

    .line 706
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 707
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_5

    .line 709
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 710
    .local v11, ostream:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v4, v11}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 711
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 737
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #ostream:Ljava/io/ByteArrayOutputStream;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_0
    move-exception v3

    .line 738
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 739
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 740
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 715
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_5
    :try_start_1
    const-string v17, "Empty entity"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 741
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_1
    move-exception v3

    .line 742
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 743
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 744
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 721
    .end local v3           #e:Ljava/io/IOException;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_6
    :try_start_2
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 722
    .local v2, content:Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 724
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .local v14, sb:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 727
    .local v12, reader:Ljava/io/BufferedReader;
    :goto_3
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, line:Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 729
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 746
    .end local v2           #content:Ljava/io/InputStream;
    .end local v10           #line:Ljava/lang/String;
    .end local v12           #reader:Ljava/io/BufferedReader;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .end local v15           #status:I
    :catch_2
    move-exception v3

    .line 748
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 749
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 750
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 731
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #content:Ljava/io/InputStream;
    .restart local v10       #line:Ljava/lang/String;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    .restart local v15       #status:I
    :cond_7
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 732
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method public getXmlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    return-object v0
.end method

.method public postXMLTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)I
    .locals 19
    .parameter "schema"
    .parameter "host"
    .parameter "service"
    .parameter
    .parameter
    .parameter "post"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 783
    .local p4, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, request:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p6, :cond_2

    .line 784
    :cond_0
    const/16 v15, 0x190

    .line 877
    :cond_1
    :goto_0
    return v15

    .line 786
    :cond_2
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 787
    .local v6, httpParameters:Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 788
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 789
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 791
    .local v5, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/16 v16, 0x0

    .line 810
    .local v16, uriBuilder:Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 814
    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    if-eqz p5, :cond_4

    .line 816
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v9

    .line 817
    .local v9, keys:[Ljava/lang/Object;
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 818
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_4

    .line 820
    if-nez v8, :cond_3

    .line 821
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v17, v9, v8

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 823
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v17, v9, v8

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 827
    .end local v8           #i:I
    .end local v9           #keys:[Ljava/lang/Object;
    :cond_4
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 830
    .local v7, httpPost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v17, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 831
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v7, v1}, Lcom/htc/util/http/XMLRequest;->addHeaders(Lorg/apache/http/HttpRequest;Ljava/util/Map;)V

    .line 833
    invoke-virtual {v5, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 835
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 837
    .local v15, status:I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v15, v0, :cond_6

    .line 839
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 840
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_5

    .line 842
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 843
    .local v11, ostream:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v4, v11}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 844
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 870
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #ostream:Ljava/io/ByteArrayOutputStream;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_0
    move-exception v3

    .line 871
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 872
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 873
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 848
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_5
    :try_start_1
    const-string v17, "Empty entity"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 874
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_1
    move-exception v3

    .line 875
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 876
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 877
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 854
    .end local v3           #e:Ljava/io/IOException;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_6
    :try_start_2
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 855
    .local v2, content:Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 857
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    .local v14, sb:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 860
    .local v12, reader:Ljava/io/BufferedReader;
    :goto_3
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, line:Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 862
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 864
    :cond_7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 865
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 619
    iput p1, p0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    .line 620
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 633
    iput p1, p0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    .line 634
    return-void
.end method
