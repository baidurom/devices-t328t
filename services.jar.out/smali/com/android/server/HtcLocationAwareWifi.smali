.class final Lcom/android/server/HtcLocationAwareWifi;
.super Ljava/lang/Object;
.source "HtcLocationAwareWifi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;
    }
.end annotation


# static fields
.field protected static final ACTION_LOCATION_AWARE_WIFI_STATE_CHANGE:Ljava/lang/String; = "com.android.HtcLocationAwareWifi.PSAVER_LOCATION_AWARE_WIFI_STATE_CHANGE"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.android.HtcLocationAwareWifi."

.field protected static final MAX_CELL_RECORDS:I = 0xa


# instance fields
.field private final ACTION_CELL_NOTIFICATION:Ljava/lang/String;

.field private final ACTION_FEATURE_TEST:Ljava/lang/String;

.field private final DEBUG_ON:Z

.field private final DEFAULT_CELL_NEIGHBOR_PILOT:I

.field private final DEFAULT_CELL_RECHECK_DELAY:I

.field private final DEFAULT_LOCATION_AWARE_WIFI_STATE:I

.field private final DEFAULT_NUM_CELL_RECORDS:I

.field private final DEFAULT_WIFI_TURN_ON_DELAY:I

.field private final DEFAULT_WIFI_TURN_ON_MAX_COUNT:I

.field private final DEFAULT_WIFI_TURN_ON_TIMEOUT_DELAY:I

.field private final MASTER_ENABLE:Z

.field private final MAX_POST_COUNT:I

.field private final SYSKEY_CELL_NEIGHBOR_PILOT:Ljava/lang/String;

.field private final SYSKEY_CELL_RECHECK_DELAY:Ljava/lang/String;

.field private final SYSKEY_NUM_CELL_RECORDS:Ljava/lang/String;

.field private final SYSKEY_PREFIX:Ljava/lang/String;

.field private final SYSKEY_WIFI_TURN_ON_DELAY:Ljava/lang/String;

.field private final SYSKEY_WIFI_TURN_ON_MAX_COUNT:Ljava/lang/String;

.field private final SYSKEY_WIFI_TURN_ON_TIMEOUT_DELAY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final THREAD_TIMEOUT:I

.field private mCellNeighborPilot:I

.field private mCellRecheckDelay:I

.field private mCellScanTurnedOn:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentWifiTurnOnCount:I

.field private mEnableMechanism:Z

.field private mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mModemHandler:Landroid/os/Handler;

.field private mModemThread:Landroid/os/HandlerThread;

.field private mNumCellRecords:I

.field private mPostCount:I

.field private final mRetryWifiConnectionTask:Ljava/lang/Runnable;

.field private mTimerHandler:Landroid/os/Handler;

.field private mTimerThread:Landroid/os/HandlerThread;

.field private final mWifiConnectionTimeoutTask:Ljava/lang/Runnable;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTimeout:Z

.field private mWifiTurnOnDelay:I

.field private mWifiTurnOnMaxCount:I

