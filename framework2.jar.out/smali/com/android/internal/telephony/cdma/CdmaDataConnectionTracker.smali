.class public final Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "CdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;,
        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;,
        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;,
        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;
    }
.end annotation


# static fields
.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field private static final DATA_CONNECTION_POOL_SIZE:I = 0x1

.field private static final INTENT_DATA_STALL_ALARM:Ljava/lang/String; = "com.android.internal.telephony.cdma-data-stall"

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.cdma-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "type"

.field static final PREFERAPN_URI:Landroid/net/Uri;

.field static final PREFERRED_DUN_URI:Landroid/net/Uri;

.field private static final TIME_DELAYED_TO_RESTART_RADIO:I

.field private static final mDefaultApnId:I

.field private static final mDefaultApnTypes:[Ljava/lang/String;

.field private static final mSupportedApnTypes:[Ljava/lang/String;


# instance fields
.field private ALLOW_MMS_WHEN_MOBILE_SETTING_IS_OFF:Z

.field private ALLOW_SUPL_WHEN_MOBILE_SETTING_IS_OFF:Z

.field private FirstInitRecover:Z

.field private HTC_CUSTOMIZATION_ALLOW_ADMIN_IN_ROAMING:Z

.field IgnoreRUIMCardReadyInTestVersion:Z

.field protected final LOG_TAG:Ljava/lang/String;

.field private apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

.field private canSetPreferApn:Z

.field private canSetPreferDunApn:Z

.field private mApnObserver:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

.field private mEriIndicator:I

.field mFailNextConnect:Z

.field private mGlobalDataRoaming:Z

.field private mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field private mHtcCdmaDataLinkError:Z

.field private mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

.field protected mHtcRadioAvaliable:Z

.field private mHtcReportedActiveApns:[Z

.field private mHtcRequestedNewApn:Ljava/lang/String;

.field private mIsRuimCardUsed:Z

.field private mIsScreenOn:Z

.field private mPdpResetCount:I

.field private mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

.field private mPendingRestartRadio:Z

.field private mPollNetStat:Ljava/lang/Runnable;

.field private mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

.field private mReasonInPendingIntent:Ljava/lang/String;

.field private mRecoveryAction:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

.field private mRemoteConnection:Landroid/content/ServiceConnection;

.field private mRemoteService:Lcom/htc/cw/ICWService;

.field private mReregisterOnReconnectFailure:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

.field private pdpLimitSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 442
    const-string v0, "ro.cdma.timetoradiorestart"

    const v1, 0xea60

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    .line 472
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v3

    const-string v1, "mms"

    aput-object v1, v0, v4

    const-string v1, "dun"

    aput-object v1, v0, v5

    const-string v1, "netshare"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "supl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fota"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "admin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hipri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cmail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "otasp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .line 492
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v3

    const-string v1, "mms"

    aput-object v1, v0, v4

    const-string v1, "hipri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDefaultApnTypes:[Ljava/lang/String;

    .line 503
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    .line 504
    const-string v0, "content://telephony/carriers/preferdun"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERRED_DUN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 9
    .parameter "p"

    .prologue
    const v8, 0x42003

    const/16 v7, 0xe0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 549
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 120
    const-string v2, "CDMA"

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 123
    const-string v2, "persist.radio.ignoreRuimReady"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    .line 125
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    .line 128
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPdpResetCount:I

    .line 132
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;->REREGISTER:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    .line 151
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 406
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsScreenOn:Z

    .line 409
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mFailNextConnect:Z

    .line 412
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->FirstInitRecover:Z

    .line 433
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v2, v5, :cond_5

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->ALLOW_MMS_WHEN_MOBILE_SETTING_IS_OFF:Z

    .line 436
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->ALLOW_SUPL_WHEN_MOBILE_SETTING_IS_OFF:Z

    .line 439
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 441
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 468
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    .line 469
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    .line 500
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    .line 501
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    .line 502
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    .line 508
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    .line 513
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

    .line 877
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-ne v2, v5, :cond_0

    move v4, v3

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HTC_CUSTOMIZATION_ALLOW_ADMIN_IN_ROAMING:Z

    .line 1671
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 4988
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteConnection:Landroid/content/ServiceConnection;

    .line 550
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 552
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v4, 0x42001

    invoke-interface {v2, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 553
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v4, 0x42006

    invoke-interface {v2, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 555
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v7, :cond_6

    .line 557
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v4, 0x4202d

    invoke-interface {v2, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 564
    :goto_1
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v4, 0x42015

    invoke-interface {v2, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 565
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v4, 0x42004

    invoke-interface {v2, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 566
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v4, 0x42008

    invoke-virtual {v2, p0, v4, v6}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 567
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v4, 0x42007

    invoke-virtual {v2, p0, v4, v6}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 569
    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    .line 570
    new-instance v2, Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v2, p0, v4, v6, v5}, Lcom/android/internal/telephony/DataServiceStateTracker;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    .line 571
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v2, p0, v8, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 572
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const v4, 0x42014

    invoke-virtual {v2, p0, v4, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 573
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const v4, 0x4200b

    invoke-virtual {v2, p0, v4, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 574
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const v4, 0x4200c

    invoke-virtual {v2, p0, v4, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 576
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const v4, 0x4202e

    invoke-virtual {v2, p0, v4, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 588
    :goto_2
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v4, 0x42019

    invoke-interface {v2, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 590
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v4, 0x42023

    invoke-interface {v2, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 594
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 595
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v4, 0x42027

    invoke-interface {v2, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 599
    :cond_2
    iput-object p0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 602
    new-instance v2, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    .line 606
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllDataConnectionList()V

    .line 607
    const/16 v2, 0x10

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcReportedActiveApns:[Z

    .line 612
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v7, :cond_3

    .line 614
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isRuimCardSupported()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    .line 618
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_8

    .line 620
    const-string v2, "RUIM CARD Project"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 621
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

    .line 622
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 624
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 625
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->initApnContextsAndDataConnection()V

    .line 627
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    .line 628
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    .line 636
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 638
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.cw.CWService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 639
    .local v1, ret:Z
    if-nez v1, :cond_4

    .line 640
    const-string v2, "CDMA"

    const-string v3, "[HTCCW]fail to bind to CW service for SIP operation"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v1           #ret:Z
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastMessenger()V

    .line 649
    return-void

    :cond_5
    move v2, v4

    .line 433
    goto/16 :goto_0

    .line 561
    :cond_6
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const v4, 0x42002

    invoke-virtual {v2, p0, v4, v6}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 581
    :cond_7
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v2, p0, v8, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 582
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v4, 0x42014

    invoke-virtual {v2, p0, v4, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 583
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v4, 0x4200b

    invoke-virtual {v2, p0, v4, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 584
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v4, 0x4200c

    invoke-virtual {v2, p0, v4, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 631
    :cond_8
    const-string v2, "None RUIM Card Project"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "CDMA"

    const-string v3, "[HTCCW]no permission to bind CW service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private HtcCleanupDC(Lcom/android/internal/telephony/DataConnectionAc;Lcom/android/internal/telephony/ApnContext;)V
    .locals 11
    .parameter "dcac"
    .parameter "pendingAC"

    .prologue
    const/4 v10, 0x0

    .line 324
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 325
    .local v1, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-nez v1, :cond_0

    .line 326
    const-string v8, "HtcCleanupDC WARNING: got dcac\'s apn is null"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v8, v1, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 330
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HtcCleanupDC WARNING: got invalid types[0]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from dcac\'s apn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_1
    iget-object v2, v1, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v7, v2, v3

    .line 340
    .local v7, type:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnContext;

    .line 341
    .local v6, tmpac:Lcom/android/internal/telephony/ApnContext;
    if-nez v6, :cond_3

    .line 342
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HtcCleanupDC WARNING: got null ac from dcac\'s types[], type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 339
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 345
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v8

    if-ne v8, p1, :cond_2

    .line 346
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 349
    .end local v6           #tmpac:Lcom/android/internal/telephony/ApnContext;
    .end local v7           #type:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 352
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iput-object p2, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    .line 354
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->dumpSwitchApnRecord()V

    .line 356
    const-string v8, "apnSwitched"

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 358
    iget-object v8, p1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->resetRefCount()V

    .line 359
    const v8, 0x4200f

    invoke-virtual {p0, v8, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 361
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v8

    if-nez v8, :cond_5

    .line 362
    const-string v8, "!!! ac.dc is null. It should not happen"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private HtcPdpLimitRule(ZZLcom/android/internal/telephony/ApnContext;)Z
    .locals 3
    .parameter "cleanup"
    .parameter "setup"
    .parameter "ac"

    .prologue
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcPdpLimitRule("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDCs.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, goSwitching:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dumpDCApn()V

    .line 264
    if-eqz p2, :cond_3

    .line 265
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-lt v1, v2, :cond_2

    .line 266
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->ifDCCanHandle(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->ifApnDupWithExisted(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    const/4 v0, 0x1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_3
    if-eqz p1, :cond_0

    goto :goto_0
.end method

.method private HtcSwitchApn(ZZLcom/android/internal/telephony/ApnContext;)V
    .locals 9
    .parameter "cleanup"
    .parameter "setup"
    .parameter "ac"

    .prologue
    const/4 v8, 0x1

    .line 372
    const-string v5, "*** HtcSwitchApn"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 373
    if-eqz p2, :cond_5

    .line 374
    const-wide/16 v3, -0x1

    .line 375
    .local v3, latestTime:J
    const/4 v2, 0x0

    .line 376
    .local v2, latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 377
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getCreateTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-ltz v5, :cond_0

    .line 378
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-eq v5, v8, :cond_1

    iget-object v6, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v7, "default"

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v5}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v5

    if-eq v6, v5, :cond_1

    .line 380
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getCreateTime()J

    move-result-wide v3

    .line 381
    move-object v2, v0

    goto :goto_0

    .line 382
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-ne v5, v8, :cond_0

    .line 383
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getCreateTime()J

    move-result-wide v3

    .line 384
    move-object v2, v0

    goto :goto_0

    .line 389
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    if-nez v2, :cond_4

    .line 390
    const-string v5, "HtcSwitchApn WARNING: can not find any DCAC"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 398
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #latestTime:J
    :cond_3
    :goto_1
    return-void

    .line 393
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    .restart local v3       #latestTime:J
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switch this DC : dc.mId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dc.cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dc=<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 395
    invoke-direct {p0, v2, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcCleanupDC(Lcom/android/internal/telephony/DataConnectionAc;Lcom/android/internal/telephony/ApnContext;)V

    goto :goto_1

    .line 396
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #latestTime:J
    :cond_5
    if-eqz p1, :cond_3

    goto :goto_1
.end method

.method private HtcTryPendingEnabled(Lcom/android/internal/telephony/ApnContext;)V
    .locals 5
    .parameter "curAc"

    .prologue
    .line 4182
    const/4 v2, 0x0

    .line 4183
    .local v2, pendingEnabled:Lcom/android/internal/telephony/ApnContext;
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4184
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    if-nez v3, :cond_0

    if-eq v0, p1, :cond_0

    .line 4186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HtcTryPendingEnabled: found enabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " have no dc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4187
    move-object v2, v0

    .line 4191
    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    if-eqz v2, :cond_2

    .line 4192
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    .line 4193
    :cond_2
    return-void
.end method

.method private HtcUpdateConnectedProp()V
    .locals 2

    .prologue
    .line 4738
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4739
    const-string v0, "set net.gprs.data.connected 1"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4740
    const-string v0, "net.gprs.data.connected"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4746
    :goto_0
    return-void

    .line 4742
    :cond_0
    const-string v0, "set net.gprs.data.connected 0"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4743
    const-string v0, "net.gprs.data.connected"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private HtcisAnyTypeEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 3420
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v4, :cond_2

    .line 3421
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3422
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3434
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v3

    .line 3427
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0x10

    if-ge v1, v4, :cond_3

    .line 3428
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3427
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3434
    .end local v1           #i:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private HtcisDataAllowed(ZZZZ)Z
    .locals 8
    .parameter "alwaysAllowProfile"
    .parameter "alwaysAllowDataRoam"
    .parameter "checkDataRoamGuard"
    .parameter "checkDefaultOnly"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 978
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataRoamingState()Z

    move-result v4

    .line 996
    .local v4, roaming:Z
    const/4 v1, 0x1

    .line 997
    .local v1, allowData:Z
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0xd

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1004
    if-nez p2, :cond_0

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_0
    if-nez p1, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->profileAllowDataConnection()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_1
    if-eqz p3, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedByDataRoamGuard()Z

    move-result v7

    if-nez v7, :cond_b

    :cond_2
    move v1, v5

    .line 1042
    :goto_0
    if-eqz v1, :cond_4

    .line 1044
    const/4 v0, 0x0

    .line 1045
    .local v0, allowBySettingOrWhitelist:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v7, 0x10

    if-ge v2, v7, :cond_3

    .line 1047
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1049
    const/4 v0, 0x1

    .line 1053
    :cond_3
    if-eqz v1, :cond_d

    if-eqz v0, :cond_d

    move v1, v5

    .line 1058
    .end local v0           #allowBySettingOrWhitelist:Z
    .end local v2           #i:I
    :cond_4
    :goto_2
    if-nez v1, :cond_a

    .line 1059
    const-string v3, ""

    .line 1060
    .local v3, reason:Ljava/lang/String;
    if-nez p2, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1061
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - roam : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1063
    :cond_5
    if-nez p1, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->profileAllowDataConnection()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1064
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - profile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->profileAllowDataConnection()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1066
    :cond_6
    if-eqz p3, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedByDataRoamGuard()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1067
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - dataroamguard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedByDataRoamGuard()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1069
    :cond_7
    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1070
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - master : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1072
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcisDataAllowed: Data not allowed due to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1074
    .end local v3           #reason:Ljava/lang/String;
    :cond_a
    return v1

    :cond_b
    move v1, v6

    .line 1004
    goto/16 :goto_0

    .line 1045
    .restart local v0       #allowBySettingOrWhitelist:Z
    .restart local v2       #i:I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_d
    move v1, v6

    .line 1053
    goto/16 :goto_2
.end method

.method private IgnoreCDMAReadyState()Z
    .locals 2

    .prologue
    .line 808
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    .line 810
    const/4 v0, 0x1

    .line 813
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private SetupDataCallRUIMCardBase(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 6
    .parameter "apnContext"

    .prologue
    const/4 v1, 0x0

    .line 3611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trySetupData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "(unspecified)"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPsRestricted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3615
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 3617
    .local v0, desiredPowerState:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_4

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isEmergency()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3620
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_3

    .line 3621
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->buildWaitingApns(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3622
    .local v2, waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3623
    const-string v3, "trySetupData: No APN found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3624
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    .line 3627
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 3661
    .end local v2           #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :goto_1
    return v1

    .line 3611
    .end local v0           #desiredPowerState:Z
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3631
    .restart local v0       #desiredPowerState:Z
    .restart local v2       #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 3633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trySetupData: Create from mAllApns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3639
    .end local v2           #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setup watingApns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3642
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupData(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    .line 3645
    .local v1, retValue:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    goto :goto_1

    .line 3651
    .end local v1           #retValue:Z
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetupDataCallRUIMCardBase => state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,apnContext.isReady()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3652
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_6

    .line 3655
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 3658
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1214(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    return-wide v0
.end method

.method static synthetic access$3008(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return p1
.end method

.method static synthetic access$3702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    return-wide v0
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/htc/cw/ICWService;)Lcom/htc/cw/ICWService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteService:Lcom/htc/cw/ICWService;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    return p1
.end method

.method static synthetic access$4402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    return p1
.end method

.method static synthetic access$4502(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    return-wide v0
.end method

.method private addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;
    .locals 2
    .parameter "type"

    .prologue
    .line 4771
    new-instance v0, Lcom/android/internal/telephony/ApnContext;

    const-string v1, "CDMA"

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/ApnContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4772
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnContext;->setDependencyMet(Z)V

    .line 4773
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4774
    return-object v0
.end method

.method private addDUNApnType([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 4762
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 4763
    .local v1, temp:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 4764
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 4765
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 4764
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4766
    :cond_0
    const-string v2, "dun"

    aput-object v2, v1, v0

    .line 4767
    return-object v1
.end method

.method private addSuplApnType([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 4750
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 4751
    .local v1, temp:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 4752
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 4753
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 4752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4754
    :cond_0
    const-string v2, "supl"

    aput-object v2, v1, v0

    .line 4755
    return-object v1
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4777
    .local p1, apns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4778
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4779
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4778
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4783
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V
    .locals 4
    .parameter "apnContext"
    .parameter "enabled"
    .parameter "met"

    .prologue
    .line 3542
    const/4 v0, 0x0

    .line 3543
    .local v0, cleanup:Z
    const/4 v1, 0x0

    .line 3545
    .local v1, trySetup:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyNewState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3549
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3550
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 3588
    :cond_0
    :goto_0
    return-void

    .line 3551
    :cond_1
    if-nez p2, :cond_3

    .line 3552
    const-string v2, "dataDisabled"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 3556
    :goto_1
    const/4 v0, 0x1

    .line 3570
    :cond_2
    :goto_2
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ApnContext;->setEnabled(Z)V

    .line 3571
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/ApnContext;->setDependencyMet(Z)V

    .line 3579
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcPdpLimitRule(ZZLcom/android/internal/telephony/ApnContext;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3580
    const-string v2, "HtcPdpLimitRule: return true, do switch"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3581
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcSwitchApn(ZZLcom/android/internal/telephony/ApnContext;)V

    goto :goto_0

    .line 3554
    :cond_3
    const-string v2, "dependencyUnmet"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_1

    .line 3558
    :cond_4
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 3559
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3560
    const-string v2, "dependencyMet"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 3564
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_5

    .line 3565
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 3567
    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    .line 3562
    :cond_6
    const-string v2, "dataEnabled"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_3

    .line 3583
    :cond_7
    const-string v2, "HtcPdpLimitRule: return false, not do switch"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3584
    if-eqz v0, :cond_8

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnectionByApnContext(ZLcom/android/internal/telephony/ApnContext;)V

    .line 3585
    :cond_8
    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto :goto_0
.end method

.method private broadcastDisconnectedForApns(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "apns"
    .parameter "reason"

    .prologue
    .line 3233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastDisconnectedForApns state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3236
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 3238
    return-void
.end method

.method private buildWaitingApns(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 26
    .parameter "requestedApnType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4311
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 4313
    .local v21, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    const-string v3, "dun"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4314
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v22

    .line 4315
    .local v22, dun:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v22, :cond_0

    .line 4316
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X added APN_TYPE_DUN apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4429
    .end local v22           #dun:Lcom/android/internal/telephony/ApnSetting;
    :goto_0
    return-object v21

    .line 4322
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v24

    .line 4324
    .local v24, operator:Ljava/lang/String;
    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v3, :cond_1

    .line 4326
    const-string v3, "persist.radio.hardcodemccmnc"

    const-string v4, "46605"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 4327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hardcode operator numeric to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4330
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v25

    .line 4332
    .local v25, radioTech:I
    const-string v3, "default"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4333
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v3, :cond_4

    .line 4335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: Preferred APN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_3

    .line 4340
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X added preferred apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4344
    :cond_3
    const-string v3, "buildWaitingApns: no preferred APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4345
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPreferredApn(I)V

    .line 4346
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 4357
    :cond_4
    :goto_1
    const-string v3, "dun"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4359
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v3, :cond_8

    .line 4360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: Preferred Dun APN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_7

    .line 4364
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X added preferred dun apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4349
    :cond_6
    const-string v3, "buildWaitingApns: no preferred APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4350
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPreferredApn(I)V

    .line 4351
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    goto/16 :goto_1

    .line 4368
    :cond_7
    const-string v3, "buildWaitingApns: no preferred dun APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4379
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    .line 4380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/ApnSetting;

    .line 4381
    .local v20, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4382
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v3, :cond_a

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_9

    .line 4383
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4387
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4372
    .end local v20           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_b
    const-string v3, "buildWaitingApns: no preferred dun APN, no error handling..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 4392
    :cond_c
    const-string v3, "mAllApns is empty!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 4397
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_f

    const-string v3, "supl"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_f

    .line 4399
    const-string v3, "clone a default with supl, add to apnList"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/ApnSetting;

    .line 4401
    .restart local v20       #apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v3, "default"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4402
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "supl"

    aput-object v4, v15, v3

    .line 4403
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v19, v0

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 4407
    .local v2, tmpApn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4413
    .end local v2           #tmpApn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    .end local v20           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_11

    const-string v3, "dun"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 4415
    const-string v3, "clone a default with dun, add to apnList"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/ApnSetting;

    .line 4417
    .restart local v20       #apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v3, "default"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4418
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dun"

    aput-object v4, v15, v3

    .line 4419
    .restart local v15       #types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v19, v0

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 4423
    .restart local v2       #tmpApn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 4428
    .end local v2           #tmpApn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    .end local v20           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V
    .locals 4
    .parameter "dcac"

    .prologue
    .line 4478
    if-nez p1, :cond_1

    .line 4488
    :cond_0
    :goto_0
    return-void

    .line 4480
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v1

    .line 4482
    .local v1, intent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 4483
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4485
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4486
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/DataConnectionAc;->setReconnectIntentSync(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private checkForConnectionForApnContext(Lcom/android/internal/telephony/ApnContext;)Lcom/android/internal/telephony/DataConnection;
    .locals 7
    .parameter "apnContext"

    .prologue
    .line 4434
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 4435
    .local v1, apnType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 4436
    .local v2, c:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    .line 4437
    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v3, :cond_0

    .line 4438
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 4439
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkForConnectionForApnContext: apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found conn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4445
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

    .line 4452
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v2           #c:Lcom/android/internal/telephony/ApnContext;
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    :goto_0
    return-object v3

    .line 4451
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkForConnectionForApnContext: apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NO conn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4452
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private cleanUpConnection(ZLjava/lang/String;)V
    .locals 11
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 1340
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cleanUpConnection: reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1343
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_0

    .line 1344
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1346
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1347
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1350
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 1352
    const/4 v7, 0x0

    .line 1353
    .local v7, notificationDeferred:Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_8

    .line 1354
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 1355
    .local v1, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1356
    if-nez v1, :cond_2

    .line 1357
    const-string v8, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1469
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_1
    return-void

    .line 1362
    .restart local v1       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cleanUpConnection: tearDown="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v4

    .line 1366
    .local v4, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_6

    .line 1367
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1370
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1371
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1372
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 1373
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1392
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 1402
    :goto_3
    if-eqz v4, :cond_1

    .line 1403
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v2

    .line 1404
    .local v2, apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1405
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_0

    .line 1377
    .end local v2           #apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    :cond_4
    if-eqz v4, :cond_5

    .line 1378
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v9, :cond_3

    .line 1379
    const-string v8, "cleanUpConnection: tearing down"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1380
    const v8, 0x4200f

    invoke-virtual {p0, v8, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1381
    .local v6, msg:Landroid/os/Message;
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 1382
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto :goto_2

    .line 1387
    .end local v6           #msg:Landroid/os/Message;
    :cond_5
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1388
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1395
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 1396
    :cond_7
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1397
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 1399
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1400
    const/4 v7, 0x0

    goto :goto_3

    .line 1410
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v4           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_8
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1412
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataConnection;

    .line 1413
    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v3, :cond_9

    .line 1414
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1416
    .restart local v4       #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_b

    .line 1420
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v9, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 1421
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_a

    .line 1423
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1425
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 1427
    const-string v8, "cleanUpConnection: teardown, call conn.disconnect"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1428
    const v8, 0x4200f

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, p2, v8}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 1430
    const/4 v7, 0x1

    goto :goto_4

    .line 1432
    :cond_b
    const-string v8, "cleanUpConnection: !tearDown, call conn.resetSynchronously"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1433
    if-eqz v4, :cond_c

    .line 1434
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 1436
    :cond_c
    const/4 v7, 0x0

    goto :goto_4

    .line 1444
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1445
    const-string v8, "[HTCCW]reset sip invite retry timer"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1446
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    .line 1447
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getSipFlag()Z

    move-result v8

    if-eqz v8, :cond_e

    iget v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    const/16 v9, 0x65

    if-eq v8, v9, :cond_e

    .line 1448
    const-string v8, "[HTCCW]no need to send command to cw_ril anymore"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1449
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setSipFlag(Z)V

    .line 1455
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 1457
    if-nez v7, :cond_f

    .line 1458
    const-string v8, "cleanupConnection: !notificationDeferred"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1464
    :cond_f
    monitor-enter p0

    .line 1465
    const/4 v8, 0x0

    :try_start_0
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1466
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private cleanUpConnectionByApnContext(ZLcom/android/internal/telephony/ApnContext;)V
    .locals 7
    .parameter "tearDown"
    .parameter "apnContext"

    .prologue
    const/4 v6, 0x0

    .line 3287
    if-nez p2, :cond_1

    .line 3288
    const-string v3, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3342
    :cond_0
    :goto_0
    return-void

    .line 3293
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpConnection: tearDown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3295
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 3296
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_5

    .line 3297
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3300
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 3301
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3302
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 3303
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 3331
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcUpdateConnectedProp()V

    .line 3336
    if-eqz v1, :cond_0

    .line 3337
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v0

    .line 3338
    .local v0, apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3339
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_0

    .line 3307
    .end local v0           #apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    :cond_3
    if-eqz v1, :cond_4

    .line 3308
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_2

    .line 3309
    const-string v3, "cleanUpConnection: tearing down"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3310
    const v3, 0x4200f

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3311
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 3312
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto :goto_1

    .line 3317
    .end local v2           #msg:Landroid/os/Message;
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 3318
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3324
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 3325
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 3326
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 3327
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 3328
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_1
.end method

.method private configureRetry(Lcom/android/internal/telephony/DataConnection;Z)V
    .locals 3
    .parameter "dc"
    .parameter "forDefault"

    .prologue
    .line 4456
    if-nez p1, :cond_1

    .line 4475
    :cond_0
    :goto_0
    return-void

    .line 4458
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getReryConfig(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4459
    if-eqz p2, :cond_2

    .line 4460
    const-string v0, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4462
    const-string v0, "configureRetry: Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 4464
    const/16 v0, 0x14

    const/16 v1, 0x7d0

    const/16 v2, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->configureRetry(III)Z

    goto :goto_0

    .line 4467
    :cond_2
    const-string v0, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4469
    const-string v0, "configureRetry: Could note configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 4471
    const-string v0, "max_retries=3, 333, 333, 333"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private copyApnSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4727
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 4732
    :cond_0
    return-object v1

    .line 4728
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4729
    .local v1, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4730
    new-instance v3, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnSetting;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/ApnSetting;-><init>(Lcom/android/internal/telephony/ApnSetting;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4729
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createAllApnList()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 4533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 4549
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 4551
    .local v7, operator:Ljava/lang/String;
    if-nez v7, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v0, :cond_0

    .line 4553
    const-string v0, "persist.radio.hardcodemccmnc"

    const-string v1, "46605"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hardcode operator numeric to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4557
    :cond_0
    if-eqz v7, :cond_4

    .line 4558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4561
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4571
    const/4 v4, 0x0

    .line 4573
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMVNOOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND operator = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4576
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMVNOOperatorName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 4579
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4580
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4585
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 4586
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 4587
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 4589
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4595
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4597
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 4621
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcApnHandling()V

    .line 4623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: X mAllApns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4624
    return-void

    .line 4592
    :cond_4
    const-string v0, "operator is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4601
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 4603
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getPreferredDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    .line 4605
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4606
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 4607
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPreferredApn(I)V

    .line 4618
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: mPreferredApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createAllDataConnectionList()V
    .locals 10

    .prologue
    .line 2654
    const-string v7, "ro.cdma.data_retry_config"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2655
    .local v4, retryConfig:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v7, 0x1

    if-ge v2, v7, :cond_2

    .line 2656
    new-instance v5, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v5}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    .line 2657
    .local v5, rm:Lcom/android/internal/telephony/RetryManager;
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2658
    const-string v7, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2660
    const-string v7, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2662
    const/16 v7, 0x14

    const/16 v8, 0x7d0

    const/16 v9, 0x3e8

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    .line 2666
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 2667
    .local v3, id:I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v7, v3, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->makeDataConnection(Lcom/android/internal/telephony/cdma/CDMAPhone;ILcom/android/internal/telephony/RetryManager;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v0

    .line 2668
    .local v0, dataConn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2669
    new-instance v1, Lcom/android/internal/telephony/DataConnectionAc;

    const-string v7, "CDMA"

    invoke-direct {v1, v0, v7}, Lcom/android/internal/telephony/DataConnectionAc;-><init>(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V

    .line 2670
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v1, v7, p0, v8}, Lcom/android/internal/telephony/DataConnectionAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v6

    .line 2671
    .local v6, status:I
    if-nez v6, :cond_1

    .line 2672
    const-string v7, "Fully connected"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2673
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2655
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2675
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not connect to dcac.dataConnection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2680
    .end local v0           #dataConn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #id:I
    .end local v5           #rm:Lcom/android/internal/telephony/RetryManager;
    .end local v6           #status:I
    :cond_2
    return-void
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 21
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4500
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 4501
    .local v20, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4503
    :cond_0
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 4505
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x1

    :goto_0
    const-string v19, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 4525
    .local v2, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4526
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4528
    .end local v2           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createApnList: X result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4529
    return-object v20

    .line 4505
    .restart local v15       #types:[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    goto :goto_0
.end method

.method private createDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 3862
    const-string v6, "createDataConnection E"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3864
    new-instance v4, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v4}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    .line 3865
    .local v4, rm:Lcom/android/internal/telephony/RetryManager;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 3868
    .local v3, id:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v6

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-lt v6, v8, :cond_0

    .line 3869
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDataConnection() X used="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " pdpLimitSize="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " no free pdp"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v0, v7

    .line 3897
    :goto_0
    return-object v0

    .line 3874
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DataConnection;->get_mCount_cdma()I

    move-result v6

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-lt v6, v8, :cond_1

    .line 3875
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDataConnection() X over limit return, used="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " pdpLimitSize="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " mCnt="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/telephony/DataConnection;->get_mCount_cdma()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v0, v7

    .line 3877
    goto :goto_0

    .line 3880
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v6, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->makeDataConnection(Lcom/android/internal/telephony/cdma/CDMAPhone;ILcom/android/internal/telephony/RetryManager;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v0

    .line 3881
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3882
    new-instance v1, Lcom/android/internal/telephony/DataConnectionAc;

    const-string v6, "CDMA"

    invoke-direct {v1, v0, v6}, Lcom/android/internal/telephony/DataConnectionAc;-><init>(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V

    .line 3883
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v1, v6, p0, v8}, Lcom/android/internal/telephony/DataConnectionAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v5

    .line 3884
    .local v5, status:I
    if-nez v5, :cond_2

    .line 3885
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3892
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3893
    .local v2, filter:Landroid/content/IntentFilter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.android.internal.telephony.cdma-reconnect."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3894
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6, v8, v2, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3896
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createDataConnection() X id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3887
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDataConnection: Could not connect to dcac.mDc="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " status="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dataConnectionNotInUse(Lcom/android/internal/telephony/DataConnectionAc;)Z
    .locals 4
    .parameter "dcac"

    .prologue
    const/4 v2, 0x1

    .line 3778
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-nez v3, :cond_1

    .line 3792
    :cond_0
    :goto_0
    return v2

    .line 3781
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3786
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnChangeFlag()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3789
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private destroyAllDataConnectionList()V
    .locals 3

    .prologue
    .line 2683
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 2685
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    .line 2686
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->quit()V

    goto :goto_0

    .line 2688
    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->ReInitialDataConnectionCounter()V

    .line 2690
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2692
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private doRecovery()V
    .locals 6

    .prologue
    const v5, 0xc3b6

    .line 5018
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_2

    .line 5019
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "pdp_watchdog_max_pdp_reset_fail_count"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5022
    .local v0, maxPdpReset:I
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPdpResetCount:I

    if-ge v2, v0, :cond_1

    .line 5023
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPdpResetCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPdpResetCount:I

    .line 5024
    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v5, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 5025
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRecovery() cleanup all connections mPdpResetCount= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPdpResetCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxPdpReset= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5028
    const-string v2, "persist.radio.ramdumpmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5029
    .local v1, mode:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ramdumpmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5030
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5032
    const-string v2, "persist.radio.ramdump"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5033
    const-string v2, "property set!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5036
    :cond_0
    const/4 v2, 0x1

    const-string v3, "pdpReset"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 5076
    .end local v0           #maxPdpReset:I
    .end local v1           #mode:Ljava/lang/String;
    :goto_0
    return-void

    .line 5038
    .restart local v0       #maxPdpReset:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPdpResetCount:I

    .line 5039
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$cdma$CdmaDataConnectionTracker$RecoveryAction:[I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 5069
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doRecovery: Invalid mRecoveryAction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5041
    :pswitch_0
    const v2, 0xc3b8

    iget-wide v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v2, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 5042
    const-string v2, "doRecovery() re-register getting preferred network type"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5043
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    .line 5044
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;->RADIO_RESTART:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    goto :goto_0

    .line 5047
    :pswitch_1
    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v5, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 5048
    const-string v2, "restarting radio"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5049
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;->RADIO_RESET:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    .line 5050
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->restartRadio()V

    goto :goto_0

    .line 5059
    :pswitch_2
    const/4 v2, -0x1

    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5060
    const-string v2, "restarting radio with reset indication"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5061
    const-string v2, "gsm.radioreset"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5064
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5066
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->restartRadio()V

    goto :goto_0

    .line 5074
    .end local v0           #maxPdpReset:I
    :cond_2
    const-string v2, "doRecovery(): ignore, we\'re not connected"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5065
    .restart local v0       #maxPdpReset:I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 5039
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dumpDCApn()V
    .locals 4

    .prologue
    .line 251
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 252
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpDCApn dc.mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dc.cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dc=<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_0
    return-void
.end method

.method private dumpSwitchRecord()V
    .locals 5

    .prologue
    .line 278
    const-string v1, ""

    .line 280
    .local v1, dump:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 281
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 283
    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpSwitchRecord: pending=<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">> switchoff=<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method private eriUpdate(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 2175
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 2176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERI exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2204
    :cond_0
    :goto_0
    return-void

    .line 2180
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;

    .line 2182
    .local v0, htcEriUpdate:Lcom/android/internal/telephony/cdma/CdmaERIInfo;
    if-eqz v0, :cond_2

    .line 2183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EriUpdate.eri_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mEriIndicator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",icon_img_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2186
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IsIconImageRoaming(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIconImageRoaming:Z

    .line 2190
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    if-eq v1, v2, :cond_0

    .line 2191
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    .line 2195
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoaming:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isHomeNetwork(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2196
    const-string v1, "Eri Indicator change. Check the Global Roaming Option"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRoamingOn()V

    goto :goto_0

    .line 2202
    :cond_2
    const-string v1, "CdmaERIInfo result is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findDCFromDupApn(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 6
    .parameter "reqApn"

    .prologue
    .line 3845
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 3846
    .local v1, c:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v2

    .line 3847
    .local v2, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnChangeFlag()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3848
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 3849
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findDCFromDupApn: from apnContext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; found dupApn conn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3853
    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 3858
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #c:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #conn:Lcom/android/internal/telephony/DataConnection;
    :goto_0
    return-object v2

    .line 3857
    :cond_1
    const-string v4, "findDCFromDupApn: No conn"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3858
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 3

    .prologue
    .line 1472
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1473
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/DataConnectionAc;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1474
    const-string v2, "found free CdmaDataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1475
    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 1479
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 1478
    :cond_1
    const-string v2, "NO free CdmaDataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1479
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private forceAlwaysRetryDelay()I
    .locals 1

    .prologue
    .line 3163
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isSprintRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3167
    const/4 v0, 0x0

    .line 3169
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getMVNOOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4492
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mvno_operator"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4495
    :goto_0
    return-object v1

    .line 4494
    :catch_0
    move-exception v0

    .line 4495
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/ApnSetting;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 4628
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4664
    :cond_0
    :goto_0
    return-object v3

    .line 4632
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4636
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 4637
    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    .line 4639
    const-string v0, "cansetPreferApn = true, cursor is not null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4648
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 4650
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4651
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 4652
    .local v9, pos:I
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/ApnSetting;

    .line 4653
    .local v8, p:Lcom/android/internal/telephony/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4654
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 4655
    goto :goto_0

    .line 4642
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/ApnSetting;
    .end local v9           #pos:I
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    .line 4644
    const-string v0, "cansetPreferApn = false, cursor is  null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4660
    :cond_4
    if-eqz v6, :cond_0

    .line 4661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getPreferredDunApn()Lcom/android/internal/telephony/ApnSetting;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 4668
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4699
    :cond_0
    :goto_0
    return-object v3

    .line 4672
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERRED_DUN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4676
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 4677
    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    .line 4682
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 4684
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4685
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 4686
    .local v9, pos:I
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/ApnSetting;

    .line 4688
    .local v8, p:Lcom/android/internal/telephony/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v0, v9, :cond_2

    const-string v0, "dun"

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4689
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 4690
    goto :goto_0

    .line 4679
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/ApnSetting;
    .end local v9           #pos:I
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    goto :goto_1

    .line 4695
    :cond_4
    if-eqz v6, :cond_0

    .line 4696
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getSipFlag()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4870
    const-string v1, "cdma.wifi.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4872
    .local v0, enable:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCCW]sip flag=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4874
    if-eqz v0, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v2

    .line 4880
    :goto_1
    return v1

    :cond_1
    move-object v1, v0

    .line 4872
    goto :goto_0

    .line 4876
    :cond_2
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4877
    const/4 v1, 0x1

    goto :goto_1

    .line 4879
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCCW]cdma.wifi.on has unexpected value:\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v1, v2

    .line 4880
    goto :goto_1
.end method

.method private htcExtendStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "originalArray"
    .parameter "appendString"

    .prologue
    .line 3112
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 3113
    .local v1, arrIdx:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 3114
    .local v0, appendResult:[Ljava/lang/String;
    aput-object p2, v0, v1

    .line 3115
    :goto_1
    if-lez v1, :cond_1

    .line 3116
    add-int/lit8 v1, v1, -0x1

    .line 3117
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    goto :goto_1

    .line 3112
    .end local v0           #appendResult:[Ljava/lang/String;
    .end local v1           #arrIdx:I
    :cond_0
    array-length v1, p1

    goto :goto_0

    .line 3119
    .restart local v0       #appendResult:[Ljava/lang/String;
    .restart local v1       #arrIdx:I
    :cond_1
    return-object v0
.end method

.method private htcGetCDMADataConnectionState()I
    .locals 2

    .prologue
    .line 853
    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 859
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    goto :goto_0
.end method

.method private htcGetCDMADataRoamingState()Z
    .locals 2

    .prologue
    .line 865
    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 871
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method private htcReconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)Z
    .locals 6
    .parameter "lastFailCauseCode"
    .parameter "reason"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1842
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v2, :cond_2

    .line 1843
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Connection activate failed. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    if-eqz v2, :cond_1

    const-string v2, "Airplane mode requesting."

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1845
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 1846
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1847
    const-string v2, "apnFailed"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    move v2, v3

    .line 1909
    :goto_1
    return v2

    .line 1843
    :cond_1
    const-string v2, "Airplane mode."

    goto :goto_0

    .line 1861
    :cond_2
    invoke-direct {p0, v3, v4, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcisDataAllowed(ZZZZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Connection activate failed. Disabled by user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", by conns:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->logEnabledApnStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", allow="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->profileAllowDataConnection()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1867
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 1868
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1869
    const-string v2, "apnFailed"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    move v2, v3

    .line 1870
    goto :goto_1

    .line 1881
    :cond_3
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReasonInPendingIntent:Ljava/lang/String;

    .line 1891
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->getRetryTimer()I

    move-result v1

    .line 1893
    .local v1, nextReconnectDelay:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->forceAlwaysRetryDelay()I

    move-result v0

    .line 1894
    .local v0, alwaysRetryDelay:I
    if-ltz v0, :cond_4

    .line 1895
    move v1, v0

    .line 1898
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILjava/lang/String;)V

    .line 1899
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->increaseRetryCount()V

    .line 1901
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1902
    const-string v2, "NOT Posting Data Connection Unavailable notification -- likely transient error"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    :goto_2
    move v2, v4

    .line 1909
    goto/16 :goto_1

    .line 1905
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto :goto_2
.end method

.method private ifApnDupWithExisted(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 13
    .parameter "ac"

    .prologue
    const/4 v10, 0x0

    .line 202
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    .line 203
    .local v8, radioTech:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v1, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v11, :cond_2

    .line 207
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 208
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 209
    iget v11, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v11, :cond_1

    iget v11, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-ne v11, v8, :cond_0

    .line 210
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dumpReqApn "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v11, "ifApnDupWithExisted: mAllApns is empty!"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 247
    :goto_1
    return v10

    .line 221
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/ApnSetting;

    .line 222
    .local v9, reqApn:Lcom/android/internal/telephony/ApnSetting;
    const/4 v7, 0x0

    .line 223
    .local v7, isDupApn:Z
    if-eqz v9, :cond_6

    iget-object v11, v9, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 224
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 225
    .local v2, c:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    .line 226
    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v3, :cond_5

    .line 227
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v4

    .line 228
    .local v4, existedApn:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v4, :cond_5

    iget-object v11, v4, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 231
    iget-object v11, v9, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    iget-object v12, v4, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 232
    const/4 v7, 0x1

    goto :goto_2

    .line 237
    .end local v2           #c:Lcom/android/internal/telephony/ApnContext;
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #existedApn:Lcom/android/internal/telephony/ApnSetting;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "found abnormal apn in ReqApn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 240
    :cond_7
    if-nez v7, :cond_4

    .line 241
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ifApnDupWithExisted: none is duplicate, req="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 246
    .end local v7           #isDupApn:Z
    .end local v9           #reqApn:Lcom/android/internal/telephony/ApnSetting;
    :cond_8
    const-string v10, "ifApnDupWithExisted: all is duplicate"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 247
    const/4 v10, 0x1

    goto :goto_1
.end method

.method private ifDCCanHandle(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 4
    .parameter "ac"

    .prologue
    .line 192
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnectionAc;

    .line 193
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 194
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    const/4 v3, 0x1

    .line 197
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 1
    .parameter "apnContext"

    .prologue
    .line 3724
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtendedNetwork(I)Z
    .locals 1
    .parameter "eri_id"

    .prologue
    .line 2209
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x43

    if-eq p1, v0, :cond_0

    const/16 v0, 0x45

    if-eq p1, v0, :cond_0

    const/16 v0, 0x47

    if-eq p1, v0, :cond_0

    const/16 v0, 0x48

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4a

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHomeNetwork(I)Z
    .locals 2
    .parameter "eri_id"

    .prologue
    const/4 v0, 0x1

    .line 2215
    if-eq p1, v0, :cond_0

    const/16 v1, 0x40

    if-eq p1, v1, :cond_0

    const/16 v1, 0x41

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4c

    if-lt p1, v1, :cond_1

    const/16 v1, 0x53

    if-gt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRuimCardSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 145
    const-string v1, "persist.radio.enableruim"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isSprintRelease()Z
    .locals 1

    .prologue
    .line 524
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_CONFIG:Z

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x1

    .line 527
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSwitchOff(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 3
    .parameter "ac"

    .prologue
    .line 170
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 171
    .local v1, switched:Lcom/android/internal/telephony/ApnContext;
    if-ne v1, p1, :cond_0

    .line 172
    const/4 v2, 0x1

    .line 175
    .end local v1           #switched:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private logReportedApnStatus()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 4789
    new-array v1, v3, [B

    .line 4790
    .local v1, status:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 4791
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcReportedActiveApns:[Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcReportedActiveApns:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const/16 v2, 0x31

    :goto_1
    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 4790
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4791
    :cond_0
    const/16 v2, 0x30

    goto :goto_1

    .line 4794
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private notifyDefaultData(Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "apnContext"

    .prologue
    .line 4072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDefaultData: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4076
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v1, "admin"

    if-eq v0, v1, :cond_0

    .line 4077
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4080
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4083
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcUpdateConnectedProp()V

    .line 4085
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 4086
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 4088
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 4089
    return-void
.end method

.method private notifyDefaultData(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1573
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 1574
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v0

    .line 1575
    .local v0, profileType:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1576
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1607
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1608
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1609
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 1610
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 1611
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 1
    .parameter "lastFailCauseCode"

    .prologue
    .line 1932
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1935
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 1937
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "lastFailCauseCode"
    .parameter "apnContext"

    .prologue
    .line 3687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNoData: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3688
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 3690
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcUpdateConnectedProp()V

    .line 3692
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3694
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 3696
    :cond_0
    return-void
.end method

.method private onApnChanged()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 3728
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    .line 3729
    .local v3, overallState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v5, :cond_4

    :cond_0
    move v2, v7

    .line 3731
    .local v2, isDisconnected:Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v5, :cond_1

    .line 3733
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider()Z

    .line 3737
    :cond_1
    const/4 v4, -0x1

    .line 3738
    .local v4, previousPreferredApnId:I
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v5, :cond_2

    .line 3739
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v4, v5, Lcom/android/internal/telephony/ApnSetting;->id:I

    .line 3745
    :cond_2
    const-string v5, "onApnChanged: createAllApnList and cleanUpAllConnections"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3746
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllApnList()V

    .line 3749
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v5, v5, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v5, v4, :cond_5

    .line 3752
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApnChanged: ApnSetting not changed, return ,  mPreferredApn.id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3776
    :cond_3
    :goto_1
    return-void

    .end local v2           #isDisconnected:Z
    .end local v4           #previousPreferredApnId:I
    :cond_4
    move v2, v6

    .line 3729
    goto :goto_0

    .line 3757
    .restart local v2       #isDisconnected:Z
    .restart local v4       #previousPreferredApnId:I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->copyApnSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    .line 3759
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 3760
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after copy, mOldAllApns:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3767
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3768
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ApnContext;->setApnChangeFlag(Z)V

    goto :goto_3

    .line 3762
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_6
    const-string v5, "after copy,mOldAllApns is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3772
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_7
    if-nez v2, :cond_8

    :goto_4
    const-string v5, "apnChanged"

    invoke-virtual {p0, v7, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 3773
    if-eqz v2, :cond_3

    .line 3774
    const-string v5, "apnChanged"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move v7, v6

    .line 3772
    goto :goto_4
.end method

.method private onCdmaDataDetached()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2695
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2696
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 2697
    const-string v1, "cdmaDataDetached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2710
    :goto_0
    return-void

    .line 2699
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_1

    .line 2700
    const-string v1, "cdmaDataDetached"

    invoke-direct {p0, v4, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 2701
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2703
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v0, v1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 2704
    .local v0, loc:Landroid/telephony/cdma/CdmaCellLocation;
    const v2, 0xc3be

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2708
    .end local v0           #loc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    const-string v1, "cdmaDataDetached"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 2704
    .restart local v0       #loc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private onCdmaOtaProvision(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 2713
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2714
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 2715
    .local v0, otaPrivision:[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 2716
    aget v1, v0, v3

    packed-switch v1, :pswitch_data_0

    .line 2726
    .end local v0           #otaPrivision:[I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2719
    .restart local v0       #otaPrivision:[I
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto :goto_0

    .line 2716
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onRestartRadio()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2729
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v0, :cond_0

    .line 2730
    const-string v0, "************TURN OFF RADIO**************"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2731
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2739
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 2741
    :cond_0
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 4250
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4251
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 4252
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 4256
    :goto_0
    return-object v0

    .line 4254
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private profileDecisionByEnabledPriority(Ljava/lang/String;)I
    .locals 4
    .parameter "requestApnType"

    .prologue
    .line 1125
    const/4 v2, 0x4

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 1128
    .local v1, proirityList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1130
    aget v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileDecisionByEnabledPriority(1): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1133
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->ApnIDToProfileID(I)I

    move-result v2

    .line 1155
    :goto_1
    return v2

    .line 1128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1138
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileDecisionByEnabledPriority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is requested"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1141
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->ApnIDToProfileID(I)I

    move-result v2

    goto :goto_1

    .line 1145
    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x10

    if-ge v0, v2, :cond_4

    .line 1147
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileDecisionByEnabledPriority(2): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1150
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->ApnIDToProfileID(I)I

    move-result v2

    goto :goto_1

    .line 1145
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1155
    :cond_4
    const/16 v2, 0xa

    goto :goto_1

    .line 1125
    nop

    :array_0
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V
    .locals 4
    .parameter "lastFailCauseCode"
    .parameter "apnContext"
    .parameter "retryOverride"

    .prologue
    .line 4093
    if-nez p2, :cond_1

    .line 4094
    const-string v1, "reconnectAfterFail: apnContext == null, impossible"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 4141
    :cond_0
    :goto_0
    return-void

    .line 4098
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4099
    const-string v1, "reconnectAfterFail: apnContext is not Ready, stop this try"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4103
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4105
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->isRetryNeeded()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4106
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4107
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "apnFailed"

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4110
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    if-eqz v1, :cond_6

    .line 4112
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->retryForeverUsingLastTimeout()V

    .line 4125
    :cond_4
    move v0, p3

    .line 4126
    .local v0, nextReconnectDelay:I
    if-gez v0, :cond_5

    .line 4127
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getRetryTimer()I

    move-result v0

    .line 4128
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->increaseRetryCount()V

    .line 4130
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    .line 4132
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4134
    const-string v1, "reconnectAfterFail: NOT Posting GPRS Unavailable notification -- likely transient error"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4115
    .end local v0           #nextReconnectDelay:I
    :cond_6
    const-string v1, "reconnectAfterFail: activate failed, Reregistering to network"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 4117
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    .line 4118
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto/16 :goto_0

    .line 4138
    .restart local v0       #nextReconnectDelay:I
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    goto/16 :goto_0
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V
    .locals 2
    .parameter "lastFailCauseCode"
    .parameter "reason"

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 1830
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcReconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)Z

    .line 1832
    :cond_0
    return-void
.end method

.method private resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1614
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    .line 1615
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    .line 1616
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    .line 1617
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    .line 1618
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    .line 1619
    return-void
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    .line 1801
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->forceAlwaysRetryDelay()I

    move-result v1

    if-ltz v1, :cond_1

    .line 1802
    const/4 v0, 0x1

    .line 1810
    :cond_0
    :goto_0
    return v0

    .line 1805
    :cond_1
    const/4 v0, 0x1

    .line 1807
    .local v0, retry:Z
    const-string v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1808
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPreferredApn(I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 4288
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    if-nez v2, :cond_1

    .line 4301
    :cond_0
    :goto_0
    return-void

    .line 4292
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4293
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4295
    if-ltz p1, :cond_0

    .line 4296
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4297
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4298
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setpreferred apn pos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSipFlag(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 4861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCCW]set sip flag to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4862
    if-eqz p1, :cond_0

    .line 4863
    const-string v0, "cdma.wifi.on"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4867
    :goto_0
    return-void

    .line 4865
    :cond_0
    const-string v0, "cdma.wifi.on"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 13
    .parameter "apnContext"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 3901
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setupData: apnContext="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3905
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getApnProfileID(Ljava/lang/String;)I

    move-result v5

    .line 3906
    .local v5, profileId:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getNextWaitingApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 3907
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    if-nez v0, :cond_0

    .line 3908
    const-string v9, "setupData: return for no apn found!"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4008
    :goto_0
    return v8

    .line 3912
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnChangeFlag()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3913
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ApnContext;->setApnChangeFlag(Z)V

    .line 3915
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 3916
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 3917
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 3922
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 3924
    .local v1, dc:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    if-nez v1, :cond_9

    .line 3926
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->checkForConnectionForApnContext(Lcom/android/internal/telephony/ApnContext;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .end local v1           #dc:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 3928
    .restart local v1       #dc:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    if-eqz v1, :cond_2

    .line 3929
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

    .line 3930
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "overwrite apn from other AC, ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3934
    :cond_2
    if-nez v1, :cond_3

    .line 3935
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findDCFromDupApn(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v1

    .line 3939
    :cond_3
    if-nez v1, :cond_4

    .line 3940
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findReadyDataConnection(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v1

    .line 3943
    :cond_4
    if-nez v1, :cond_5

    .line 3944
    const-string v10, "setupData: No ready CdmaDataConnection found!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3947
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v1

    .line 3950
    :cond_5
    if-nez v1, :cond_6

    .line 3951
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v1

    .line 3954
    :cond_6
    if-nez v1, :cond_7

    .line 3955
    const-string v9, "setupData: No free CdmaDataConnection found!"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3959
    :cond_7
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getDataConnectionId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 3960
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->setProfileId(I)V

    .line 3961
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->setActiveApnType(Ljava/lang/String;)V

    .line 3962
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getRefCountSync()I

    move-result v6

    .line 3963
    .local v6, refCount:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setupData: init dc and apnContext refCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3966
    if-nez v6, :cond_8

    .line 3967
    const-string v8, "default"

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v8

    invoke-direct {p0, v1, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->configureRetry(Lcom/android/internal/telephony/DataConnection;Z)V

    .line 3969
    :cond_8
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 3970
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 3973
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v6           #refCount:I
    :cond_9
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 3974
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 3975
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 3979
    const-string v8, "setupData: data reconnection pending"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3980
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 3981
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 3982
    goto/16 :goto_0

    .line 3986
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->dumpSwitchApnRecord()V

    .line 3987
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    if-ne p1, v8, :cond_c

    .line 3988
    const-string v8, "clean SwitchApnRecord"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3989
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iput-object v12, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    .line 3990
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/ApnContext;

    .line 3991
    .local v7, tmp:Lcom/android/internal/telephony/ApnContext;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switchOffACs="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3993
    .end local v7           #tmp:Lcom/android/internal/telephony/ApnContext;
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3994
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/ApnContext;

    .line 3995
    .restart local v7       #tmp:Lcom/android/internal/telephony/ApnContext;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switchOffACs="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 4002
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #tmp:Lcom/android/internal/telephony/ApnContext;
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 4003
    .local v4, msg:Landroid/os/Message;
    const v8, 0x42000

    iput v8, v4, Landroid/os/Message;->what:I

    .line 4004
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4005
    invoke-virtual {v1, v4, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->bringUp(Landroid/os/Message;Lcom/android/internal/telephony/ApnSetting;)V

    .line 4007
    const-string v8, "setupData: initing!"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v8, v9

    .line 4008
    goto/16 :goto_0
.end method

.method private setupData(Ljava/lang/String;)Z
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1486
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1487
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCCW]setupData(), mCwRegState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1488
    iget v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    const/16 v6, 0x65

    if-ne v5, v6, :cond_1

    .line 1490
    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    if-nez v5, :cond_1

    .line 1491
    iget v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    if-lt v5, v4, :cond_0

    .line 1492
    const-string v4, "[HTCCW]sip invite retry too many times."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1494
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v5, "cwFeatureChange"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastDisconnectedForApns(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    :goto_0
    return v3

    .line 1497
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCwSip(I)V

    move v3, v4

    .line 1498
    goto :goto_0

    .line 1506
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v0

    .line 1508
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    if-nez v0, :cond_2

    .line 1509
    const-string v4, "setupData: No free CdmaDataConnection found!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1514
    :cond_2
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 1521
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v6, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 1523
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v2

    .line 1524
    .local v2, profileType:I
    const/16 v5, 0x3e8

    if-eq v2, v5, :cond_3

    .line 1525
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1528
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    .line 1547
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->makeApnSettingByProfileID(I)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 1549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call conn.bringUp mActiveApn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1552
    .local v1, msg:Landroid/os/Message;
    const v3, 0x42000

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1553
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1554
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->bringUp(Landroid/os/Message;Lcom/android/internal/telephony/ApnSetting;)V

    .line 1556
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1557
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    move v3, v4

    .line 1558
    goto :goto_0
.end method

.method private setupDataOnReadyApns(Ljava/lang/String;)V
    .locals 8
    .parameter "reason"

    .prologue
    .line 4014
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 4015
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4016
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 4020
    :cond_1
    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    if-eqz v6, :cond_0

    .line 4021
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v1

    .line 4023
    .local v1, apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    const/4 v3, 0x0

    .line 4024
    .local v3, hasDefault:Z
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4025
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4026
    const/4 v3, 0x1

    .line 4030
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_3
    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->configureRetry(Lcom/android/internal/telephony/DataConnection;Z)V

    goto :goto_0

    .line 4035
    .end local v1           #apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #hasDefault:Z
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4036
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_6

    .line 4041
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4043
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4044
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_5

    .line 4045
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 4046
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto :goto_1

    .line 4050
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_7
    return-void
.end method

.method private shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z
    .locals 1
    .parameter "cause"

    .prologue
    .line 1784
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V
    .locals 9
    .parameter "delay"
    .parameter "apnContext"

    .prologue
    const/4 v6, 0x0

    .line 4146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Schedule alarm for reconnect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": activate failed. Scheduling next attempt for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, p1, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4150
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v2

    .line 4152
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    if-nez v4, :cond_1

    .line 4154
    :cond_0
    const-string v4, "null dcac or dc."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 4178
    :goto_0
    return-void

    .line 4158
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 4165
    .local v1, am:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.cdma-reconnect"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4168
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "reason"

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4169
    const-string v4, "type"

    iget-object v5, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4172
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4174
    .local v0, alarmIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/DataConnectionAc;->setReconnectIntentSync(Landroid/app/PendingIntent;)V

    .line 4175
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, p1

    add-long/2addr v5, v7

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private startAlarmForReconnect(ILjava/lang/String;)V
    .locals 7
    .parameter "delay"
    .parameter "reason"

    .prologue
    const/4 v4, 0x0

    .line 1915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Connection activate failed. Scheduling next attempt for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, p1, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1918
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1920
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.cdma-reconnect"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1921
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1922
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1924
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1927
    return-void
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V
    .locals 0
    .parameter "cause"
    .parameter "apnContext"
    .parameter "retryOverride"

    .prologue
    .line 4197
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    .line 4198
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V

    .line 4199
    return-void
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)Z
    .locals 1
    .parameter "cause"
    .parameter "reason"

    .prologue
    .line 2898
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 2906
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcReconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private trySetupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 1
    .parameter "apnContext"

    .prologue
    .line 3412
    if-nez p1, :cond_0

    .line 3413
    const/4 v0, 0x0

    .line 3416
    :goto_0
    return v0

    .line 3415
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 3416
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private trySetupData(Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"

    .prologue
    .line 1162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private trySetupData(Ljava/lang/String;Z)Z
    .locals 12
    .parameter "reason"
    .parameter "isTimeoutRetry"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1175
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    if-nez v8, :cond_1

    .line 1176
    :cond_0
    const-string v8, "the  pointer is null, return"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1329
    :goto_0
    return v6

    .line 1181
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1182
    const-string v8, "***trySetupData not enabled for Airplane mode"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1187
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 1189
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "***trySetupData due to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p1, :cond_5

    const-string v8, "(unspecified)"

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1191
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1195
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_6

    .line 1196
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 1197
    const-string v8, "default"

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 1200
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 1202
    .local v1, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v1, :cond_4

    .line 1203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trySetupData new apn context for type:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1204
    new-instance v1, Lcom/android/internal/telephony/ApnContext;

    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v10, "CDMA"

    invoke-direct {v1, v8, v10}, Lcom/android/internal/telephony/ApnContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    .restart local v1       #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    :cond_4
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1208
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1214
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1217
    const-string v8, "(fix?) We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v6, v9

    .line 1218
    goto/16 :goto_0

    :cond_5
    move-object v8, p1

    .line 1189
    goto :goto_1

    .line 1210
    :cond_6
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto :goto_2

    .line 1222
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v5

    .line 1223
    .local v5, psState:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataRoamingState()Z

    move-result v7

    .line 1225
    .local v7, roaming:Z
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getDesiredPowerState()Z

    move-result v4

    .line 1231
    .local v4, desiredPowerState:Z
    const/16 v3, 0xa

    .line 1234
    .local v3, cdmaProfileType:I
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_e

    .line 1235
    const-string v8, "ruim card project, no profile switch needed"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1282
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    .line 1284
    .local v0, alwaysAllowProfile:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mHtcRadioAvaliable(true): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " retry cnt(0): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " isTimeoutRetry: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " allowTimeoutRetry: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allowTimeoutRetryActivity()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1286
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v10, :cond_9

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v10, :cond_9

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_14

    :cond_9
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v8, :cond_14

    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v8

    if-eqz v8, :cond_b

    if-eqz p2, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allowTimeoutRetryActivity()Z

    move-result v8

    if-eqz v8, :cond_14

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isEmergency()Z

    move-result v8

    if-nez v8, :cond_14

    invoke-direct {p0, v0, v6, v9, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcisDataAllowed(ZZZZ)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1301
    const/4 v6, 0x0

    .line 1302
    .local v6, retValue:Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_13

    .line 1303
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    if-nez v8, :cond_c

    .line 1304
    const-string v8, "default"

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 1307
    :cond_c
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 1309
    .restart local v1       #apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v1, :cond_d

    .line 1310
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "trySetupData new apn context for type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1311
    new-instance v1, Lcom/android/internal/telephony/ApnContext;

    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v9, "CDMA"

    invoke-direct {v1, v8, v9}, Lcom/android/internal/telephony/ApnContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    .restart local v1       #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    :cond_d
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1315
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->SetupDataCallRUIMCardBase(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v6

    .line 1316
    goto/16 :goto_0

    .line 1239
    .end local v0           #alwaysAllowProfile:Z
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v6           #retValue:Z
    :cond_e
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->profileDecisionByEnabledPriority(Ljava/lang/String;)I

    move-result v3

    .line 1242
    const/16 v8, 0xa

    if-ne v3, v8, :cond_f

    .line 1244
    const-string v8, "trySetupData: invalid profile"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1249
    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->makeApnSettingByProfileID(I)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v2

    .line 1251
    .local v2, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "try cdmaProfileType="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", current profile="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", mHtcRequestedNewApn="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1254
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1256
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v10, "psRestrictDisabled"

    invoke-direct {p0, v8, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastDisconnectedForApns(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 1261
    :cond_10
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v8

    if-eq v8, v3, :cond_12

    .line 1263
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v10, :cond_11

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v10, :cond_11

    .line 1265
    const-string v8, "apnSwitched"

    invoke-direct {p0, v9, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    move v6, v9

    .line 1266
    goto/16 :goto_0

    .line 1268
    :cond_11
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto/16 :goto_3

    .line 1271
    :cond_12
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v8, v10, :cond_8

    .line 1273
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trySetupData: already active profile="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    move v6, v9

    .line 1276
    goto/16 :goto_0

    .line 1319
    .end local v2           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .restart local v0       #alwaysAllowProfile:Z
    .restart local v6       #retValue:Z
    :cond_13
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->setCurrentProfile(I)V

    .line 1321
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupData(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_0

    .line 1326
    .end local v6           #retValue:Z
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mState"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mHtcRadioAvaliable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mDataConnections.get(0).getRetryCount()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateApnProxyInfo(Lcom/android/internal/telephony/ApnContext;)V
    .locals 10
    .parameter "apnContext"

    .prologue
    const/4 v9, 0x0

    .line 3243
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v2

    .line 3244
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-nez v2, :cond_0

    .line 3245
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "onDataSetupCompete: No dcac"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3247
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .line 3250
    .local v1, dc:Lcom/android/internal/telephony/DataConnection;
    const-string v7, "onDataSetupComplete: success apn=%s"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3253
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 3254
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    iget-object v6, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 3256
    :try_start_0
    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    .line 3257
    .local v4, port:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v4, "8080"

    .line 3258
    :cond_1
    new-instance v5, Landroid/net/ProxyProperties;

    iget-object v6, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3260
    .local v5, proxy:Landroid/net/ProxyProperties;
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/DataConnectionAc;->setLinkPropertiesHttpProxySync(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3266
    .end local v4           #port:Ljava/lang/String;
    .end local v5           #proxy:Landroid/net/ProxyProperties;
    :cond_2
    :goto_0
    return-void

    .line 3261
    :catch_0
    move-exception v3

    .line 3262
    .local v3, e:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePreferredApn(Lcom/android/internal/telephony/ApnContext;)V
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 3269
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3270
    const-string v0, "gsm.defaultpdpcontext.active"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-nez v0, :cond_0

    .line 3272
    const-string v0, "onDataSetupComplete: PREFERED APN is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3273
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 3274
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_0

    .line 3275
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v0, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPreferredApn(I)V

    .line 3282
    :cond_0
    :goto_0
    return-void

    .line 3279
    :cond_1
    const-string v0, "gsm.defaultpdpcontext.active"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private usedNumberOfDC()I
    .locals 4

    .prologue
    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, usedCount:I
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 182
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_1
    return v2
.end method

.method private writeEventLogCdmaDataDrop()V
    .locals 5

    .prologue
    .line 2744
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v0, v1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 2745
    .local v0, loc:Landroid/telephony/cdma/CdmaCellLocation;
    const v2, 0xc3bf

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2748
    return-void

    .line 2745
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method HtcApnHandling()V
    .locals 4

    .prologue
    .line 4263
    const-string v2, "dun"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4265
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v2, :cond_1

    .line 4266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcApnHandling: add dun into prefer(id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4267
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addDUNApnType([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 4284
    :cond_0
    :goto_0
    const-string v2, "gsm.allapns.created"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4285
    return-void

    .line 4269
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 4270
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v2, "default"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcApnHandling: add dun into default(id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4272
    iget-object v2, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addDUNApnType([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    goto :goto_1

    .line 4278
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "dun"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public HtcGetAnyDataEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "apntype"

    .prologue
    const/4 v1, 0x1

    .line 1087
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1092
    const/4 v0, 0x0

    .line 1093
    .local v0, isWhite:Z
    if-nez p1, :cond_2

    move v0, v1

    .line 1095
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    if-eqz v2, :cond_3

    .line 1096
    .local v1, result:Z
    :goto_1
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HtcGetAnyDataEnabled: result="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " apntype="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mInternalDataEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isWhite="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mUserDataEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sPolicyDataEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1103
    :cond_1
    monitor-exit v3

    return v1

    .line 1093
    .end local v1           #result:Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->whiteList_Check(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1095
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1104
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected HtcOnCleanUpAllConnections(Ljava/lang/String;)V
    .locals 3
    .parameter "cause"

    .prologue
    const/4 v1, 0x0

    .line 1082
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 1084
    return-void
.end method

.method public _getActiveApnTypesRUIM()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 3597
    const-string v3, "get all active apn types"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3598
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3600
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3601
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3602
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3606
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method protected allowTimeoutRetryActivity()Z
    .locals 1

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isSprintRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cleanUpAllConnections(ZLjava/lang/String;)V
    .locals 4
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 4053
    const-string v2, "cdmaDCT: cleanUpAllConnections"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4054
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 4055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpAllConnections: tearDown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4057
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4058
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 4059
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnectionByApnContext(ZLcom/android/internal/telephony/ApnContext;)V

    goto :goto_0

    .line 4062
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 4064
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 4068
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 4066
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public controlDataFromRoamGuard(ZZ)V
    .locals 3
    .parameter "enable"
    .parameter "userChange"

    .prologue
    const/4 v2, 0x0

    .line 3191
    if-eqz p1, :cond_1

    .line 3192
    if-eqz p2, :cond_0

    .line 3193
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 3194
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 3195
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 3198
    :cond_0
    const v0, 0x42003

    const-string v1, "roamGuardEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 3206
    :goto_0
    return-void

    .line 3202
    :cond_1
    const/4 v0, 0x1

    const-string v1, "roamGuardDisabled"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 3
    .parameter "type"

    .prologue
    .line 3382
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v1, :cond_2

    .line 3383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3384
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3386
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_1

    .line 3387
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setEnabled(IZ)V

    .line 3388
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_0

    .line 3389
    const-string v1, "diableApnType: return APN_REQUEST_STARTED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3390
    const/4 v1, 0x1

    .line 3403
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    monitor-exit p0

    return v1

    .line 3392
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    :try_start_1
    const-string v1, "disableApnType: return APN_ALREADY_INACTIVE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3393
    const/4 v1, 0x4

    goto :goto_0

    .line 3398
    :cond_1
    const-string v1, "disableApnType: no apn context was found, return APN_REQUEST_FAILED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3400
    const/4 v1, 0x3

    goto :goto_0

    .line 3403
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->disableApnType(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 3382
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 653
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 655
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 661
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_2

    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 669
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNVReady(Landroid/os/Handler;)V

    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 675
    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unRegisterForRadioTechnologyChanged(Landroid/os/Handler;)V

    .line 694
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMIPFailCause(Landroid/os/Handler;)V

    .line 715
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    .line 718
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    .line 721
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 727
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->destroyAllDataConnectionList()V

    .line 730
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 735
    :cond_1
    return-void

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 687
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    goto :goto_1
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter "apnType"

    .prologue
    const/4 v1, 0x1

    .line 3351
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_3

    .line 3352
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3353
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3354
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is type not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3356
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 3358
    const/4 v1, 0x2

    .line 3376
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    monitor-exit p0

    return v1

    .line 3362
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3364
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_2

    .line 3365
    const-string v1, "enableApnType: return APN_ALREADY_ACTIVE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3366
    const/4 v1, 0x0

    goto :goto_0

    .line 3368
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setEnabled(IZ)V

    .line 3370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType: new apn request for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return APN_REQUEST_STARTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3351
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3376
    :cond_3
    :try_start_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->enableApnType(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 739
    const-string v0, "CdmaDataConnectionTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method protected findReadyDataConnection(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 6
    .parameter "apn"

    .prologue
    const/4 v4, 0x0

    .line 3826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findReadyDataConnection: apn string <"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3828
    if-nez p1, :cond_1

    move-object v3, v4

    .line 3841
    :goto_1
    return-object v3

    .line 3826
    :cond_0
    const-string v3, "null"

    goto :goto_0

    .line 3831
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnectionAc;

    .line 3832
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 3834
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findReadyDataConnection: dc apn string <"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3837
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3838
    iget-object v3, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    goto :goto_1

    .line 3834
    :cond_3
    const-string v3, "null"

    goto :goto_2

    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_4
    move-object v3, v4

    .line 3841
    goto :goto_1
.end method

.method protected getActionIntentDataStallAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    const-string v0, "com.android.internal.telephony.cdma-data-stall"

    return-object v0
.end method

.method protected getActionIntentReconnectAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 744
    const-string v0, "com.android.internal.telephony.cdma-reconnect"

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3590
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_0

    .line 3591
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->_getActiveApnTypesRUIM()[Ljava/lang/String;

    move-result-object v0

    .line 3593
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getApnProfileID(Ljava/lang/String;)I
    .locals 1
    .parameter "apnType"

    .prologue
    .line 3813
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3814
    const/4 v0, 0x2

    .line 3820
    :goto_0
    return v0

    .line 3815
    :cond_0
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3816
    const/4 v0, 0x3

    goto :goto_0

    .line 3817
    :cond_1
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3818
    const/4 v0, 0x4

    goto :goto_0

    .line 3820
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCWRegistrationState()I
    .locals 1

    .prologue
    .line 4858
    const/4 v0, 0x0

    return v0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 3

    .prologue
    .line 3052
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3054
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    if-nez v1, :cond_0

    .line 3055
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3088
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState  ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3089
    return-object v0

    .line 3056
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3057
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3059
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3068
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcIsRingingButHaventReported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3069
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3062
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3063
    goto :goto_0

    .line 3072
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3074
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3076
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3078
    goto :goto_0

    .line 3083
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3059
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDataConnectionStateTime(Ljava/lang/String;)J
    .locals 5
    .parameter "apnType"

    .prologue
    const-wide/16 v2, -0x1

    .line 3130
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v0

    .line 3131
    .local v0, apnTypeId:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 3145
    :cond_0
    :goto_0
    return-wide v2

    .line 3136
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v1

    .line 3137
    .local v1, dataState:Lcom/android/internal/telephony/Phone$DataState;
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v1, v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v1, v4, :cond_0

    .line 3142
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    if-eqz v4, :cond_0

    .line 3143
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getConnectionTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method public declared-synchronized getDataEnabled()Z
    .locals 3

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 149
    .local v0, defaultAC:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 148
    .end local v0           #defaultAC:Lcom/android/internal/telephony/ApnContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 2

    .prologue
    .line 3210
    const/4 v0, 0x0

    .line 3213
    .local v0, allow:Z
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3215
    const-string v1, "VZW ADMIN type, disable data roaming"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3216
    const/4 v0, 0x0

    .line 3220
    :goto_0
    return v0

    .line 3218
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 5081
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    if-eqz v0, :cond_0

    .line 5082
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 5085
    :goto_0
    return-object v0

    .line 5084
    :cond_0
    const-string v0, "getDataServiceState: mDsst is null, return null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5085
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 306
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 308
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 310
    .local v1, dataConnectionAc:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_0

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active pdp is not null, return link Capabilities for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;

    move-result-object v2

    .line 318
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #dataConnectionAc:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 315
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    const-string v2, "return new LinkCapabilities"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 316
    new-instance v2, Landroid/net/LinkCapabilities;

    invoke-direct {v2}, Landroid/net/LinkCapabilities;-><init>()V

    goto :goto_0

    .line 318
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v2

    goto :goto_0
.end method

.method protected getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 288
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 290
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 292
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_0

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return link properites for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 300
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 297
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    const-string v2, "return new LinkProperties"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 298
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0

    .line 300
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v2

    goto :goto_0
.end method

.method public getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 7

    .prologue
    .line 4203
    const/4 v3, 0x0

    .line 4204
    .local v3, isConnecting:Z
    const/4 v4, 0x1

    .line 4205
    .local v4, isFailed:Z
    const/4 v2, 0x0

    .line 4206
    .local v2, isAnyEnabled:Z
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-nez v5, :cond_0

    .line 4207
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 4243
    :goto_0
    return-object v5

    .line 4209
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4210
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4211
    const/4 v2, 0x1

    .line 4212
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 4215
    :pswitch_1
    const-string v5, "overall state is CONNECTED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4216
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 4219
    :pswitch_2
    const/4 v3, 0x1

    .line 4220
    const/4 v4, 0x0

    .line 4221
    goto :goto_1

    .line 4224
    :pswitch_3
    const/4 v4, 0x0

    goto :goto_1

    .line 4230
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    if-nez v2, :cond_3

    .line 4231
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4232
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 4235
    :cond_3
    if-eqz v3, :cond_4

    .line 4236
    const-string v5, "overall state is CONNECTING"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4237
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 4238
    :cond_4
    if-nez v4, :cond_5

    .line 4239
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4240
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 4242
    :cond_5
    const-string v5, "overall state is FAILED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4243
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 4212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 764
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v1, :cond_3

    .line 766
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :goto_0
    monitor-exit p0

    return-object v1

    .line 770
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 774
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 775
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_2

    .line 776
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    goto :goto_0

    .line 778
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 780
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 764
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 1940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1941
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-nez v0, :cond_0

    .line 1942
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1943
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1944
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 1945
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 2913
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CdmaDCT handleMessage msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2915
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v6, v6, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsDisposed:Z

    if-eqz v6, :cond_2

    .line 2916
    :cond_0
    const-string v5, "Ignore CDMA msgs since CDMA phone is inactive"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3030
    :cond_1
    :goto_0
    return-void

    .line 2920
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 3027
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2923
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 2927
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onNVReady()V

    goto :goto_0

    .line 2931
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCdmaDataDetached()V

    goto :goto_0

    .line 2935
    :sswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDataStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2939
    :sswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCdmaOtaProvision(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2943
    :sswitch_5
    const-string v5, "EVENT_RESTART_RADIO"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2944
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRestartRadio()V

    goto :goto_0

    .line 2947
    :sswitch_6
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    goto :goto_0

    .line 2953
    :sswitch_7
    const/4 v4, 0x0

    .line 2954
    .local v4, retryReason:Ljava/lang/String;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 2955
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4           #retryReason:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 2957
    .restart local v4       #retryReason:Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdma retry setup data call for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2959
    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allowTimeoutRetryActivity()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2960
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto :goto_0

    .line 2966
    .end local v4           #retryReason:Ljava/lang/String;
    :sswitch_8
    const-string v5, "EVENT_ERI_UPDATE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2967
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->eriUpdate(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2972
    :sswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onApnChanged()V

    goto :goto_0

    .line 2975
    :sswitch_a
    const/4 v3, 0x0

    .line 2976
    .local v3, reason:Ljava/lang/String;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/internal/telephony/ApnContext;

    if-eqz v5, :cond_4

    .line 2977
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onTrySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto/16 :goto_0

    .line 2979
    :cond_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 2980
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3           #reason:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 2982
    .restart local v3       #reason:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2989
    .end local v3           #reason:Ljava/lang/String;
    :sswitch_b
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_1

    .line 2991
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->doRecovery()V

    goto/16 :goto_0

    .line 2999
    :sswitch_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCCW]EVENT_CW_REG_STATE_CHANGED, arg1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3000
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCWRegStateChanged(I)V

    goto/16 :goto_0

    .line 3003
    :sswitch_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCCW]EVENT_CW_WIFI_STATE_CHANGED, arg1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3004
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v2, :cond_6

    .line 3005
    .local v2, htccwWifi:Z
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCWWifiStateChanged(Z)V

    goto/16 :goto_0

    .end local v2           #htccwWifi:Z
    :cond_6
    move v2, v5

    .line 3004
    goto :goto_1

    .line 3008
    :sswitch_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCCW]EVENT_CW_SIP, arg1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3009
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCwSip(I)V

    goto/16 :goto_0

    .line 3012
    :sswitch_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCCW]EVENT_HTCCW_ENABLE, arg1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3013
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v2, :cond_7

    move v0, v2

    .line 3014
    .local v0, htccwEnabled:Z
    :goto_2
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_8

    move v1, v2

    .line 3015
    .local v1, htccwInvite:Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onSetHtcCWDataEnabled(ZZ)V

    goto/16 :goto_0

    .end local v0           #htccwEnabled:Z
    .end local v1           #htccwInvite:Z
    :cond_7
    move v0, v5

    .line 3013
    goto :goto_2

    .restart local v0       #htccwEnabled:Z
    :cond_8
    move v1, v5

    .line 3014
    goto :goto_3

    .line 3021
    .end local v0           #htccwEnabled:Z
    :sswitch_10
    const-string v5, "CDMA EVENT_RADIO_TECH_CHANGED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3022
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRadioTechChanged()V

    goto/16 :goto_0

    .line 2920
    nop

    :sswitch_data_0
    .sparse-switch
        0x42002 -> :sswitch_0
        0x42003 -> :sswitch_a
        0x42004 -> :sswitch_3
        0x42012 -> :sswitch_b
        0x42013 -> :sswitch_9
        0x42014 -> :sswitch_2
        0x42015 -> :sswitch_1
        0x42019 -> :sswitch_4
        0x4201a -> :sswitch_5
        0x42023 -> :sswitch_6
        0x42026 -> :sswitch_7
        0x42027 -> :sswitch_8
        0x42028 -> :sswitch_c
        0x42029 -> :sswitch_d
        0x4202a -> :sswitch_f
        0x4202b -> :sswitch_e
        0x4202d -> :sswitch_0
        0x4202e -> :sswitch_10
    .end sparse-switch
.end method

.method protected htcConnectionRequest()V
    .locals 1

    .prologue
    .line 1980
    const v0, 0x42003

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1981
    return-void
.end method

.method protected htcRequireDisconnect_disablingApn(I)Z
    .locals 6
    .parameter "apnId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2018
    const/4 v1, 0x1

    .line 2019
    .local v1, needscleanup:Z
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v4, :cond_1

    .line 2045
    :cond_0
    :goto_0
    return v2

    .line 2022
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-nez v4, :cond_2

    move v2, v3

    .line 2023
    goto :goto_0

    .line 2025
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v4, 0x10

    if-ge v0, v4, :cond_4

    .line 2028
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2030
    const/4 v1, 0x0

    .line 2025
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2035
    :cond_4
    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v4

    if-ne v4, v2, :cond_5

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2038
    const/4 v1, 0x1

    .line 2040
    :cond_5
    if-nez v1, :cond_0

    .line 2042
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCleanUpConnection not accepted:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->logEnabledApnStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v2, v3

    .line 2043
    goto :goto_0
.end method

.method protected initApnContextsAndDataConnection()V
    .locals 11

    .prologue
    .line 3478
    const-string v9, "net.def_data_on_boot"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3486
    .local v3, defaultEnabled:Z
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070032

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 3489
    .local v8, networkConfigStrings:[Ljava/lang/String;
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v7, v1, v4

    .line 3490
    .local v7, networkConfigString:Ljava/lang/String;
    new-instance v6, Landroid/net/NetworkConfig;

    invoke-direct {v6, v7}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 3491
    .local v6, networkConfig:Landroid/net/NetworkConfig;
    const/4 v0, 0x0

    .line 3493
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    iget v9, v6, Landroid/net/NetworkConfig;->type:I

    packed-switch v9, :pswitch_data_0

    .line 3489
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3495
    :pswitch_1
    const-string v9, "default"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 3496
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnContext;->setEnabled(Z)V

    .line 3497
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ConnectivityManager.TYPE_MOBILE + apncontext:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3531
    :goto_2
    if-eqz v0, :cond_1

    .line 3533
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, v6, Landroid/net/NetworkConfig;->dependencyMet:Z

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onSetDependencyMet(Ljava/lang/String;Z)V

    .line 3534
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "networkConfig.dependencyMet"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v6, Landroid/net/NetworkConfig;->dependencyMet:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3500
    :pswitch_2
    const-string v9, "mms"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 3501
    goto :goto_2

    .line 3503
    :pswitch_3
    const-string v9, "supl"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 3504
    goto :goto_2

    .line 3506
    :pswitch_4
    const-string v9, "dun"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 3507
    goto :goto_2

    .line 3509
    :pswitch_5
    const-string v9, "hipri"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 3510
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v10, "default"

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 3511
    .local v2, defaultContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v2, :cond_0

    .line 3512
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v9

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v10

    invoke-direct {p0, v0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto/16 :goto_1

    .line 3519
    .end local v2           #defaultContext:Lcom/android/internal/telephony/ApnContext;
    :pswitch_6
    const-string v9, "fota"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 3520
    goto :goto_2

    .line 3522
    :pswitch_7
    const-string v9, "ims"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 3523
    goto :goto_2

    .line 3525
    :pswitch_8
    const-string v9, "cbs"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 3526
    goto :goto_2

    .line 3536
    :cond_1
    const-string v9, "apnContext is null"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3539
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v6           #networkConfig:Landroid/net/NetworkConfig;
    .end local v7           #networkConfigString:Ljava/lang/String;
    :cond_2
    return-void

    .line 3493
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 794
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_2

    .line 795
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 796
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_1

    .line 799
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    :goto_0
    return v1

    .line 797
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 799
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 8
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3700
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_4

    .line 3701
    const-string v7, "dun"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 3719
    :cond_0
    :goto_0
    return v5

    .line 3705
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 3706
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 3707
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    move v5, v6

    .line 3712
    goto :goto_0

    .line 3714
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    .line 3715
    .local v4, s:Ljava/lang/String;
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3714
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4           #s:Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 3719
    goto :goto_0
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "apnType"

    .prologue
    const/4 v1, 0x0

    .line 3458
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_2

    .line 3460
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3461
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcisAnyTypeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3462
    const/4 v1, 0x1

    .line 3473
    :cond_0
    :goto_0
    return v1

    .line 3466
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3467
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 3470
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    goto :goto_0

    .line 3473
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected isConnected()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4710
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v4, :cond_3

    .line 4711
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4712
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_0

    .line 4720
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    move v2, v3

    .line 4718
    goto :goto_0

    .line 4720
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method protected isDataAllowed()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 885
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v8

    .line 886
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    .line 887
    .local v2, internalDataEnabled:Z
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v3

    .line 893
    .local v3, psState:I
    const/4 v5, 0x0

    .line 894
    .local v5, roaming:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 895
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    .line 901
    :goto_0
    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v8

    if-nez v8, :cond_10

    move v5, v6

    .line 906
    :goto_1
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HTC_CUSTOMIZATION_ALLOW_ADMIN_IN_ROAMING:Z

    if-eqz v8, :cond_0

    .line 907
    const/4 v5, 0x0

    .line 909
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getDesiredPowerState()Z

    move-result v1

    .line 911
    .local v1, desiredPowerState:Z
    if-eqz v3, :cond_1

    iget-boolean v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    if-eqz v8, :cond_11

    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getNvState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isNVReady()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreCDMAReadyState()Z

    move-result v8

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v8, :cond_11

    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_11

    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v5, :cond_11

    :cond_4
    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-nez v8, :cond_11

    move v0, v6

    .line 939
    .local v0, allowed:Z
    :goto_2
    if-nez v0, :cond_e

    .line 940
    const-string v4, ""

    .line 941
    .local v4, reason:Ljava/lang/String;
    if-eqz v3, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    if-nez v6, :cond_5

    .line 942
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - psState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 944
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getNvState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isNVReady()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v6

    if-nez v6, :cond_6

    .line 946
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - radioState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getNvState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - RUIM not loaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 948
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v6, v7, :cond_7

    .line 950
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - concurrentVoiceAndData not allowed and state= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 954
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v5, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - Roaming"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 956
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - VZW global roaming"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 957
    :cond_9
    if-nez v2, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - mInternalDataEnabled= false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 958
    :cond_a
    if-nez v1, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - desiredPowerState= false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 959
    :cond_b
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - mPendingRestartRadio= true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 960
    :cond_c
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->needsOtaServiceProvisioning()Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - needs Provisioning"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 961
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data not allowed due to"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 963
    .end local v4           #reason:Ljava/lang/String;
    :cond_e
    return v0

    .line 887
    .end local v0           #allowed:Z
    .end local v1           #desiredPowerState:Z
    .end local v2           #internalDataEnabled:Z
    .end local v3           #psState:I
    .end local v5           #roaming:Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 898
    .restart local v2       #internalDataEnabled:Z
    .restart local v3       #psState:I
    .restart local v5       #roaming:Z
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataRoamingState()Z

    move-result v5

    goto/16 :goto_0

    :cond_10
    move v5, v7

    .line 901
    goto/16 :goto_1

    .restart local v1       #desiredPowerState:Z
    :cond_11
    move v0, v7

    .line 911
    goto/16 :goto_2
.end method

.method public isDataConnectionAsDesired()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 830
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataRoamingState()Z

    move-result v0

    .line 832
    .local v0, roaming:Z
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 847
    :cond_0
    :goto_0
    return v1

    .line 834
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isNVReady()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreCDMAReadyState()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    if-nez v2, :cond_0

    .line 845
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isDataPossible(Ljava/lang/String;)Z
    .locals 3
    .parameter "apnType"

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v0

    .line 1116
    .local v0, possible:Z
    if-nez v0, :cond_0

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data not possible.  No coverage: dataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1119
    :cond_0
    return v0
.end method

.method public isDisconnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3035
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v4, :cond_3

    .line 3036
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3037
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3045
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    move v2, v3

    .line 3043
    goto :goto_0

    .line 3045
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3124
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 4798
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDataConnectionTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    return-void
.end method

.method protected needToDeferUserIntention()Z
    .locals 1

    .prologue
    .line 5012
    const/4 v0, 0x1

    return v0
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 6
    .parameter "reason"

    .prologue
    .line 3666
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_2

    .line 3667
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3668
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOffApnOfAvailability type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3670
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_0

    move-object v2, p1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3675
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOffApnsOfAvailability skipped apn due to isReady==false: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3681
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 3683
    :cond_3
    return-void
.end method

.method protected onCWRegStateChanged(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 4803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCCW]cw reg status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4805
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    if-ne v1, v4, :cond_2

    if-eq p1, v4, :cond_0

    const/16 v1, 0x69

    if-ne p1, v1, :cond_2

    .line 4809
    :cond_0
    const-string v1, "[HTCCW]already receive REGISTER_SUCC, ignore REGISTER_SUCC and REGISTERING."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4835
    :cond_1
    :goto_0
    return-void

    .line 4813
    :cond_2
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    .line 4817
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    .line 4819
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    if-ne v1, v4, :cond_3

    .line 4820
    const-string v1, "[HTCCW]device is registered to cw server, triggering htc c+w datacall"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4821
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setSipFlag(Z)V

    .line 4823
    const-string v1, "[HTCCW]reset sip invite retry timer"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4824
    iput v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    .line 4826
    const v1, 0x4202a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4827
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 4828
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 4829
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4830
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getSipFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4831
    const-string v1, "[HTCCW]deivce is not registered to cw server, deactivate htc c+w datacall"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4832
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onSetHtcCWDataEnabled(Z)V

    goto :goto_0
.end method

.method protected onCWWifiStateChanged(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    const/4 v1, 0x0

    .line 4839
    if-eqz p1, :cond_0

    .line 4840
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsCwSsidConnected:Z

    .line 4855
    :goto_0
    return-void

    .line 4846
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    .line 4847
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    .line 4849
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getSipFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4850
    const-string v0, "[HTCCW]c+w SSID is disconnected, deactivate htc c+w datacall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4851
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onSetHtcCWDataEnabled(Z)V

    .line 4854
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsCwSsidConnected:Z

    goto :goto_0
.end method

.method protected onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 2648
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 2649
    return-void
.end method

.method protected onCleanUpConnection(ZILjava/lang/String;)V
    .locals 3
    .parameter "tearDown"
    .parameter "apnId"
    .parameter "reason"

    .prologue
    .line 2625
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v1, :cond_1

    .line 2626
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2627
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 2628
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2629
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnectionByApnContext(ZLcom/android/internal/telephony/ApnContext;)V

    .line 2642
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    :goto_0
    return-void

    .line 2632
    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "radioTurnedOff"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2634
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcRequireDisconnect_disablingApn(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCleanUpConnection not accepted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->logEnabledApnStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2640
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onCwSip(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    .line 4928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCCW]onCwSip(), type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4930
    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    const/16 v4, 0x65

    if-eq v3, v4, :cond_1

    .line 4931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCCW]CW server is not connected, drop sip request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4984
    :cond_0
    :goto_0
    return-void

    .line 4935
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteService:Lcom/htc/cw/ICWService;

    if-nez v3, :cond_3

    .line 4936
    const-string v3, "[HTCCW]mRemoteService == null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4938
    if-ne p1, v5, :cond_2

    .line 4939
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_CW_SIP_INVITE_RESULT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4940
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "cw_sip_invite_result"

    const/16 v4, 0xca

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4941
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 4945
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.cw.CWService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 4946
    .local v2, ret:Z
    if-nez v2, :cond_0

    .line 4947
    const-string v3, "CDMA"

    const-string v4, "[HTCCW]fail to bind to CW service for SIP operation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4949
    .end local v2           #ret:Z
    :catch_0
    move-exception v0

    .line 4950
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "CDMA"

    const-string v4, "[HTCCW]no permission to bind CW service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4956
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 4981
    const-string v3, "[HTCCW]unknow SIP request type"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4958
    :pswitch_0
    const-string v3, "[HTCCW]calling SIP invite"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4960
    :try_start_1
    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    .line 4961
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteService:Lcom/htc/cw/ICWService;

    invoke-interface {v3}, Lcom/htc/cw/ICWService;->invite()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4962
    :catch_1
    move-exception v0

    .line 4963
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "[HTCCW]exception raised when calling SIP invite"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4964
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4969
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    .line 4971
    const-string v3, "[HTCCW]calling SIP bye"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4973
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteService:Lcom/htc/cw/ICWService;

    invoke-interface {v3}, Lcom/htc/cw/ICWService;->bye()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 4974
    :catch_2
    move-exception v0

    .line 4975
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v3, "[HTCCW]exception raised when calling SIP bye"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4976
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4956
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2284
    const/4 v4, 0x0

    .line 2286
    .local v4, reason:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2288
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCdmaPhone.mHtcRadio.hasFlightModeRequested():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2289
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2290
    const-string v6, "hasFlightModeRequested, do not update the data state"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2426
    :goto_0
    return-void

    .line 2294
    :cond_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v6, :cond_3

    .line 2295
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/internal/telephony/ApnContext;

    if-eqz v6, :cond_2

    .line 2296
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2307
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataSetupCompleteOk(Landroid/os/AsyncResult;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2308
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v6, :cond_4

    .line 2309
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->updateApnProxyInfo(Lcom/android/internal/telephony/ApnContext;)V

    .line 2310
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->updatePreferredApn(Lcom/android/internal/telephony/ApnContext;)V

    .line 2311
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDefaultData(Lcom/android/internal/telephony/ApnContext;)V

    .line 2319
    :goto_2
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->UpdateDataRoamingSound(Z)V

    goto :goto_0

    .line 2298
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "onDataSetupComplete: No apnContext"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2301
    :cond_3
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 2302
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v4           #reason:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #reason:Ljava/lang/String;
    goto :goto_1

    .line 2314
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDefaultData(Ljava/lang/String;)V

    goto :goto_2

    .line 2328
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v7, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 2329
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2331
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v2, v6

    check-cast v2, Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 2332
    .local v2, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data Connection setup failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2343
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v6, :cond_d

    .line 2345
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2347
    iput-boolean v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    .line 2354
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2355
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v6

    if-nez v6, :cond_9

    .line 2357
    const-string v6, "onDataSetupComplete: All APN\'s had permanent failures, stop retrying"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2359
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2361
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq v2, v6, :cond_7

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne v2, v6, :cond_8

    .line 2364
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v7, "datt not subcribed"

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    :goto_3
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2372
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 2375
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcTryPendingEnabled(Lcom/android/internal/telephony/ApnContext;)V

    .line 2380
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget-object v1, v6, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2384
    .local v1, apnString:Ljava/lang/String;
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDataSetupComplete: permanent error apn=%s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2408
    .end local v1           #apnString:Ljava/lang/String;
    :goto_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcUpdateConnectedProp()V

    goto/16 :goto_0

    .line 2368
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v7, "apnFailed"

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2381
    :catch_0
    move-exception v3

    .line 2382
    .local v3, e:Ljava/lang/Exception;
    const-string v1, "<unknown>"

    .restart local v1       #apnString:Ljava/lang/String;
    goto :goto_4

    .line 2387
    .end local v1           #apnString:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_9
    const-string v6, "onDataSetupComplete: Not all permanent failures, retry"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2389
    const/4 v5, -0x1

    .line 2390
    .local v5, retryOverride:I
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    if-eqz v6, :cond_a

    .line 2391
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection$CallSetupException;->getRetryOverride()I

    move-result v5

    .line 2394
    :cond_a
    const v6, 0x7fffffff

    if-ne v5, v6, :cond_b

    .line 2395
    const-string v6, "No retry is suggested."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 2397
    :cond_b
    invoke-direct {p0, v2, v0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V

    goto :goto_5

    .line 2401
    .end local v5           #retryOverride:I
    :cond_c
    const-string v6, "onDataSetupComplete: Try next APN"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2402
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2405
    sget v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->APN_DELAY_MILLIS:I

    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    goto :goto_5

    .line 2411
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->forceAlwaysRetryDelay()I

    move-result v6

    if-gez v6, :cond_e

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2414
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 2418
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2419
    const-string v6, "apnFailed"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2423
    :cond_e
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method protected onDataStateChanged(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 2751
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    move-object v2, v7

    check-cast v2, Ljava/util/ArrayList;

    .line 2753
    .local v2, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    .line 2888
    :cond_0
    :goto_0
    return-void

    .line 2760
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2761
    const/4 v5, 0x0

    .line 2762
    .local v5, isActiveOrDormantConnectionPresent:Z
    const/4 v1, 0x0

    .line 2766
    .local v1, connectionState:I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 2767
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataCallState;

    iget v1, v7, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 2768
    if-eqz v1, :cond_3

    .line 2769
    const/4 v5, 0x1

    .line 2774
    :cond_2
    if-nez v5, :cond_4

    .line 2776
    const-string v7, "onDataStateChanged: No active connectionstate is CONNECTED, disconnecting/cleanup"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2778
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->writeEventLogCdmaDataDrop()V

    .line 2779
    invoke-direct {p0, v9, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0

    .line 2766
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2783
    :cond_4
    packed-switch v1, :pswitch_data_0

    .line 2812
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDataStateChanged: IGNORE unexpected DataCallState.active="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2785
    :pswitch_0
    const-string v7, "onDataStateChanged: active=LINK_ACTIVE && CONNECTED, ignore"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2786
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 2788
    monitor-enter p0

    .line 2789
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-eqz v7, :cond_5

    .line 2790
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 2791
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 2793
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2795
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 2797
    monitor-enter p0

    .line 2798
    const/4 v7, 0x0

    :try_start_1
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 2799
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2801
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    .line 2793
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 2799
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 2805
    :pswitch_1
    const-string v7, "onDataStateChanged active=LINK_DOWN && CONNECTED, dormant"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2806
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 2807
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 2808
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    goto/16 :goto_0

    .line 2818
    .end local v1           #connectionState:I
    .end local v4           #index:I
    .end local v5           #isActiveOrDormantConnectionPresent:Z
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDataStateChanged: not connected, state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2820
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 2821
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 2828
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcModemLink:Lcom/android/internal/telephony/cdma/HtcModemLink;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcModemLink:Lcom/android/internal/telephony/cdma/HtcModemLink;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/HtcModemLink;->isModemLinkOn()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2830
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    .line 2834
    :pswitch_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v9, :cond_0

    .line 2835
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataCallState;

    iget v7, v7, Lcom/android/internal/telephony/DataCallState;->active:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 2836
    const/4 v3, 0x0

    .line 2837
    .local v3, deactiveData:Z
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataCallState;

    iget v0, v7, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 2838
    .local v0, cid:I
    const-string v8, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clear unexpected connection "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", rty="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", lnkErr="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    .line 2842
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReasonInPendingIntent:Ljava/lang/String;

    .line 2843
    .local v6, reason:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v7

    if-eqz v7, :cond_a

    .line 2845
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v7, v8, :cond_8

    .line 2848
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 2852
    :cond_8
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2853
    const/4 v3, 0x1

    .line 2861
    :cond_9
    :goto_2
    if-eqz v3, :cond_0

    .line 2868
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    if-eqz v7, :cond_b

    .line 2870
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    const-string v8, "linkPropertiesChanged"

    const v9, 0x4200f

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getDataConnectionId()I

    move-result v10

    invoke-virtual {p0, v9, v10, v11, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 2879
    :goto_3
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto/16 :goto_0

    .line 2858
    :cond_a
    const/4 v3, 0x1

    goto :goto_2

    .line 2875
    :cond_b
    const-string v7, "mPendingDataConnection is null , ignore disconnect request"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 2783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2830
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 10
    .parameter "connId"
    .parameter "ar"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 2434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_DISCONNECT_DONE connId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2435
    const/4 v2, 0x0

    .line 2436
    .local v2, reason:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2437
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_8

    .line 2438
    iget-object v5, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/internal/telephony/ApnContext;

    if-eqz v5, :cond_7

    .line 2439
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2451
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2452
    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    if-eqz v5, :cond_1

    .line 2453
    const-string v5, "[HTCCW]an c+w datacall is deactivated, calling SIP \"bye\" to finish SIP process"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2454
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCwSip(I)V

    .line 2467
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 2468
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2469
    if-eqz v2, :cond_2

    const-string v5, "dataDisabled"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2470
    monitor-enter p0

    .line 2471
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    const-string v5, "default"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveMobileAllowStatusChange(Z)V

    .line 2473
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2474
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->reEnableGuardDialog(Z)V

    .line 2477
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_a

    .line 2478
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2482
    :goto_2
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_3

    .line 2484
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcUpdateConnectedProp()V

    .line 2490
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v5, :cond_4

    const v5, 0x4201a

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->removeMessages(I)V

    .line 2492
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2498
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 2499
    .local v3, ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2500
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 2501
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_5

    .line 2503
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 2504
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2505
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 2516
    :cond_5
    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->UpdateDataRoamingSound(Z)V

    .line 2519
    iput-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 2520
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_10

    .line 2522
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->dumpSwitchApnRecord()V

    .line 2523
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isSwitchOff(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2525
    const-string v5, "gsm.defaultpdpcontext.active"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    sget v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->APN_DELAY_MILLIS:I

    invoke-direct {p0, v5, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    .line 2547
    :goto_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    if-eqz v5, :cond_f

    .line 2548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDisconnectDone: trySetupData for pending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2551
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v5}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 2553
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v5}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 2564
    .end local v3           #ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    :cond_6
    :goto_5
    return-void

    .line 2441
    :cond_7
    const-string v5, "Invalid ar in onDisconnectDone"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 2445
    :cond_8
    iget-object v5, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2446
    iget-object v2, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #reason:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #reason:Ljava/lang/String;
    goto/16 :goto_0

    :cond_9
    move v5, v7

    .line 2471
    goto/16 :goto_1

    .line 2473
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 2480
    :cond_a
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto/16 :goto_2

    .line 2508
    .restart local v3       #ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRestartRadio()V

    goto/16 :goto_3

    .line 2532
    :cond_c
    const-string v5, "clean (switchoff\'s) apn/dc/dcac"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2533
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_d
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ApnContext;

    .line 2534
    .local v4, switched:Lcom/android/internal/telephony/ApnContext;
    if-eq v4, v0, :cond_d

    .line 2535
    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 2536
    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2537
    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_6

    .line 2541
    .end local v4           #switched:Lcom/android/internal/telephony/ApnContext;
    :cond_e
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 2542
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2543
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto/16 :goto_4

    .line 2555
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcTryPendingEnabled(Lcom/android/internal/telephony/ApnContext;)V

    goto :goto_5

    .line 2559
    :cond_10
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2561
    sget v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->APN_DELAY_MILLIS:I

    invoke-direct {p0, v5, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILjava/lang/String;)V

    goto :goto_5
.end method

.method protected onEnableApn(II)V
    .locals 4
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    .line 3796
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_2

    .line 3797
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3798
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_0

    .line 3799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnableApn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): NO ApnContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 3810
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return-void

    .line 3803
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnableApn: apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call applyNewState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3804
    if-ne p2, v1, :cond_1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 3807
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableApn(II)V

    goto :goto_0
.end method

.method protected onEnableNewApn()V
    .locals 3

    .prologue
    .line 1996
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1998
    const-string v1, "[HTCCW]reset sip invite retry timer"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1999
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    .line 2004
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 2005
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    move-result v0

    .line 2006
    .local v0, setupResult:Z
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2007
    if-nez v0, :cond_1

    .line 2008
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v2, "psRestrictDisabled"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastDisconnectedForApns(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 2013
    :cond_2
    return-void
.end method

.method protected onNVReady()V
    .locals 2

    .prologue
    .line 1969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    .line 1970
    const-string v0, "CDMA"

    const-string v1, "onNVReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 1973
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1975
    :cond_0
    const v0, 0x42003

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1976
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    .line 2230
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2233
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-nez v0, :cond_0

    .line 2234
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2235
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2237
    const-string v0, "We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2243
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 2247
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_2

    .line 2248
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2252
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2253
    const v0, 0x42003

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2256
    :cond_3
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2265
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    .line 2267
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2269
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2272
    const-string v0, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2277
    :goto_0
    return-void

    .line 2274
    :cond_0
    const-string v0, "Radio is off and clean up all connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRadioTechChanged()V
    .locals 1

    .prologue
    .line 4704
    const-string v0, "CDMA onRadioTechChanged"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4705
    const-string v0, "RadioTechChange"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 4706
    return-void
.end method

.method protected onRecordsLoaded()V
    .locals 2

    .prologue
    .line 1950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    .line 1954
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_0

    .line 1955
    const-string v0, "onRecordsLoaded: createAllApnList"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1956
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllApnList()V

    .line 1957
    const-string v0, "simLoaded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 1964
    :goto_0
    return-void

    .line 1959
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    .line 1960
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1962
    :cond_1
    const v0, 0x42003

    const-string v1, "simLoaded"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onRoamingOff()V
    .locals 1

    .prologue
    .line 2107
    const-string v0, "Roaming Off"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    .line 2111
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2112
    const-string v0, "globalRoamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 2124
    :goto_0
    return-void

    .line 2114
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2117
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 2119
    const-string v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 2121
    :cond_1
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRoamingOn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2131
    const-string v0, "Roaming On"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2133
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v0, :cond_0

    .line 2135
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRecordsLoaded()V

    .line 2138
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2140
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isExtendedNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2141
    const-string v0, "Extended Network, consider it as none-roaming"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    .line 2147
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    if-eqz v0, :cond_4

    .line 2148
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getGlobalDataRoamingOption()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2149
    :cond_1
    const-string v0, "Tear down data connection on global roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2150
    const-string v0, "globalRoamingOn"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 2171
    :cond_2
    :goto_1
    return-void

    .line 2144
    :cond_3
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    goto :goto_0

    .line 2153
    :cond_4
    const-string v0, "the global data roaming is enabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2154
    const-string v0, "globalRoamingOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_1

    .line 2158
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2159
    const-string v0, "roamingOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 2160
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_1

    .line 2162
    :cond_6
    const-string v0, "Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2166
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 3
    .parameter "apnType"
    .parameter "met"

    .prologue
    .line 3440
    const-string v1, "hipri"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3454
    :cond_0
    :goto_0
    return-void

    .line 3442
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3443
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_2

    .line 3444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDependencyMet: ApnContext not found in onSetDependencyMet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3448
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    .line 3449
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3451
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "hipri"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3452
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto :goto_0
.end method

.method public onSetHtcCWDataEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 4886
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onSetHtcCWDataEnabled(ZZ)V

    .line 4887
    return-void
.end method

.method public onSetHtcCWDataEnabled(ZZ)V
    .locals 4
    .parameter "enable"
    .parameter "reconnect"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCCW]onSetHtcCWDataEnabled: enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4893
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->needToDeferUserIntention()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_2

    .line 4894
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mdeferCWDataCall:Z

    .line 4895
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDeferCWIntention:Z

    .line 4896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCCW]onSetHtcCWDataEnabled: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defer cwDataCallRequest, intention is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4924
    :cond_1
    :goto_0
    return-void

    .line 4901
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCCW]onSetHtcCWDataEnabled: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4902
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_3

    .line 4903
    const-string v0, "[HTCCW]onSetHtcCWDataEnabled: state=State.FAILED, clean up data connection now"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4904
    const-string v0, "cwFeatureChange"

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 4905
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 4906
    const v0, 0x42003

    const-string v1, "cwFeatureChange"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4907
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_4

    .line 4908
    const-string v0, "[HTCCW]onSetHtcCWDataEnabled: state=State.CONNECTED, clean up data connection now"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4909
    const-string v0, "cwFeatureChange"

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0

    .line 4910
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    .line 4911
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 4912
    const-string v0, "[HTCCW]onSetHtcCWDataEnabled: state=State.IDLE, retry setup data connection now"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4914
    const-string v0, "cwFeatureChange"

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 4916
    :cond_5
    const-string v0, "[HTCCW]onSetHtcCWDataEnabled: state=State.IDLE, setup data connection now"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4917
    if-nez p1, :cond_6

    .line 4918
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setSipFlag(Z)V

    .line 4920
    :cond_6
    const-string v0, "cwFeatureChange"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onTrySetupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 3408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrySetupData: apnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3409
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v0

    return v0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 5
    .parameter "reason"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2065
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2067
    iput v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    .line 2072
    :cond_0
    if-eqz p1, :cond_3

    const-string v2, "dataEnabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 2073
    .local v0, enableDataByUser:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2074
    monitor-enter p0

    .line 2075
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveMobileAllowStatusChange(Z)V

    .line 2077
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2079
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_5

    .line 2080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTrySetupData: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2081
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 2097
    :cond_2
    :goto_2
    return v1

    .end local v0           #enableDataByUser:Z
    :cond_3
    move v0, v3

    .line 2072
    goto :goto_0

    .restart local v0       #enableDataByUser:Z
    :cond_4
    move v2, v3

    .line 2075
    goto :goto_1

    .line 2077
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2084
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v4, :cond_6

    .line 2085
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2086
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2089
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v1

    .line 2091
    .local v1, result:Z
    if-nez v1, :cond_2

    .line 2092
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 2094
    const-string v2, "dataConnectionDenied"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    .prologue
    .line 2587
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2588
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2591
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPollwithoutResetPollStatus()V

    .line 2593
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2605
    :cond_0
    :goto_0
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 2620
    :goto_1
    return-void

    .line 2598
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 2599
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPollwithoutResetPollStatus()V

    goto :goto_0

    .line 2610
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcisAnyTypeEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2612
    const-string v0, "2G voice call end while no enabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2613
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 2616
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2618
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method protected onVoiceCallStarted()V
    .locals 1

    .prologue
    .line 2571
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2572
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 2573
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2576
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 2580
    :cond_0
    return-void
.end method

.method protected restartRadio()V
    .locals 3

    .prologue
    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleanup connection and wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s to restart radio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1666
    const-string v0, "radioTurnedOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1667
    const v0, 0x4201a

    sget v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 1669
    return-void
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 3185
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveRoamAllowSettingChange(Z)V

    .line 3186
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    .line 3187
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, p1, :cond_0

    .line 756
    const v0, 0xc3c3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 758
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 760
    :cond_0
    return-void
.end method

.method protected startNetStatPoll()V
    .locals 1

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 1624
    const-string v0, "[DataConnection] Start poll NetStat"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1625
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->resetPollStats()V

    .line 1626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1627
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1629
    :cond_0
    return-void
.end method

.method protected startNetStatPollwithoutResetPollStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1635
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_1

    .line 1637
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1638
    const-string v0, "CDMA"

    const-string v1, "[DataConnection] Start poll NetStat without reset poll status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1640
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1645
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1646
    const-string v0, "CDMA"

    const-string v1, "[DataConnection] Start poll NetStat without reset poll status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1648
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected stopNetStatPoll()V
    .locals 1

    .prologue
    .line 1657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1658
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1659
    const-string v0, "[DataConnection] Stop poll NetStat"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1660
    return-void
.end method