.field private mWifiTurnOnTimeoutDelay:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/16 v11, 0xa

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v10, "HtcLocationAwareWifi"

    iput-object v10, p0, Lcom/android/server/HtcLocationAwareWifi;->TAG:Ljava/lang/String;

    .line 21
    iput-boolean v9, p0, Lcom/android/server/HtcLocationAwareWifi;->DEBUG_ON:Z

    .line 24
    iput-boolean v9, p0, Lcom/android/server/HtcLocationAwareWifi;->MASTER_ENABLE:Z

    .line 28
    const/4 v10, 0x5

    iput v10, p0, Lcom/android/server/HtcLocationAwareWifi;->MAX_POST_COUNT:I

    .line 29
    const/16 v10, 0x1388

    iput v10, p0, Lcom/android/server/HtcLocationAwareWifi;->THREAD_TIMEOUT:I

    .line 34
    const-string v10, "com.android.HtcLocationAwareWifi.FEATURE_TEST"

    iput-object v10, p0, Lcom/android/server/HtcLocationAwareWifi;->ACTION_FEATURE_TEST:Ljava/lang/String;

    .line 35
    const-string v10, "com.android.phone.AUTO_WIFI_ON_LOC"

    iput-object v10, p0, Lcom/android/server/HtcLocationAwareWifi;->ACTION_CELL_NOTIFICATION:Ljava/lang/String;

    .line 38
    iput v8, p0, Lcom/android/server/HtcLocationAwareWifi;->DEFAULT_LOCATION_AWARE_WIFI_STATE:I

    .line 40
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/server/HtcLocationAwareWifi;->DEFAULT_WIFI_TURN_ON_MAX_COUNT:I

    .line 41
    const v10, 0xea60

    iput v10, p0, Lcom/android/server/HtcLocationAwareWifi;->DEFAULT_WIFI_TURN_ON_DELAY:I

    .line 42
    const/16 v10, 0x2710

    iput v10, p0, Lcom/android/server/HtcLocationAwareWifi;->DEFAULT_WIFI_TURN_ON_TIMEOUT_DELAY:I

    .line 43
    iput v8, p0, Lcom/android/server/HtcLocationAwareWifi;->DEFAULT_CELL_RECHECK_DELAY:I

    .line 44
    iput v11, p0, Lcom/android/server/HtcLocationAwareWifi;->DEFAULT_CELL_NEIGHBOR_PILOT:I

    .line 45
    iput v11, p0, Lcom/android/server/HtcLocationAwareWifi;->DEFAULT_NUM_CELL_RECORDS:I

    .line 48
    const-string v10, "sys.auto.wifi."

    iput-object v10, p0, Lcom/android/server/HtcLocationAwareWifi;->SYSKEY_PREFIX:Ljava/lang/String;

    .line 49
    const-string v10, "sys.auto.wifi.count"

    iput-object v10, p0, Lcom/android/server/HtcLocationAwareWifi;->SYSKEY_WIFI_TURN_ON_MAX_COUNT:Ljava/lang/String;

    .line 50
    const-string v10, "sys.auto.wifi.delay"

    iput-object v10, p0, Lcom/android/server/HtcLocationAwareWifi;->SYSKEY_WIFI_TURN_ON_DELAY:Ljava/lang/String;

    .line 51
    const-string v10, "sys.auto.wifi.timeout.delay"

    iput-object v10, p0, Lcom/android/server/HtcLocationAwareWifi;->SYSKEY_WIFI_TURN_ON_TIMEOUT_DELAY:Ljava/lang/String;

    .line 52
    const-string v10, "sys.auto.wifi.recheck.delay"

    iput-object v10, p0, Lcom/android/server/HtcLocationAwareWifi;->SYSKEY_CELL_RECHECK_DELAY:Ljava/lang/String;

    .line 53
    const-string v10, "sys.auto.wifi.num.nei.pilot"

    iput-object v10, p0, Lcom/android/server/HtcLocationAwareWifi;->SYSKEY_CELL_NEIGHBOR_PILOT:Ljava/lang/String;

    .line 54
    const-string v10, "sys.auto.wifi.num.cell.records"

    iput-object v10, p0, Lcom/android/server/HtcLocationAwareWifi;->SYSKEY_NUM_CELL_RECORDS:Ljava/lang/String;

    .line 56
    iput-boolean v8, p0, Lcom/android/server/HtcLocationAwareWifi;->mEnableMechanism:Z

    .line 76
    iput-boolean v9, p0, Lcom/android/server/HtcLocationAwareWifi;->mCellScanTurnedOn:Z

    .line 77
    iput-boolean v9, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTimeout:Z

    .line 78
    iput v9, p0, Lcom/android/server/HtcLocationAwareWifi;->mCurrentWifiTurnOnCount:I

    .line 80
    iput v9, p0, Lcom/android/server/HtcLocationAwareWifi;->mPostCount:I

    .line 270
    new-instance v10, Lcom/android/server/HtcLocationAwareWifi$1;

    invoke-direct {v10, p0}, Lcom/android/server/HtcLocationAwareWifi$1;-><init>(Lcom/android/server/HtcLocationAwareWifi;)V

    iput-object v10, p0, Lcom/android/server/HtcLocationAwareWifi;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 415
    new-instance v10, Lcom/android/server/HtcLocationAwareWifi$2;

    invoke-direct {v10, p0}, Lcom/android/server/HtcLocationAwareWifi$2;-><init>(Lcom/android/server/HtcLocationAwareWifi;)V

    iput-object v10, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiConnectionTimeoutTask:Ljava/lang/Runnable;

    .line 428
    new-instance v10, Lcom/android/server/HtcLocationAwareWifi$3;

    invoke-direct {v10, p0}, Lcom/android/server/HtcLocationAwareWifi$3;-><init>(Lcom/android/server/HtcLocationAwareWifi;)V

    iput-object v10, p0, Lcom/android/server/HtcLocationAwareWifi;->mRetryWifiConnectionTask:Ljava/lang/Runnable;

    .line 84
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x26

    if-ne v10, v11, :cond_1

    move v0, v8

    .line 85
    .local v0, IS_ENDEAVOR_U:Z
    :goto_0
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x24

    if-ne v10, v11, :cond_2

    move v1, v8

    .line 86
    .local v1, IS_EVITA:Z
    :goto_1
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_3

    move v2, v8

    .line 87
    .local v2, IS_FIREBALL:Z
    :goto_2
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x49

    if-ne v10, v11, :cond_4

    move v3, v8

    .line 88
    .local v3, IS_JEWEL:Z
    :goto_3
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0xe2

    if-ne v10, v11, :cond_5

    move v4, v8

    .line 89
    .local v4, IS_PRIMO_C:Z
    :goto_4
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0xdf

    if-ne v10, v11, :cond_6

    move v5, v8

    .line 90
    .local v5, IS_PRIMO_U:Z
    :goto_5
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0xe1

    if-ne v10, v11, :cond_7

    move v7, v8

    .line 92
    .local v7, IS_VILLE:Z
    :goto_6
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-eqz v7, :cond_8

    :cond_0
    move v6, v8

    .line 124
    .local v6, IS_SUPPORTED:Z
    :goto_7
    return-void

    .end local v0           #IS_ENDEAVOR_U:Z
    .end local v1           #IS_EVITA:Z
    .end local v2           #IS_FIREBALL:Z
    .end local v3           #IS_JEWEL:Z
    .end local v4           #IS_PRIMO_C:Z
    .end local v5           #IS_PRIMO_U:Z
    .end local v6           #IS_SUPPORTED:Z
    .end local v7           #IS_VILLE:Z
    :cond_1
    move v0, v9

    .line 84
    goto :goto_0

    .restart local v0       #IS_ENDEAVOR_U:Z
    :cond_2
    move v1, v9

    .line 85
    goto :goto_1

    .restart local v1       #IS_EVITA:Z
    :cond_3
    move v2, v9

    .line 86
    goto :goto_2

    .restart local v2       #IS_FIREBALL:Z
    :cond_4
    move v3, v9

    .line 87
    goto :goto_3

    .restart local v3       #IS_JEWEL:Z
    :cond_5
    move v4, v9

    .line 88
    goto :goto_4

    .restart local v4       #IS_PRIMO_C:Z
    :cond_6
    move v5, v9

    .line 89
    goto :goto_5

    .restart local v5       #IS_PRIMO_U:Z
    :cond_7
    move v7, v9

    .line 90
    goto :goto_6

    .restart local v7       #IS_VILLE:Z
    :cond_8
    move v6, v9

    .line 92
    goto :goto_7
.end method

.method static synthetic access$000(Lcom/android/server/HtcLocationAwareWifi;)Lcom/android/server/HtcCellInfoManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/HtcLocationAwareWifi;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mCellNeighborPilot:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/HtcLocationAwareWifi;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mNumCellRecords:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/HtcLocationAwareWifi;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mCellRecheckDelay:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/HtcLocationAwareWifi;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTimeout:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/HtcLocationAwareWifi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/server/HtcLocationAwareWifi;->wifiNotConnected()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/HtcLocationAwareWifi;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mModemHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/HtcLocationAwareWifi;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mPostCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/server/HtcLocationAwareWifi;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mPostCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mPostCount:I

    return v0
.end method

.method static synthetic access$310(Lcom/android/server/HtcLocationAwareWifi;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mPostCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mPostCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/HtcLocationAwareWifi;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/server/HtcLocationAwareWifi;->enableMechanism(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/HtcLocationAwareWifi;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/HtcLocationAwareWifi;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mEnableMechanism:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/HtcLocationAwareWifi;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/server/HtcLocationAwareWifi;->mEnableMechanism:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/HtcLocationAwareWifi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/server/HtcLocationAwareWifi;->wifiConnected()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/HtcLocationAwareWifi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/server/HtcLocationAwareWifi;->mainLocationAwareWifiLogic()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/HtcLocationAwareWifi;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/server/HtcLocationAwareWifi;->turnOnWifi(Z)V

    return-void
.end method

.method private enableMechanism(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 260
    if-eqz p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;

    invoke-virtual {v0}, Lcom/android/server/HtcCellInfoManager;->readListFile()V

    .line 262
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/HtcLocationAwareWifi;->mCellNeighborPilot:I

    iget v3, p0, Lcom/android/server/HtcLocationAwareWifi;->mNumCellRecords:I

    iget v4, p0, Lcom/android/server/HtcLocationAwareWifi;->mCellRecheckDelay:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/HtcCellInfoManager;->turnOnCellScan(ZIII)Z

    .line 263
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;

    invoke-virtual {v0}, Lcom/android/server/HtcCellInfoManager;->dumpCellInfoList()V

    .line 264
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;

    invoke-virtual {v0}, Lcom/android/server/HtcCellInfoManager;->pushCellInfoListToModem()V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;

    invoke-virtual {v0}, Lcom/android/server/HtcCellInfoManager;->clearModemList()Z

    goto :goto_0
.end method

.method private mainLocationAwareWifiLogic()V
    .locals 3

    .prologue
    .line 164
    iget-boolean v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mEnableMechanism:Z

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;

    invoke-virtual {v1}, Lcom/android/server/HtcCellInfoManager;->isCurrentCellLocationKnown()Z

    move-result v0

    .line 173
    .local v0, inKnownCell:Z
    if-eqz v0, :cond_0

    .line 174
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/HtcLocationAwareWifi;->turnOnWifi(Z)V

    .line 182
    .end local v0           #inKnownCell:Z
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mTimerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiConnectionTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mTimerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HtcLocationAwareWifi;->mRetryWifiConnectionTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private readConfigurableValues()V
    .locals 9

    .prologue
    const v2, 0xea60

    const/16 v3, 0x2710

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/16 v5, 0xa

    .line 128
    :try_start_0
    const-string v6, "sys.auto.wifi.count"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnMaxCount:I

    .line 129
    const-string v6, "sys.auto.wifi.delay"

    const v7, 0xea60

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnDelay:I

    .line 130
    const-string v6, "sys.auto.wifi.timeout.delay"

    const/16 v7, 0x2710

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnTimeoutDelay:I

    .line 131
    const-string v6, "sys.auto.wifi.recheck.delay"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/HtcLocationAwareWifi;->mCellRecheckDelay:I

    .line 132
    const-string v6, "sys.auto.wifi.num.nei.pilot"

    const/16 v7, 0xa

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/HtcLocationAwareWifi;->mCellNeighborPilot:I

    .line 133
    const-string v6, "sys.auto.wifi.num.cell.records"

    const/16 v7, 0xa

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/HtcLocationAwareWifi;->mNumCellRecords:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    iget v6, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnMaxCount:I

    if-gtz v6, :cond_0

    :goto_1
    iput v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnMaxCount:I

    .line 139
    iget v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnDelay:I

    if-gtz v1, :cond_1

    move v1, v2

    :goto_2
    iput v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnDelay:I

    .line 140
    iget v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnTimeoutDelay:I

    if-gtz v1, :cond_2

    move v1, v3

    :goto_3
    iput v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnTimeoutDelay:I

    .line 141
    iget v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mCellRecheckDelay:I

    if-gtz v1, :cond_3

    move v1, v4

    :goto_4
    iput v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mCellRecheckDelay:I

    .line 142
    iget v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mCellNeighborPilot:I

    if-gtz v1, :cond_4

    move v1, v5

    :goto_5
    iput v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mCellNeighborPilot:I

    .line 144
    iget v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mNumCellRecords:I

    if-gtz v1, :cond_5

    move v1, v5

    :goto_6
    iput v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mNumCellRecords:I

    .line 145
    iget v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mNumCellRecords:I

    if-le v1, v5, :cond_6

    :goto_7
    iput v5, p0, Lcom/android/server/HtcLocationAwareWifi;->mNumCellRecords:I

    .line 156
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "HtcLocationAwareWifi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readConfigurableValues: Unable to get SystemProperties. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnMaxCount:I

    goto :goto_1

    .line 139
    :cond_1
    iget v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnDelay:I

    goto :goto_2

    .line 140
    :cond_2
    iget v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnTimeoutDelay:I

    goto :goto_3

    .line 141
    :cond_3
    iget v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mCellRecheckDelay:I

    goto :goto_4

    .line 142
    :cond_4
    iget v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mCellNeighborPilot:I

    goto :goto_5

    .line 144
    :cond_5
    iget v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mNumCellRecords:I

    goto :goto_6

    .line 145
    :cond_6
    iget v5, p0, Lcom/android/server/HtcLocationAwareWifi;->mNumCellRecords:I

    goto :goto_7
.end method

.method private turnOnWifi(Z)V
    .locals 5
    .parameter "turnOn"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 187
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 188
    const-string v1, "HtcLocationAwareWifi"

    const-string v2, "turnOnWifi: Cannot get Wifi service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 195
    const-string v1, "HtcLocationAwareWifi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOnWifi: wifiMgr.setWifiEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") set fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTimeout:Z

    .line 206
    if-eqz p1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mTimerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiConnectionTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mTimerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiConnectionTimeoutTask:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnTimeoutDelay:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "HtcLocationAwareWifi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOnWifi: turnOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private wifiConnected()V
    .locals 2

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/server/HtcLocationAwareWifi;->readConfigurableValues()V

    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/HtcLocationAwareWifi;->enableMechanism(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;

    invoke-virtual {v0}, Lcom/android/server/HtcCellInfoManager;->saveCurrentCellInfo()V

    .line 219
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;

    invoke-virtual {v0}, Lcom/android/server/HtcCellInfoManager;->pushCellInfoListToModem()V

    .line 220
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;

    invoke-virtual {v0}, Lcom/android/server/HtcCellInfoManager;->dumpCellInfoList()V

    .line 222
    iget-boolean v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mEnableMechanism:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTimeout:Z

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiConnectionTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    :cond_0
    return-void
.end method

.method private wifiNotConnected()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-boolean v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mEnableMechanism:Z

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/HtcLocationAwareWifi;->turnOnWifi(Z)V

    .line 241
    iget v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mCurrentWifiTurnOnCount:I

    iget v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnMaxCount:I

    if-ge v0, v1, :cond_1

    .line 246
    iget v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mCurrentWifiTurnOnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mCurrentWifiTurnOnCount:I

    .line 247
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mRetryWifiConnectionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/HtcLocationAwareWifi;->mRetryWifiConnectionTask:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/HtcLocationAwareWifi;->mWifiTurnOnDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 254
    :cond_1
    iput v2, p0, Lcom/android/server/HtcLocationAwareWifi;->mCurrentWifiTurnOnCount:I

    goto :goto_0
.end method
