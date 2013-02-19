.class public final Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;,
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MccChangeReceiver;,
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$NationRoamingObserver;,
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;,
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;,
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MVNOChangeObserver;,
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;
    }
.end annotation


# static fields
.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final HTCPROPERTY_MULTI_LTE_PROFILE0:Ljava/lang/String; = "ril.pdn.profile"

.field private static final HTC_DEFAULT_ADDRESS_PROPERTY:Ljava/lang/String; = "ril.default.address"

.field private static final INTENT_GPRS_AUTO_DISCONNECT:Ljava/lang/String; = "com.android.internal.telephony.gprsautodisconnect"

.field private static final INTENT_GPRS_AUTO_DISCONNECT_EXTRA_DELAY:Ljava/lang/String; = "delay"

.field private static final INTENT_GPRS_AUTO_DISCONNECT_EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final INTENT_GPRS_AUTO_DISCONNECT_EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final OOS_AUTO_DISCONNECT_PROP_NAME:Ljava/lang/String; = "persist.ril.oosautodisconnect"

.field private static final OOS_DISCONNECT_TIMEOUT_PROP_NAME:Ljava/lang/String; = "persist.ril.oosdisconnecttime"

.field private static final POLL_PDP_MILLIS:I = 0x1388

.field static final PREFERAPN_URI:Landroid/net/Uri; = null

.field static final PREFERRED_DUN_URI:Landroid/net/Uri; = null

.field private static final mSupportedApnTypes:[Ljava/lang/String; = null

.field private static final needToUpdateProfile:Z = true


# instance fields
.field private CCFCQuerycnt:I

.field GprsAutoDisconnectReceiver:Landroid/content/BroadcastReceiver;

.field protected final LOG_TAG:Ljava/lang/String;

.field private apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

.field private canSetPreferApn:Z

.field private canSetPreferDunApn:Z

.field private mApnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

.field private mAttached:Z

.field private mEntitleErrorCause:I

.field private mGprsAutoDisconnectActivated:Z

.field mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

.field private mMccChangeReceiver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MccChangeReceiver;

.field private mNationRoamingObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$NationRoamingObserver;

.field private mPdpResetCount:I

.field private mPollNetStat:Ljava/lang/Runnable;

.field private mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

.field private mRecoveryAction:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

.field private mReregisterOnReconnectFailure:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSimLoaded:Z

.field private mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

.field private mvnoObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MVNOChangeObserver;

.field private pdp2GLimit:I

.field private pdp2GLimitByRegisteredOperator:I

.field private pdp3GLimit:I

.field private pdp3GLimitByRegisteredOperator:I

.field private pdpLimitSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 177
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    .line 180
    const-string v0, "content://telephony/carriers/preferdun"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERRED_DUN_URI:Landroid/net/Uri;

    .line 187
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "supl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cmmail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 8
    .parameter "p"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 270
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 106
    const-string v2, "GSM"

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 136
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 141
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    .line 145
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;->REREGISTER:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

    .line 148
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    .line 149
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferDunApn:Z

    .line 152
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSimLoaded:Z

    .line 155
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAttached:Z

    .line 157
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->CCFCQuerycnt:I

    .line 161
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimit:I

    .line 162
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimit:I

    .line 163
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    .line 164
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimitByRegisteredOperator:I

    .line 165
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimitByRegisteredOperator:I

    .line 168
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mEntitleErrorCause:I

    .line 184
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    .line 201
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

    .line 210
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGprsAutoDisconnectActivated:Z

    .line 248
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1000
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->GprsAutoDisconnectReceiver:Landroid/content/BroadcastReceiver;

    .line 2366
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 272
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x42001

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 273
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x42006

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 281
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const v3, 0x42002

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 287
    :cond_0
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x42004

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 288
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    const v3, 0x42008

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 289
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    const v3, 0x42007

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 290
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const v3, 0x42010

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 292
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const v3, 0x42009

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 294
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const v3, 0x4200b

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 295
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const v3, 0x4200c

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 296
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const v3, 0x42016

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 298
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const v3, 0x42017

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 301
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const v3, 0x4202e

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 306
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v1, filterQ:Landroid/content/IntentFilter;
    const-string v2, "com.android.internal.telephony.gprsautodisconnect"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->GprsAutoDisconnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 313
    .local v0, IccCardfilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v5, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 317
    iput-object p0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 318
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    .line 320
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    .line 321
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 325
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MVNOChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MVNOChangeObserver;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mvnoObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MVNOChangeObserver;

    .line 326
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mvno_operator"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mvnoObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MVNOChangeObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 330
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 333
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    .line 334
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->initApnContextsAndDataConnection()V

    .line 339
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->registerMCCChange()V

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->broadcastMessenger()V

    .line 342
    return-void
.end method

.method private AllowNationRoaming()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4260
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->CheckisNationRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "national_roaming_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private CheckisNationRoaming()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    .line 4271
    const/4 v0, 0x0

    .line 4272
    .local v0, mcc:Ljava/lang/String;
    const/4 v1, 0x0

    .line 4273
    .local v1, mccFromIMSI:Ljava/lang/String;
    const-string v3, "ro.ril.n-roaming.mcclist"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4274
    .local v2, mcclist:Ljava/lang/String;
    const-string v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4275
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 4276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckisNational Roaming: mcc-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mccFromIMSI-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4277
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4278
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_1

    .line 4279
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4280
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4281
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4282
    const/4 v3, 0x1

    .line 4287
    :goto_0
    return v3

    :cond_0
    move v3, v4

    .line 4284
    goto :goto_0

    :cond_1
    move v3, v4

    .line 4287
    goto :goto_0
.end method

.method private HtcCleanupDC(Lcom/android/internal/telephony/DataConnectionAc;Lcom/android/internal/telephony/ApnContext;)V
    .locals 11
    .parameter "dcac"
    .parameter "pendingAC"

    .prologue
    const/4 v10, 0x0

    .line 2844
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 2845
    .local v1, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-nez v1, :cond_0

    .line 2846
    const-string v8, "HtcCleanupDC WARNING: got dcac\'s apn is null"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2888
    :goto_0
    return-void

    .line 2849
    :cond_0
    iget-object v8, v1, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 2850
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

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2859
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

    .line 2860
    .local v7, type:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnContext;

    .line 2861
    .local v6, tmpac:Lcom/android/internal/telephony/ApnContext;
    if-nez v6, :cond_3

    .line 2862
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HtcCleanupDC WARNING: got null ac from dcac\'s types[], type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2859
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2865
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v8

    if-ne v8, p1, :cond_2

    .line 2866
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2869
    .end local v6           #tmpac:Lcom/android/internal/telephony/ApnContext;
    .end local v7           #type:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2872
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iput-object p2, v8, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    .line 2874
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->dumpSwitchApnRecord()V

    .line 2876
    const-string v8, "apnSwitched"

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2878
    iget-object v8, p1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->resetRefCount()V

    .line 2879
    const v8, 0x4200f

    invoke-virtual {p0, v8, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2881
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v8

    if-nez v8, :cond_5

    .line 2882
    const-string v8, "!!! ac.dc is null. It should not happen"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2884
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private HtcIsDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 3
    .parameter "apnContext"

    .prologue
    .line 1383
    const/4 v0, 0x0

    .line 1384
    .local v0, ignoreGprs:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apnSwitched"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 1389
    const/4 v0, 0x1

    .line 1390
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1392
    const/4 v0, 0x0

    .line 1395
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcIsDataAllowed: ignoreGprs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retryCnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcIsDataAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1395
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v1

    goto :goto_0

    .line 1398
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private HtcNotifyNoEntitle(Lcom/android/internal/telephony/ApnContext;)V
    .locals 4
    .parameter "ac"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "entitle"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 793
    const-string v0, "notify for no entitle"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 794
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEntitleErrorCause(I)V

    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "apnFailed"

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "apnFailed"

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 802
    :goto_0
    return-void

    .line 800
    :cond_0
    const-string v0, "Not notify for no entitle"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private HtcPdpLimitRule(ZZLcom/android/internal/telephony/ApnContext;)Z
    .locals 3
    .parameter "cleanup"
    .parameter "setup"
    .parameter "ac"

    .prologue
    .line 2816
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

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->usedNumberOfDC()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2818
    const/4 v0, 0x0

    .line 2819
    .local v0, goSwitching:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dumpDCApn()V

    .line 2820
    if-eqz p2, :cond_3

    .line 2821
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->usedNumberOfDC()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    if-lt v1, v2, :cond_2

    .line 2822
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->ifDCCanHandle(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->ifApnDupWithExisted(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2823
    const/4 v0, 0x1

    .line 2830
    :cond_0
    :goto_0
    return v0

    .line 2825
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2827
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2828
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

    .line 2892
    const-string v5, "*** HtcSwitchApn"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2893
    if-eqz p2, :cond_5

    .line 2894
    const-wide/16 v3, -0x1

    .line 2895
    .local v3, latestTime:J
    const/4 v2, 0x0

    .line 2896
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

    .line 2897
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCreateTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-ltz v5, :cond_0

    .line 2898
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

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

    .line 2900
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCreateTime()J

    move-result-wide v3

    .line 2901
    move-object v2, v0

    goto :goto_0

    .line 2902
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    if-ne v5, v8, :cond_0

    .line 2903
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCreateTime()J

    move-result-wide v3

    .line 2904
    move-object v2, v0

    goto :goto_0

    .line 2909
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    if-nez v2, :cond_4

    .line 2910
    const-string v5, "HtcSwitchApn WARNING: can not find any DCAC"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2918
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #latestTime:J
    :cond_3
    :goto_1
    return-void

    .line 2913
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

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2915
    invoke-direct {p0, v2, p3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcCleanupDC(Lcom/android/internal/telephony/DataConnectionAc;Lcom/android/internal/telephony/ApnContext;)V

    goto :goto_1

    .line 2916
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
    .line 3292
    const/4 v2, 0x0

    .line 3293
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

    .line 3294
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    if-nez v3, :cond_0

    if-eq v0, p1, :cond_0

    .line 3296
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

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3297
    move-object v2, v0

    .line 3301
    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    if-eqz v2, :cond_2

    .line 3302
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    .line 3303
    :cond_2
    return-void
.end method

.method private HtcUpdateConnectedProp()V
    .locals 5

    .prologue
    .line 702
    const/4 v2, 0x0

    .line 704
    .local v2, setPropConnected:Z
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

    .line 705
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 707
    const/4 v2, 0x1

    goto :goto_0

    .line 711
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    if-eqz v2, :cond_2

    .line 712
    const-string v3, "set net.gprs.data.connected 1"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 713
    const-string v3, "net.gprs.data.connected"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :goto_1
    return-void

    .line 715
    :cond_2
    const-string v3, "set net.gprs.data.connected 0"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 716
    const-string v3, "net.gprs.data.connected"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private HtcisAnyTypeEnabled()Z
    .locals 3

    .prologue
    .line 671
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

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

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 672
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    const/4 v2, 0x1

    .line 676
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1714(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGprsAutoDisconnectActivated:Z

    return p1
.end method

.method static synthetic access$3108(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return p1
.end method

.method static synthetic access$3602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onNationRoamingDisabled()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onNationRoamingEnabled()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->AllowNationRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    return-wide p1
.end method

.method private addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;
    .locals 2
    .parameter "type"

    .prologue
    .line 461
    new-instance v0, Lcom/android/internal/telephony/ApnContext;

    const-string v1, "GSM"

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/ApnContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnContext;->setDependencyMet(Z)V

    .line 463
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    return-object v0
.end method

.method private addDUNApnType([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 3792
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 3793
    .local v1, temp:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 3794
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 3795
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 3794
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3796
    :cond_0
    const-string v2, "dun"

    aput-object v2, v1, v0

    .line 3797
    return-object v1
.end method

.method private addSuplApnType([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 3780
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 3781
    .local v1, temp:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 3782
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 3783
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 3782
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3784
    :cond_0
    const-string v2, "supl"

    aput-object v2, v1, v0

    .line 3785
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
    .line 3932
    .local p1, apns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3933
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3934
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

    .line 3933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3938
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
    .line 2922
    const/4 v0, 0x0

    .line 2923
    .local v0, cleanup:Z
    const/4 v1, 0x0

    .line 2925
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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2929
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2930
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 2972
    :cond_0
    :goto_0
    return-void

    .line 2931
    :cond_1
    if-nez p2, :cond_3

    .line 2932
    const-string v2, "dataDisabled"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2936
    :goto_1
    const/4 v0, 0x1

    .line 2951
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v3

    aput-boolean p2, v2, v3

    .line 2953
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ApnContext;->setEnabled(Z)V

    .line 2954
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/ApnContext;->setDependencyMet(Z)V

    .line 2962
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcPdpLimitRule(ZZLcom/android/internal/telephony/ApnContext;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2963
    const-string v2, "HtcPdpLimitRule: return true, do switch"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2964
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcSwitchApn(ZZLcom/android/internal/telephony/ApnContext;)V

    goto :goto_0

    .line 2934
    :cond_3
    const-string v2, "dependencyUnmet"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_1

    .line 2938
    :cond_4
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 2939
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2940
    const-string v2, "dependencyMet"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2944
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_5

    .line 2945
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2947
    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    .line 2942
    :cond_6
    const-string v2, "dataEnabled"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_3

    .line 2966
    :cond_7
    const-string v2, "HtcPdpLimitRule: return false, not do switch"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2967
    if-eqz v0, :cond_8

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    .line 2968
    :cond_8
    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto :goto_0
.end method

.method private buildWaitingApns(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 25
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
    .line 3814
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 3827
    .local v21, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->htcGetOperatorNumeric(Lcom/android/internal/telephony/PhoneBase;)Ljava/lang/String;

    move-result-object v23

    .line 3829
    .local v23, operator:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v24

    .line 3831
    .local v24, radioTech:I
    const-string v3, "default"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3832
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v3, :cond_2

    .line 3834
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: Preferred APN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

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

    move/from16 v0, v24

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

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3838
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v0, v24

    if-ne v3, v0, :cond_1

    .line 3839
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3840
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

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3928
    :goto_0
    return-object v21

    .line 3843
    :cond_1
    const-string v3, "buildWaitingApns: no preferred APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3844
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 3845
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 3856
    :cond_2
    :goto_1
    const-string v3, "dun"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3858
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferDunApn:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v3, :cond_6

    .line 3859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: Preferred Dun APN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3861
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v0, v24

    if-ne v3, v0, :cond_5

    .line 3863
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3864
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

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3848
    :cond_4
    const-string v3, "buildWaitingApns: no preferred APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3849
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 3850
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    goto/16 :goto_1

    .line 3867
    :cond_5
    const-string v3, "buildWaitingApns: no preferred dun APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3878
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    .line 3879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/ApnSetting;

    .line 3880
    .local v20, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3881
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v3, :cond_8

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v0, v24

    if-ne v3, v0, :cond_7

    .line 3882
    :cond_8
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

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3886
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3871
    .end local v20           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v22           #i$:Ljava/util/Iterator;
    :cond_9
    const-string v3, "buildWaitingApns: no preferred dun APN, no error handling..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3891
    :cond_a
    const-string v3, "mAllApns is empty!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 3896
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    const-string v3, "supl"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3898
    const-string v3, "clone a default with supl, add to apnList"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/ApnSetting;

    .line 3900
    .restart local v20       #apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v3, "default"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3901
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "supl"

    aput-object v4, v15, v3

    .line 3902
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

    .line 3906
    .local v2, tmpApn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3912
    .end local v2           #tmpApn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    .end local v20           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v22           #i$:Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_f

    const-string v3, "dun"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_f

    .line 3914
    const-string v3, "clone a default with dun, add to apnList"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22       #i$:Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/ApnSetting;

    .line 3916
    .restart local v20       #apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v3, "default"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3917
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dun"

    aput-object v4, v15, v3

    .line 3918
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

    .line 3922
    .restart local v2       #tmpApn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3927
    .end local v2           #tmpApn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    .end local v20           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v22           #i$:Ljava/util/Iterator;
    :cond_f
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

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V
    .locals 4
    .parameter "dcac"

    .prologue
    .line 1678
    if-nez p1, :cond_1

    .line 1688
    :cond_0
    :goto_0
    return-void

    .line 1680
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v1

    .line 1682
    .local v1, intent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 1683
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1685
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1686
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/DataConnectionAc;->setReconnectIntentSync(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private checkForConnectionForApnContext(Lcom/android/internal/telephony/ApnContext;)Lcom/android/internal/telephony/DataConnection;
    .locals 7
    .parameter "apnContext"

    .prologue
    .line 2976
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 2986
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

    .line 2987
    .local v2, c:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    .line 2993
    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnChangeFlag()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2996
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 3010
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3012
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkForConnectionForApnContext: apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " conn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from ac\'s apn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3016
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

    .line 3023
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v2           #c:Lcom/android/internal/telephony/ApnContext;
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    :goto_0
    return-object v3

    .line 3022
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

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3023
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkPDPNumberLimitForRoaming()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1118
    const/4 v1, 0x0

    .line 1119
    .local v1, temp:I
    const/4 v0, 0x1

    .line 1120
    .local v0, desireNumberOfContextSetting:I
    const-string v2, "ro.ril.pdpnumber.policy.roaming"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the rule for getting the number of PDP limit when roaming is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1122
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getPdpLimitByRegisteredOperator()V

    .line 1123
    if-nez v1, :cond_0

    .line 1124
    const/4 v0, 0x1

    .line 1148
    :goto_0
    return v0

    .line 1125
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1126
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    if-lt v2, v4, :cond_1

    .line 1127
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimit:I

    goto :goto_0

    .line 1129
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimit:I

    goto :goto_0

    .line 1130
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1131
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    if-lt v2, v4, :cond_4

    .line 1132
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimit:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimitByRegisteredOperator:I

    if-gt v2, v3, :cond_3

    .line 1133
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimit:I

    goto :goto_0

    .line 1135
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimitByRegisteredOperator:I

    goto :goto_0

    .line 1137
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimit:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimitByRegisteredOperator:I

    if-gt v2, v3, :cond_5

    .line 1138
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimit:I

    goto :goto_0

    .line 1140
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimitByRegisteredOperator:I

    goto :goto_0

    .line 1143
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    if-lt v2, v4, :cond_7

    .line 1144
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimitByRegisteredOperator:I

    goto :goto_0

    .line 1146
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimitByRegisteredOperator:I

    goto :goto_0
.end method

.method private cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V
    .locals 7
    .parameter "tearDown"
    .parameter "apnContext"

    .prologue
    const/4 v6, 0x0

    .line 1610
    if-nez p2, :cond_1

    .line 1611
    const-string v3, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1616
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** cleanUpConnection: tearDown="

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

    const-string v4, ", PhoneType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1618
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 1619
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_5

    .line 1620
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1623
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1624
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1625
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 1626
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1659
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcUpdateConnectedProp()V

    .line 1664
    if-eqz v1, :cond_0

    .line 1665
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v0

    .line 1666
    .local v0, apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1667
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_0

    .line 1630
    .end local v0           #apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    :cond_3
    if-eqz v1, :cond_4

    .line 1631
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_2

    .line 1632
    const-string v3, "cleanUpConnection: tearing down"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1633
    const v3, 0x4200f

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1634
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 1637
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_2

    .line 1639
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto :goto_1

    .line 1645
    .end local v2           #msg:Landroid/os/Message;
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1646
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1652
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 1653
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1654
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 1656
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_1
.end method

.method private configureRetry(Lcom/android/internal/telephony/DataConnection;Z)V
    .locals 3
    .parameter "dc"
    .parameter "forDefault"

    .prologue
    .line 3742
    if-nez p1, :cond_1

    .line 3761
    :cond_0
    :goto_0
    return-void

    .line 3744
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getReryConfig(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3745
    if-eqz p2, :cond_2

    .line 3746
    const-string v0, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3748
    const-string v0, "configureRetry: Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 3750
    const/16 v0, 0x14

    const/16 v1, 0x7d0

    const/16 v2, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->configureRetry(III)Z

    goto :goto_0

    .line 3753
    :cond_2
    const-string v0, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3755
    const-string v0, "configureRetry: Could note configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 3757
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
    .line 1945
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 1950
    :cond_0
    return-object v1

    .line 1946
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1947
    .local v1, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1948
    new-instance v3, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnSetting;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/ApnSetting;-><init>(Lcom/android/internal/telephony/ApnSetting;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1947
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createAllApnList()V
    .locals 15

    .prologue
    const/4 v7, 0x0

    .line 3612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 3615
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->htcGetOperatorNumeric(Lcom/android/internal/telephony/PhoneBase;)Ljava/lang/String;

    move-result-object v14

    .line 3617
    .local v14, operator:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 3618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3619
    .local v3, selection:Ljava/lang/String;
    const/4 v8, 0x0

    .line 3622
    .local v8, selectionShep:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3633
    const/4 v4, 0x0

    .line 3635
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getMVNOOperatorName()Ljava/lang/String;

    move-result-object v11

    .line 3637
    .local v11, MVNOName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MVNO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3638
    move-object v8, v3

    .line 3639
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND operator = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3642
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getMVNOOperatorName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 3650
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3651
    const/4 v12, 0x0

    .line 3654
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 3665
    :goto_1
    if-eqz v12, :cond_1

    .line 3666
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3667
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 3669
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3673
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v8           #selectionShep:Ljava/lang/String;
    .end local v11           #MVNOName:Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3675
    iput-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 3695
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcApnHandling()V

    .line 3697
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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3698
    return-void

    .line 3646
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v8       #selectionShep:Ljava/lang/String;
    .restart local v11       #MVNOName:Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND operator is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 3656
    .restart local v12       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 3658
    .local v13, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: selectionShep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3659
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v9, v7

    move-object v10, v7

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_1

    .line 3679
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v8           #selectionShep:Ljava/lang/String;
    .end local v11           #MVNOName:Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #e:Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 3681
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getPreferredDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    .line 3683
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3684
    iput-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 3685
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 3688
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApnIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3689
    const-string v0, "htc re-set mPreferredApn after it is cleaned by operator mis-matched"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3692
    :cond_5
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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2
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
    .line 1707
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1708
    .local v20, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1710
    :cond_0
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1712
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

    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

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

    .line 1737
    .local v2, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1738
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1740
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

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1741
    return-object v20

    .line 1712
    .restart local v15       #types:[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    goto :goto_0
.end method

.method private createDataConnection()Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 3702
    const-string v7, "createDataConnection E"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3704
    new-instance v4, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v4}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    .line 3705
    .local v4, rm:Lcom/android/internal/telephony/RetryManager;
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 3708
    .local v3, id:I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->usedNumberOfDC()I

    move-result v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    if-lt v7, v8, :cond_0

    .line 3709
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDataConnection() X used="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->usedNumberOfDC()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pdpLimitSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " no free pdp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v0, v6

    .line 3738
    :goto_0
    return-object v0

    .line 3714
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DataConnection;->get_mCount_gsm()I

    move-result v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    if-lt v7, v8, :cond_1

    .line 3715
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDataConnection() X over limit return, used="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->usedNumberOfDC()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pdpLimitSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCnt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/internal/telephony/DataConnection;->get_mCount_gsm()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v0, v6

    .line 3717
    goto :goto_0

    .line 3721
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v7, v3, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->makeDataConnection(Lcom/android/internal/telephony/PhoneBase;ILcom/android/internal/telephony/RetryManager;)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v0

    .line 3722
    .local v0, conn:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3723
    new-instance v1, Lcom/android/internal/telephony/DataConnectionAc;

    const-string v7, "GSM"

    invoke-direct {v1, v0, v7}, Lcom/android/internal/telephony/DataConnectionAc;-><init>(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V

    .line 3724
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v1, v7, p0, v8}, Lcom/android/internal/telephony/DataConnectionAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v5

    .line 3725
    .local v5, status:I
    if-nez v5, :cond_2

    .line 3726
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3733
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3734
    .local v2, filter:Landroid/content/IntentFilter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.android.internal.telephony.gprs-reconnect."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3735
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7, v8, v2, v6, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3737
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createDataConnection() X id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3728
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDataConnection: Could not connect to dcac.mDc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dataConnectionNotInUse(Lcom/android/internal/telephony/DataConnectionAc;)Z
    .locals 3
    .parameter "dcac"

    .prologue
    .line 1745
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

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

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1751
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnChangeFlag()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1755
    const/4 v2, 0x0

    .line 1758
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private destroyDataConnections()V
    .locals 3

    .prologue
    .line 3764
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 3766
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

    .line 3767
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->quit()V

    goto :goto_0

    .line 3769
    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->ReInitialDataConnectionCounter()V

    .line 3771
    const-string v2, "destroyDataConnections: clear mDataConnectionList"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3772
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 3776
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 3774
    :cond_1
    const-string v2, "destroyDataConnections: mDataConnecitonList is empty, ignore"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private doRecovery()V
    .locals 6

    .prologue
    const v5, 0xc3b6

    .line 2261
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_2

    .line 2262
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "pdp_watchdog_max_pdp_reset_fail_count"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2265
    .local v0, maxPdpReset:I
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    if-ge v2, v0, :cond_1

    .line 2266
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    .line 2267
    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v5, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRecovery() cleanup all connections mPdpResetCount= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxPdpReset= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2271
    const-string v2, "persist.radio.ramdumpmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2272
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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2273
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2275
    const-string v2, "persist.radio.ramdump"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    const-string v2, "property set!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2279
    :cond_0
    const/4 v2, 0x1

    const-string v3, "pdpReset"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 2319
    .end local v0           #maxPdpReset:I
    .end local v1           #mode:Ljava/lang/String;
    :goto_0
    return-void

    .line 2281
    .restart local v0       #maxPdpReset:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    .line 2282
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->$SwitchMap$com$android$internal$telephony$gsm$GsmDataConnectionTracker$RecoveryAction:[I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2312
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doRecovery: Invalid mRecoveryAction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2284
    :pswitch_0
    const v2, 0xc3b8

    iget-wide v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v2, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2285
    const-string v2, "doRecovery() re-register getting preferred network type"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2286
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    .line 2287
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;->RADIO_RESTART:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

    goto :goto_0

    .line 2290
    :pswitch_1
    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v5, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2291
    const-string v2, "restarting radio"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2292
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;->RADIO_RESET:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecoveryAction;

    .line 2293
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->restartRadio()V

    goto :goto_0

    .line 2302
    :pswitch_2
    const/4 v2, -0x1

    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2303
    const-string v2, "restarting radio with reset indication"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2304
    const-string v2, "gsm.radioreset"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2309
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->restartRadio()V

    goto :goto_0

    .line 2317
    .end local v0           #maxPdpReset:I
    :cond_2
    const-string v2, "doRecovery(): ignore, we\'re not connected"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2308
    .restart local v0       #maxPdpReset:I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 2282
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
    .line 2807
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

    .line 2808
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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2811
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_0
    return-void
.end method

.method private dumpSwitchRecord()V
    .locals 5

    .prologue
    .line 2834
    const-string v1, ""

    .line 2836
    .local v1, dump:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

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

    .line 2837
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

    .line 2839
    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpSwitchRecord: pending=<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

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

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2840
    return-void
.end method

.method private findApnContextToClean(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/DataConnectionAc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2034
    .local p1, dcacs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/DataConnectionAc;>;"
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 2061
    :cond_0
    return-object v5

    .line 2036
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2037
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnContext;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2038
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_2

    .line 2039
    const/4 v2, 0x0

    .line 2040
    .local v2, found:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnectionAc;

    .line 2041
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v6

    if-ne v1, v6, :cond_3

    .line 2043
    const/4 v2, 0x1

    .line 2047
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_4
    if-nez v2, :cond_2

    .line 2051
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDataStateChanged(ar): Connected apn not found in the list ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2053
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 2054
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2056
    :cond_5
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private findDCFromDupApn(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 6
    .parameter "reqApn"

    .prologue
    .line 1794
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

    .line 1795
    .local v1, c:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v2

    .line 1796
    .local v2, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnChangeFlag()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1797
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 1798
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1800
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

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1802
    check-cast v2, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1807
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #c:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #conn:Lcom/android/internal/telephony/DataConnection;
    :goto_0
    return-object v2

    .line 1806
    :cond_1
    const-string v4, "findDCFromDupApn: No conn"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1807
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findDataConnectionAcByCid(I)Lcom/android/internal/telephony/DataConnectionAc;
    .locals 4
    .parameter "cid"

    .prologue
    const/4 v2, 0x0

    .line 2017
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move-object v0, v2

    .line 2025
    :goto_0
    return-object v0

    .line 2020
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 2021
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    move-object v0, v2

    .line 2025
    goto :goto_0
.end method

.method private findFreeDataConnection()Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 3

    .prologue
    .line 1762
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

    .line 1763
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/DataConnectionAc;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1764
    const-string v2, "findFreeDataConnection: found free GsmDataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1765
    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1769
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 1768
    :cond_1
    const-string v2, "findFreeDataConnection: NO free GsmDataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1769
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCellLocationId()I
    .locals 3

    .prologue
    .line 4163
    const/4 v0, -0x1

    .line 4164
    .local v0, cid:I
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 4166
    .local v1, loc:Landroid/telephony/CellLocation;
    if-eqz v1, :cond_0

    .line 4167
    instance-of v2, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_1

    .line 4168
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .end local v1           #loc:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 4173
    :cond_0
    :goto_0
    return v0

    .line 4169
    .restart local v1       #loc:Landroid/telephony/CellLocation;
    :cond_1
    instance-of v2, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_0

    .line 4170
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1           #loc:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    goto :goto_0
.end method

.method private getMVNOOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3533
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

    .line 3536
    :goto_0
    return-object v1

    .line 3535
    :catch_0
    move-exception v0

    .line 3536
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPdpLimit()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x3

    .line 2620
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v8, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 2621
    .local v3, mccmnc:Ljava/lang/String;
    const-string v2, ""

    .line 2623
    .local v2, mcc:Ljava/lang/String;
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0xe5

    if-eq v8, v10, :cond_0

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x25

    if-ne v8, v10, :cond_1

    .line 2625
    :cond_0
    const-string v8, "persist.radio.mpdp"

    const/4 v10, 0x1

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v11, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v9, :cond_1

    .line 2627
    const/4 v8, 0x0

    const/4 v10, 0x3

    invoke-virtual {v3, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2628
    const-string v8, "460"

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2630
    const-string v8, "Set MPDP to 2 for China SIM"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2631
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimit:I

    .line 2632
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimit:I

    .line 2664
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #mccmnc:Ljava/lang/String;
    :goto_0
    return-void

    .line 2638
    .restart local v2       #mcc:Ljava/lang/String;
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 2639
    .local v7, r:Landroid/content/res/Resources;
    const v8, 0x10f000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 2641
    .local v0, confparser:Landroid/content/res/XmlResourceParser;
    const-string v8, "MPDPS"

    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2644
    :cond_2
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2645
    if-nez v0, :cond_3

    .line 2660
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPdpLimit: Can not found pdp limit value for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2662
    .end local v0           #confparser:Landroid/content/res/XmlResourceParser;
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #mccmnc:Ljava/lang/String;
    .end local v7           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 2663
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "getPdpLimit: exception when getting pdp limit"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2647
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #confparser:Landroid/content/res/XmlResourceParser;
    .restart local v2       #mcc:Ljava/lang/String;
    .restart local v3       #mccmnc:Ljava/lang/String;
    .restart local v7       #r:Landroid/content/res/Resources;
    :cond_3
    const/4 v8, 0x0

    :try_start_1
    const-string v10, "mccmnc"

    invoke-interface {v0, v8, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2648
    const/4 v8, 0x0

    const-string v10, "pdps2g"

    invoke-interface {v0, v8, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2649
    .local v5, pdps2g:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v10, "pdps3g"

    invoke-interface {v0, v8, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2650
    .local v6, pdps3g:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v10, "opname"

    invoke-interface {v0, v8, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2651
    .local v4, opName:Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2652
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v9, :cond_4

    move v8, v9

    :goto_1
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimit:I

    .line 2654
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v9, :cond_5

    move v8, v9

    :goto_2
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimit:I

    .line 2656
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPdpLimit: mccmnc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pdp2GLimit="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimit:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pdp3GLimit="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimit:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2652
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    .line 2654
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    goto :goto_2
.end method

.method private getPdpLimitByRegisteredOperator()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x3

    .line 1068
    :try_start_0
    const-string v9, "gsm.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1069
    .local v3, mccmnc:Ljava/lang/String;
    const-string v2, ""

    .line 1071
    .local v2, mcc:Ljava/lang/String;
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0xe5

    if-eq v9, v10, :cond_0

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x25

    if-ne v9, v10, :cond_1

    .line 1073
    :cond_0
    const-string v9, "persist.radio.mpdp"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v8, :cond_1

    .line 1075
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1076
    const-string v9, "460"

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1078
    const-string v8, "Set MPDP to 2 for China network"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1079
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimitByRegisteredOperator:I

    .line 1080
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimitByRegisteredOperator:I

    .line 1113
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #mccmnc:Ljava/lang/String;
    :goto_0
    return-void

    .line 1086
    .restart local v2       #mcc:Ljava/lang/String;
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 1087
    .local v7, r:Landroid/content/res/Resources;
    const v9, 0x10f000f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 1089
    .local v0, confparser:Landroid/content/res/XmlResourceParser;
    const-string v9, "MPDPS"

    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1092
    :cond_2
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1093
    if-nez v0, :cond_3

    .line 1109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not found the "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "m-pdp limit value in m_pdp_limit.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1111
    .end local v0           #confparser:Landroid/content/res/XmlResourceParser;
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #mccmnc:Ljava/lang/String;
    .end local v7           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 1112
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "exception wheb read pdplimit by registered operator"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1095
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #confparser:Landroid/content/res/XmlResourceParser;
    .restart local v2       #mcc:Ljava/lang/String;
    .restart local v3       #mccmnc:Ljava/lang/String;
    .restart local v7       #r:Landroid/content/res/Resources;
    :cond_3
    const/4 v9, 0x0

    :try_start_1
    const-string v10, "mccmnc"

    invoke-interface {v0, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1096
    const/4 v9, 0x0

    const-string v10, "pdps2g"

    invoke-interface {v0, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1097
    .local v5, pdps2g:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "pdps3g"

    invoke-interface {v0, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1098
    .local v6, pdps3g:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "opname"

    invoke-interface {v0, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1099
    .local v4, opName:Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1100
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-le v9, v8, :cond_4

    move v9, v8

    :goto_1
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimitByRegisteredOperator:I

    .line 1102
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-le v9, v8, :cond_5

    :goto_2
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimitByRegisteredOperator:I

    .line 1104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPdpLimitByRegisteredOperator: mccmnc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pdp2GLimitByRegisteredOperator="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimitByRegisteredOperator:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pdp3GLimitByRegisteredOperator="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimitByRegisteredOperator:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1100
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    .line 1102
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    goto :goto_2
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/ApnSetting;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 3963
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3993
    :cond_0
    :goto_0
    return-object v3

    .line 3967
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

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

    .line 3971
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 3972
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    .line 3977
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 3979
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3980
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 3981
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

    .line 3982
    .local v8, p:Lcom/android/internal/telephony/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3983
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 3984
    goto :goto_0

    .line 3974
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/ApnSetting;
    .end local v9           #pos:I
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    goto :goto_1

    .line 3989
    :cond_4
    if-eqz v6, :cond_0

    .line 3990
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getPreferredDunApn()Lcom/android/internal/telephony/ApnSetting;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 3998
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4029
    :cond_0
    :goto_0
    return-object v3

    .line 4002
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERRED_DUN_URI:Landroid/net/Uri;

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

    .line 4006
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 4007
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferDunApn:Z

    .line 4012
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferDunApn:Z

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 4014
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4015
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 4016
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

    .line 4018
    .local v8, p:Lcom/android/internal/telephony/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v0, v9, :cond_2

    const-string v0, "dun"

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4019
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 4020
    goto :goto_0

    .line 4009
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/ApnSetting;
    .end local v9           #pos:I
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferDunApn:Z

    goto :goto_1

    .line 4025
    :cond_4
    if-eqz v6, :cond_0

    .line 4026
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private htcDBG_OnDCS(Ljava/util/HashMap;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            "Lcom/android/internal/telephony/DataConnectionAc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2066
    .local p1, dcacHM:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/internal/telephony/DataCallState;Lcom/android/internal/telephony/DataConnectionAc;>;"
    const-string v6, "DCT\'s dcac list"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2067
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 2068
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2070
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    AC="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2074
    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v6, "DCS\'s dcac list"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2075
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataConnectionAc;

    .line 2076
    .local v3, dcac2:Lcom/android/internal/telephony/DataConnectionAc;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 2078
    .local v1, ac2:Lcom/android/internal/telephony/ApnContext;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    AC="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2081
    .end local v1           #ac2:Lcom/android/internal/telephony/ApnContext;
    .end local v3           #dcac2:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private htcGetOperatorNumeric(Lcom/android/internal/telephony/PhoneBase;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 4437
    if-nez p1, :cond_0

    .line 4438
    const-string v0, ""

    .line 4455
    :goto_0
    return-object v0

    .line 4442
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4444
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_1

    .line 4445
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4449
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 4455
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private htcIsRecordLoaded(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 2
    .parameter "p"

    .prologue
    const/4 v0, 0x0

    .line 4406
    if-nez p1, :cond_1

    .line 4430
    :cond_0
    :goto_0
    return v0

    .line 4411
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4413
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v1, :cond_2

    .line 4414
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardProxy;->getRecordsLoaded()Z

    move-result v0

    .line 4415
    .local v0, IsGetRecordsLoaded:Z
    if-nez v0, :cond_0

    .line 4417
    const-string v1, "getRecordsLoaded return false "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4423
    .end local v0           #IsGetRecordsLoaded:Z
    :cond_2
    const-string v1, "mIccCardProxy == null "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4430
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method private ifApnDupWithExisted(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 13
    .parameter "ac"

    .prologue
    const/4 v10, 0x0

    .line 2758
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    .line 2759
    .local v8, radioTech:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2762
    .local v1, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v11, :cond_2

    .line 2763
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

    .line 2764
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2765
    iget v11, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v11, :cond_1

    iget v11, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-ne v11, v8, :cond_0

    .line 2766
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

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2767
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2772
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v11, "ifApnDupWithExisted: mAllApns is empty!"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 2803
    :goto_1
    return v10

    .line 2777
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

    .line 2778
    .local v9, reqApn:Lcom/android/internal/telephony/ApnSetting;
    const/4 v7, 0x0

    .line 2779
    .local v7, isDupApn:Z
    if-eqz v9, :cond_6

    iget-object v11, v9, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 2780
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

    .line 2781
    .local v2, c:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    .line 2782
    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v3, :cond_5

    .line 2783
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v4

    .line 2784
    .local v4, existedApn:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v4, :cond_5

    iget-object v11, v4, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 2787
    iget-object v11, v9, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    iget-object v12, v4, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2788
    const/4 v7, 0x1

    goto :goto_2

    .line 2793
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

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 2796
    :cond_7
    if-nez v7, :cond_4

    .line 2797
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ifApnDupWithExisted: none is duplicate, req="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2802
    .end local v7           #isDupApn:Z
    .end local v9           #reqApn:Lcom/android/internal/telephony/ApnSetting;
    :cond_8
    const-string v10, "ifApnDupWithExisted: all is duplicate"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2803
    const/4 v10, 0x1

    goto :goto_1
.end method

.method private ifDCCanHandle(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 4
    .parameter "ac"

    .prologue
    .line 2748
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

    .line 2749
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 2750
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2751
    const/4 v3, 0x1

    .line 2753
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCFQueryComplete()Z
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCFUQueryStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->CCFCQuerycnt:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 1056
    :cond_0
    const-string v0, "isCFQueryComplete() = true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1057
    const/4 v0, 0x1

    .line 1061
    :goto_0
    return v0

    .line 1059
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->CCFCQuerycnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->CCFCQuerycnt:I

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCFQueryComplete() = false, CCFCQuerycnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->CCFCQuerycnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1061
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 1
    .parameter "apnContext"

    .prologue
    .line 970
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHtcWifi2GPowerSave(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 6
    .parameter "ac"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1451
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_0

    .line 1452
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_wifi_2g_call_running"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1453
    .local v1, running:I
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_wifi_2g_call_netmode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1454
    .local v0, netmode:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtcWifi2GPowerSave: running="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " netmode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1455
    if-ne v1, v2, :cond_0

    if-ne v0, v2, :cond_0

    .line 1459
    .end local v0           #netmode:I
    .end local v1           #running:I
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isSwitchOff(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 3
    .parameter "ac"

    .prologue
    .line 2726
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

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

    .line 2727
    .local v1, switched:Lcom/android/internal/telephony/ApnContext;
    if-ne v1, p1, :cond_0

    .line 2728
    const/4 v2, 0x1

    .line 2731
    .end local v1           #switched:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyApnIdUpToCurrent(Ljava/lang/String;Lcom/android/internal/telephony/ApnContext;Ljava/lang/String;)V
    .locals 2
    .parameter "reason"
    .parameter "apnContext"
    .parameter "type"

    .prologue
    .line 863
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 877
    :goto_0
    :pswitch_0
    return-void

    .line 869
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0

    .line 873
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0

    .line 863
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyDefaultData(Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "apnContext"

    .prologue
    .line 2231
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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2234
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2237
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcUpdateConnectedProp()V

    .line 2239
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 2242
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2243
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "lastFailCauseCode"
    .parameter "apnContext"

    .prologue
    .line 2606
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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2607
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2609
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcUpdateConnectedProp()V

    .line 2611
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2613
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    :cond_0
    return-void
.end method

.method private onApnChanged()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1964
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    .line 1965
    .local v3, overallState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v5, :cond_4

    :cond_0
    move v2, v7

    .line 1968
    .local v2, isDisconnected:Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v5, :cond_1

    .line 1970
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 1974
    :cond_1
    const/4 v4, -0x1

    .line 1975
    .local v4, previousPreferredApnId:I
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v5, :cond_2

    .line 1976
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v4, v5, Lcom/android/internal/telephony/ApnSetting;->id:I

    .line 1982
    :cond_2
    const-string v5, "onApnChanged: createAllApnList and cleanUpAllConnections"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1983
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createAllApnList()V

    .line 1986
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

    .line 1989
    const-string v5, "onApnChanged: ApnSetting not changed, return"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2009
    :cond_3
    :goto_1
    return-void

    .end local v2           #isDisconnected:Z
    .end local v4           #previousPreferredApnId:I
    :cond_4
    move v2, v6

    .line 1965
    goto :goto_0

    .line 1994
    .restart local v2       #isDisconnected:Z
    .restart local v4       #previousPreferredApnId:I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->copyApnSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    .line 1998
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1999
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ApnContext;->setApnChangeFlag(Z)V

    goto :goto_2

    .line 2004
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_6
    if-nez v2, :cond_7

    :goto_3
    const-string v5, "apnChanged"

    invoke-virtual {p0, v7, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 2005
    if-eqz v2, :cond_3

    .line 2006
    const-string v5, "apnChanged"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v7, v6

    .line 2004
    goto :goto_3
.end method

.method private onDataConnectionAttached()V
    .locals 6

    .prologue
    const v5, 0x42010

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionAttached: sim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSimLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CFQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isCFQueryComplete()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1169
    const-string v1, "persist.ril.oosautodisconnect"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1170
    .local v0, oosDisconnectEnable:I
    if-ne v0, v4, :cond_0

    .line 1171
    const-string v1, "dataAttached"

    invoke-direct {p0, v3, v1, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->tryEnableGprsAutoDisconnect(ZLjava/lang/String;I)V

    .line 1175
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAttached:Z

    .line 1178
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSimLoaded:Z

    if-eqz v1, :cond_1

    .line 1179
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPdpLimit()V

    .line 1183
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSimLoaded:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isCFQueryComplete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1188
    :cond_2
    const-string v1, "attached but sim not loaded, retry in 3 sec"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->removeMessages(I)V

    .line 1190
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1206
    :goto_0
    return-void

    .line 1193
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_4

    .line 1194
    const-string v1, "onDataConnectionAttached: start polling notify attached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 1196
    const-string v1, "dataAttached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1202
    :goto_1
    const-string v1, "dataAttached"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    goto :goto_0

    .line 1199
    :cond_4
    const-string v1, "dataAttached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onDataStateChanged(Landroid/os/AsyncResult;)V
    .locals 17
    .parameter "ar"

    .prologue
    .line 2091
    const-string v13, "onDataStateChanged(ar): E"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2092
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    move-object v8, v13

    check-cast v8, Ljava/util/ArrayList;

    .line 2094
    .local v8, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_0

    .line 2098
    const-string v13, "onDataStateChanged(ar): exception; likely radio not available, ignore"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2227
    :goto_0
    return-void

    .line 2101
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDataStateChanged(ar): DataCallState size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2105
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2106
    .local v7, dataCallStateToDcac:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/internal/telephony/DataCallState;Lcom/android/internal/telephony/DataConnectionAc;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/DataCallState;

    .line 2107
    .local v6, dataCallState:Lcom/android/internal/telephony/DataCallState;
    iget v13, v6, Lcom/android/internal/telephony/DataCallState;->cid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->findDataConnectionAcByCid(I)Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v9

    .line 2109
    .local v9, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v9, :cond_1

    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2113
    .end local v6           #dataCallState:Lcom/android/internal/telephony/DataCallState;
    .end local v9           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->htcDBG_OnDCS(Ljava/util/HashMap;)V

    .line 2117
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->findApnContextToClean(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 2120
    .local v3, apnsToCleanup:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10           #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/DataCallState;

    .line 2121
    .local v12, newState:Lcom/android/internal/telephony/DataCallState;
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/DataConnectionAc;

    .line 2123
    .restart local v9       #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-nez v9, :cond_3

    .line 2124
    const-string v13, "onDataStateChanged(ar): No associated DataConnection ignore"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 2129
    :cond_3
    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v2

    .line 2132
    .local v2, apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2133
    .local v5, connectedApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 2134
    .local v1, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v13, v14, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v13, v14, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v13, v14, :cond_4

    .line 2137
    :cond_5
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2140
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_7

    .line 2141
    const-string v13, "onDataStateChanged(ar): no connected apns"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2145
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDataStateChanged(ar): Found ConnId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v12, Lcom/android/internal/telephony/DataCallState;->cid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " newState="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/internal/telephony/DataCallState;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2147
    iget v13, v12, Lcom/android/internal/telephony/DataCallState;->active:I

    if-nez v13, :cond_8

    .line 2149
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDataStateChanged(ar): inactive, cleanup apns="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2151
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 2154
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDataStateChanged(ar): active, newState="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2214
    .end local v2           #apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    .end local v5           #connectedApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnContext;>;"
    .end local v9           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #newState:Lcom/android/internal/telephony/DataCallState;
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_a

    .line 2216
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getCellLocationId()I

    move-result v4

    .line 2217
    .local v4, cid:I
    const v13, 0xc3bd

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2222
    .end local v4           #cid:I
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 2223
    .restart local v1       #apnContext:Lcom/android/internal/telephony/ApnContext;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    goto :goto_4

    .line 2226
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_b
    const-string v13, "onDataStateChanged(ar): X"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onNationRoamingDisabled()V
    .locals 2

    .prologue
    .line 4243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nationRoaming Disabled  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->AllowNationRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->CheckisNationRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4244
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->AllowNationRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4245
    const/4 v0, 0x1

    const-string v1, "roamingDisabled -National "

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 4246
    :cond_0
    return-void
.end method

.method private onNationRoamingEnabled()V
    .locals 2

    .prologue
    .line 4249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nationRoaming Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->AllowNationRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->CheckisNationRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4250
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->AllowNationRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4251
    const v0, 0x4200b

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4255
    :goto_0
    return-void

    .line 4253
    :cond_0
    const/4 v0, 0x1

    const-string v1, "roamingDisabled -AllowNationRoaming = false"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private onRecordsLoaded()V
    .locals 1

    .prologue
    .line 2670
    const-string v0, "onRecordsLoaded: createAllApnList"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2671
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createAllApnList()V

    .line 2673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSimLoaded:Z

    .line 2676
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getPdpLimit()V

    .line 2678
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAttached:Z

    if-eqz v0, :cond_0

    .line 2679
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPdpLimit()V

    .line 2682
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2683
    const-string v0, "onRecordsLoaded: notifying data availability"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2684
    const-string v0, "simLoaded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2686
    :cond_1
    const-string v0, "simLoaded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 2687
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 1697
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1698
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 1699
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 1703
    :goto_0
    return-object v0

    .line 1701
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V
    .locals 4
    .parameter "lastFailCauseCode"
    .parameter "apnContext"
    .parameter "retryOverride"

    .prologue
    .line 2520
    if-nez p2, :cond_1

    .line 2521
    const-string v1, "reconnectAfterFail: apnContext == null, impossible"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 2570
    :cond_0
    :goto_0
    return-void

    .line 2526
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2527
    const-string v1, "reconnectAfterFail: apnContext is not Ready, stop this try"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2532
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2534
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->isRetryNeeded()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2535
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2536
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "apnFailed"

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2539
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    if-eqz v1, :cond_6

    .line 2541
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->retryForeverUsingLastTimeout()V

    .line 2554
    :cond_4
    move v0, p3

    .line 2555
    .local v0, nextReconnectDelay:I
    if-gez v0, :cond_5

    .line 2556
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getRetryTimer()I

    move-result v0

    .line 2557
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->increaseRetryCount()V

    .line 2559
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    .line 2561
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2563
    const-string v1, "reconnectAfterFail: NOT Posting GPRS Unavailable notification -- likely transient error"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2544
    .end local v0           #nextReconnectDelay:I
    :cond_6
    const-string v1, "reconnectAfterFail: activate failed, Reregistering to network"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2545
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 2546
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    .line 2547
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto/16 :goto_0

    .line 2567
    .restart local v0       #nextReconnectDelay:I
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    goto/16 :goto_0
.end method

.method private registerMCCChange()V
    .locals 3

    .prologue
    .line 4215
    const-string v1, "ro.ril.n-roaming.mcclist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4216
    .local v0, mcclist:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nationRoaming is set enabled, mcclist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4218
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$NationRoamingObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$NationRoamingObserver;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNationRoamingObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$NationRoamingObserver;

    .line 4228
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MccChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MccChangeReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mMccChangeReceiver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MccChangeReceiver;

    .line 4231
    :cond_0
    return-void
.end method

.method private resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 2253
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    .line 2254
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    .line 2255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    .line 2256
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    .line 2257
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    .line 2258
    return-void
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    .line 2510
    const/4 v0, 0x1

    .line 2512
    .local v0, retry:Z
    const-string v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2513
    const/4 v0, 0x0

    .line 2515
    :cond_0
    return v0
.end method

.method private setEntitleErrorCause(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 3129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set entitle cause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3130
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mEntitleErrorCause:I

    .line 3131
    return-void
.end method

.method private setPdpLimit()V
    .locals 2

    .prologue
    .line 1153
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 1154
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp3GLimit:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    .line 1158
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->checkPDPNumberLimitForRoaming()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UE is on Roaming, set pdpLimitSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1162
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPdpLimit: pdpLimitSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1163
    return-void

    .line 1156
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdp2GLimit:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    goto :goto_0
.end method

.method private setPreferredApn(I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 3948
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-nez v2, :cond_1

    .line 3960
    :cond_0
    :goto_0
    return-void

    .line 3952
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3953
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3955
    if-ltz p1, :cond_0

    .line 3956
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3957
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3958
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private setupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 13
    .parameter "apnContext"

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 1812
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setupData: apnContext="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getApnProfileID(Ljava/lang/String;)I

    move-result v5

    .line 1817
    .local v5, profileId:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getNextWaitingApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 1818
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    if-nez v0, :cond_0

    .line 1819
    const-string v9, "setupData: return for no apn found!"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1940
    :goto_0
    return v8

    .line 1824
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnChangeFlag()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1825
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ApnContext;->setApnChangeFlag(Z)V

    .line 1827
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 1828
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 1829
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1835
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1837
    .local v1, dc:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-nez v1, :cond_9

    .line 1839
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->checkForConnectionForApnContext(Lcom/android/internal/telephony/ApnContext;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .end local v1           #dc:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    check-cast v1, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1841
    .restart local v1       #dc:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-eqz v1, :cond_2

    .line 1842
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

    .line 1843
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

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1848
    :cond_2
    if-nez v1, :cond_3

    .line 1849
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->findDCFromDupApn(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v1

    .line 1853
    :cond_3
    if-nez v1, :cond_4

    .line 1854
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->findReadyDataConnection(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v1

    .line 1857
    :cond_4
    if-nez v1, :cond_5

    .line 1858
    const-string v10, "setupData: No ready GsmDataConnection found!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1861
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->findFreeDataConnection()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v1

    .line 1864
    :cond_5
    if-nez v1, :cond_6

    .line 1865
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createDataConnection()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v1

    .line 1868
    :cond_6
    if-nez v1, :cond_7

    .line 1869
    const-string v9, "setupData: No free GsmDataConnection found!"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1873
    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getDataConnectionId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1874
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->setProfileId(I)V

    .line 1875
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->setActiveApnType(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getRefCountSync()I

    move-result v6

    .line 1877
    .local v6, refCount:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setupData: init dc and apnContext refCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1880
    if-nez v6, :cond_8

    .line 1881
    const-string v10, "default"

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v10

    invoke-direct {p0, v1, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->configureRetry(Lcom/android/internal/telephony/DataConnection;Z)V

    .line 1883
    :cond_8
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1884
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 1887
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v6           #refCount:I
    :cond_9
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 1888
    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v10}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1891
    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v11, "entitle"

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne p1, v10, :cond_a

    .line 1892
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEntitleErrorCause(I)V

    .line 1895
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 1899
    const-string v8, "setupData: data reconnection pending"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1900
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1901
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 1902
    goto/16 :goto_0

    .line 1906
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->dumpSwitchApnRecord()V

    .line 1907
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    if-ne p1, v8, :cond_d

    .line 1908
    const-string v8, "clean SwitchApnRecord"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1909
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iput-object v12, v8, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    .line 1910
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/ApnContext;

    .line 1911
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

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1913
    .end local v7           #tmp:Lcom/android/internal/telephony/ApnContext;
    :cond_c
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1914
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/ApnContext;

    .line 1915
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

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1923
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #tmp:Lcom/android/internal/telephony/ApnContext;
    :cond_d
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    if-eq v8, v9, :cond_e

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v10, "default"

    invoke-virtual {v8, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_f

    .line 1927
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[lte profile] update profile property as "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", pdpLimitSize="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1928
    const-string v8, "ril.pdn.profile"

    iget-object v10, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 1935
    .local v4, msg:Landroid/os/Message;
    const v8, 0x42000

    iput v8, v4, Landroid/os/Message;->what:I

    .line 1936
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1937
    invoke-virtual {v1, v4, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->bringUp(Landroid/os/Message;Lcom/android/internal/telephony/ApnSetting;)V

    .line 1939
    const-string v8, "setupData: initing!"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    move v8, v9

    .line 1940
    goto/16 :goto_0
.end method

.method private setupDataOnReadyApns(Ljava/lang/String;)V
    .locals 9
    .parameter "reason"

    .prologue
    .line 1258
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1259
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1260
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1264
    :cond_1
    iget-object v7, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    if-eqz v7, :cond_0

    .line 1265
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v1

    .line 1267
    .local v1, apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    const/4 v4, 0x0

    .line 1268
    .local v4, hasDefault:Z
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1269
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "default"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1270
    const/4 v4, 0x1

    .line 1274
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_3
    iget-object v7, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->configureRetry(Lcom/android/internal/telephony/DataConnection;Z)V

    goto :goto_0

    .line 1279
    .end local v1           #apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v4           #hasDefault:Z
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v8, "default"

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ApnContext;

    .line 1280
    .local v3, defaultContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v3, :cond_7

    .line 1281
    invoke-virtual {v3}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v7, v8, :cond_5

    .line 1282
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1284
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1286
    invoke-virtual {v3}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v7, v8, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v7, v8, :cond_7

    .line 1288
    :cond_6
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1289
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    .line 1296
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1298
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "default"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1302
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v7, v8, :cond_9

    .line 1307
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1309
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1311
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v7, v8, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v7, v8, :cond_8

    .line 1313
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1314
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto :goto_1

    .line 1318
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_b
    return-void
.end method

.method private shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z
    .locals 1
    .parameter "cause"

    .prologue
    .line 2499
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

    .line 2575
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

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2579
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v2

    .line 2581
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    if-nez v4, :cond_1

    .line 2583
    :cond_0
    const-string v4, "null dcac or dc."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 2602
    :goto_0
    return-void

    .line 2587
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 2590
    .local v1, am:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.android.internal.telephony.gprs-reconnect."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2592
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "reason"

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2593
    const-string v4, "type"

    iget-object v5, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2596
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2598
    .local v0, alarmIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/DataConnectionAc;->setReconnectIntentSync(Landroid/app/PendingIntent;)V

    .line 2599
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, p1

    add-long/2addr v5, v7

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V
    .locals 0
    .parameter "cause"
    .parameter "apnContext"
    .parameter "retryOverride"

    .prologue
    .line 3943
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    .line 3944
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V

    .line 3945
    return-void
.end method

.method private tryEnableGprsAutoDisconnect(ZLjava/lang/String;I)V
    .locals 8
    .parameter "enable"
    .parameter "reason"
    .parameter "delay"

    .prologue
    const/4 v5, 0x0

    .line 976
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGprsAutoDisconnectActivated:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 977
    const-string v3, "[OOSAD] trigger tryEnableGprsAutoDisconnect(): timer is not set"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 998
    :goto_0
    return-void

    .line 980
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OOSAD] trigger tryEnableGprsAutoDisconnect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sec)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 981
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 983
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.gprsautodisconnect"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 984
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "enable"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 985
    const-string v3, "reason"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    const-string v3, "delay"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 987
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 989
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    if-eqz p1, :cond_1

    .line 990
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-int/lit16 v6, p3, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 993
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGprsAutoDisconnectActivated:Z

    goto :goto_0

    .line 995
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 996
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGprsAutoDisconnectActivated:Z

    goto :goto_0
.end method

.method private trySetupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 6
    .parameter "apnContext"

    .prologue
    const/4 v1, 0x0

    .line 1465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** trySetupData for type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PhoneType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trySetupData with mIsPsRestricted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1470
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1473
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1475
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcUpdateConnectedProp()V

    .line 1477
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    const-string v3, "trySetupData: (fix?) We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1480
    const/4 v1, 0x1

    .line 1524
    :goto_0
    return v1

    .line 1483
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 1485
    .local v0, desiredPowerState:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_4

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcIsDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcGetAnyDataEnabled(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isEmergency()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isHtcWifi2GPowerSave(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1495
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_3

    .line 1496
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->buildWaitingApns(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1497
    .local v2, waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1498
    const-string v3, "trySetupData: No APN found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1499
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    .line 1500
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0

    .line 1503
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 1505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trySetupData: Create from mAllApns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1511
    .end local v2           #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setup watingApns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1514
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupData(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    .line 1515
    .local v1, retValue:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1519
    .end local v1           #retValue:Z
    :cond_4
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

    .line 1522
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private trySetupData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "reason"
    .parameter "type"

    .prologue
    .line 1322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trySetupData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_2

    const-string v1, "(unspecified)"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isPsRestricted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1326
    if-nez p2, :cond_0

    .line 1327
    const-string p2, "default"

    .line 1330
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1332
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_1

    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trySetupData new apn context for type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1334
    new-instance v0, Lcom/android/internal/telephony/ApnContext;

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    const-string v1, "GSM"

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/ApnContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1339
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    return v1

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    move-object v1, p1

    .line 1322
    goto :goto_0
.end method

.method private unregisterMCCChange()V
    .locals 3

    .prologue
    .line 4234
    const-string v1, "ro.ril.n-roaming.mcclist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4235
    .local v0, mcclist:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4236
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNationRoamingObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$NationRoamingObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4237
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mMccChangeReceiver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MccChangeReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4239
    :cond_0
    return-void
.end method

.method private usedNumberOfDC()I
    .locals 4

    .prologue
    .line 2736
    const/4 v2, 0x0

    .line 2737
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

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 2738
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/DataConnectionAc;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2741
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2743
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    return v2
.end method


# virtual methods
.method HtcApnHandling()V
    .locals 4

    .prologue
    .line 3564
    const-string v2, "dun"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3566
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v2, :cond_2

    .line 3567
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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3568
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addDUNApnType([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 3587
    :cond_0
    :goto_0
    const-string v2, "supl"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3588
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v2, :cond_5

    .line 3589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcApnHandling: add supl into prefer(id="

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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3590
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addSuplApnType([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 3602
    :cond_1
    const-string v2, "gsm.allapns.created"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3603
    return-void

    .line 3570
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 3571
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v2, "default"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3572
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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3573
    iget-object v2, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addDUNApnType([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    goto :goto_1

    .line 3579
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "dun"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 3592
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 3593
    .restart local v0       #apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v2, "default"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcApnHandling: add supl into default(id="

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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3595
    iget-object v2, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addSuplApnType([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    goto :goto_2
.end method

.method protected HtcGetAnyDataEnabled(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 7
    .parameter "ac"

    .prologue
    const/4 v3, 0x0

    .line 1345
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1350
    const/4 v2, 0x0

    .line 1351
    .local v2, isWhite:Z
    if-eqz p1, :cond_0

    .line 1352
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->whiteList_Check(Ljava/lang/String;)Z

    move-result v2

    .line 1355
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-nez v5, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    if-nez v5, :cond_3

    .line 1360
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcGetAnyDataEnabled = falsemInternalDataEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mUserDataEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sPolicyDataEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isWhiteCheck = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "enabledApntype["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logEnabledApnStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1366
    monitor-exit v4

    .line 1378
    :goto_0
    return v3

    .line 1368
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1371
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1372
    const/4 v3, 0x1

    monitor-exit v4

    goto :goto_0

    .line 1379
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1376
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcGetAnyDataEnabled = falseenabledApntype["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logEnabledApnStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1378
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected HtcIsDataAllowed(Z)Z
    .locals 7
    .parameter "ignoreGprs"

    .prologue
    .line 1403
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1404
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    .line 1405
    .local v3, internalDataEnabled:Z
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v2

    .line 1408
    .local v2, gprsState:I
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v1

    .line 1410
    .local v1, desiredPowerState:Z
    if-nez p1, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    if-eqz v5, :cond_b

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->htcIsRecordLoaded(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_1
    if-eqz v3, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    .line 1422
    .local v0, allowed:Z
    :goto_0
    if-nez v0, :cond_a

    .line 1423
    const-string v4, ""

    .line 1424
    .local v4, reason:Ljava/lang/String;
    if-eqz v2, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    if-nez v5, :cond_3

    .line 1425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - gprs= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1429
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->htcIsRecordLoaded(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - SIM not loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1431
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1433
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - PhoneState= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Concurrent voice and data not allowed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1436
    :cond_5
    if-nez v3, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - mInternalDataEnabled= false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1437
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1438
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Roaming and data roaming not enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1440
    :cond_7
    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - mIsPsRestricted= true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1441
    :cond_8
    if-nez v1, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - desiredPowerState= false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1442
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDataAllowed: not allowed due to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1444
    .end local v4           #reason:Ljava/lang/String;
    :cond_a
    return v0

    .line 1405
    .end local v0           #allowed:Z
    .end local v1           #desiredPowerState:Z
    .end local v2           #gprsState:I
    .end local v3           #internalDataEnabled:Z
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1410
    .restart local v1       #desiredPowerState:Z
    .restart local v2       #gprsState:I
    .restart local v3       #internalDataEnabled:Z
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected HtcOnCleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 1604
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnectionsWithWhiteList(ZLjava/lang/String;)V

    .line 1605
    return-void
.end method

.method HtcisAnyTypeActive()Z
    .locals 3

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

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

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 406
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 407
    const/4 v2, 0x1

    .line 409
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public HtcisDataPossible(Ljava/lang/String;)Z
    .locals 10
    .parameter "apnType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4363
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4364
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_0

    .line 4380
    :goto_0
    return v6

    .line 4367
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    .line 4368
    .local v1, apnContextIsEnabled:Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    .line 4369
    .local v2, apnContextState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    if-eqz v1, :cond_1

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v8, :cond_2

    :cond_1
    move v3, v7

    .line 4371
    .local v3, apnTypePossible:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed()Z

    move-result v4

    .line 4372
    .local v4, dataAllowed:Z
    move v5, v4

    .line 4375
    .local v5, possible:Z
    const-string v8, "HtcisDataPossible(%s): possible=%b isDataAllowed=%b (X)apnTypePossible=%b (X)apnContextisEnabled=%b (X)apnContextState()=%s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v7

    const/4 v6, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x5

    aput-object v2, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    move v6, v5

    .line 4380
    goto :goto_0

    .end local v3           #apnTypePossible:Z
    .end local v4           #dataAllowed:Z
    .end local v5           #possible:Z
    :cond_2
    move v3, v6

    .line 4369
    goto :goto_1
.end method

.method protected cleanUpAllConnections(ZLjava/lang/String;)V
    .locals 4
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 1556
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

    const-string v3, ", PhoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1558
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

    .line 1559
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1560
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    goto :goto_0

    .line 1563
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 1565
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1566
    return-void
.end method

.method protected cleanUpAllConnectionsWithWhiteList(ZLjava/lang/String;)V
    .locals 4
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 1586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpAllConnectionsWithWhiteList: tearDown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PhoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1588
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1589
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->whiteList_Check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpAllConnectionsWithWhiteList: skip white "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1593
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1594
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    goto :goto_0

    .line 1597
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 1599
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1600
    return-void
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter "type"

    .prologue
    const/4 v3, 0x3

    .line 882
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 883
    .local v1, id:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid apnType id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 908
    :goto_0
    monitor-exit p0

    return v2

    .line 888
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableApnType:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", PhoneType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uiCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->count:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uiLast="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->lastIntention:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 892
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 894
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_2

    .line 895
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEnabled(IZ)V

    .line 896
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_1

    .line 897
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "diableApnType: return APN_REQUEST_STARTED, PhoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 898
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 900
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableApnType: return APN_ALREADY_INACTIVE, PhoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 901
    const/4 v2, 0x4

    goto/16 :goto_0

    .line 906
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableApnType: no apn context was found, return APN_REQUEST_FAILED, PhoneType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 908
    goto/16 :goto_0

    .line 882
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #id:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 348
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 360
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 374
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRadioTechChanged(Landroid/os/Handler;)V

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->GprsAutoDisconnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mvnoObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$MVNOChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 398
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->unregisterMCCChange()V

    .line 400
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->destroyDataConnections()V

    .line 401
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 369
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    goto/16 :goto_0
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter "apnType"

    .prologue
    const/4 v3, 0x1

    .line 816
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 817
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 818
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is type not available"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 820
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcNotifyNoEntitle(Lcom/android/internal/telephony/ApnContext;)V

    .line 823
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "default"

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 825
    const/4 v2, 0x2

    .line 857
    :goto_0
    monitor-exit p0

    return v2

    .line 835
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 836
    .local v1, id:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid apnType id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 838
    const/4 v2, 0x3

    goto :goto_0

    .line 841
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mState("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", PhoneType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uiCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->count:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uiLast="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->lastIntention:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->isPendingDisabling()Z

    move-result v2

    if-nez v2, :cond_3

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType: return APN_ALREADY_ACTIVE, PHoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 849
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 851
    :cond_3
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEnabled(IZ)V

    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnType: new apn request for type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " return APN_REQUEST_STARTED, PhoneType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 857
    goto/16 :goto_0

    .line 816
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #id:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 452
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method protected findReadyDataConnection(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 6
    .parameter "apn"

    .prologue
    const/4 v4, 0x0

    .line 1774
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

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1776
    if-nez p1, :cond_1

    move-object v3, v4

    .line 1789
    :goto_1
    return-object v3

    .line 1774
    :cond_0
    const-string v3, "null"

    goto :goto_0

    .line 1779
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

    .line 1780
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 1782
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

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1785
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1786
    iget-object v3, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    goto :goto_1

    .line 1782
    :cond_3
    const-string v3, "null"

    goto :goto_2

    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_4
    move-object v3, v4

    .line 1789
    goto :goto_1
.end method

.method protected getActionIntentReconnectAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    const-string v0, "com.android.internal.telephony.gprs-reconnect"

    return-object v0
.end method

.method public getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 4391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active apn string for type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4392
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4393
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 4394
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 4395
    .local v1, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v1, :cond_0

    .line 4396
    iget-object v2, v1, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    .line 4399
    .end local v1           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active apn string for type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 627
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 629
    .local v1, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v1, :cond_0

    .line 630
    iget-object v2, v1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 633
    .end local v1           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 610
    const-string v3, "get all active apn types"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 611
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 613
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

    .line 614
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
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

.method public getAnyDataEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 954
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 956
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    if-nez v4, :cond_1

    :cond_0
    monitor-exit v3

    .line 965
    :goto_0
    return v2

    .line 958
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 961
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 962
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 966
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 965
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected getApnProfileID(Ljava/lang/String;)I
    .locals 1
    .parameter "apnType"

    .prologue
    .line 4151
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4152
    const/4 v0, 0x2

    .line 4158
    :goto_0
    return v0

    .line 4153
    :cond_0
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4154
    const/4 v0, 0x3

    goto :goto_0

    .line 4155
    :cond_1
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4156
    const/4 v0, 0x4

    goto :goto_0

    .line 4158
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getDataEnabled()Z
    .locals 3

    .prologue
    .line 3801
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3802
    .local v0, defaultAC:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 3801
    .end local v0           #defaultAC:Lcom/android/internal/telephony/ApnContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4316
    :try_start_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x31

    if-ne v3, v4, :cond_2

    .line 4317
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->AllowNationRoaming()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    move v1, v2

    .line 4322
    :cond_1
    :goto_0
    return v1

    .line 4320
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_3

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    .line 4321
    :catch_0
    move-exception v0

    .line 4322
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getEnabledApnTypes()[Ljava/lang/String;
    .locals 12

    .prologue
    .line 639
    const/4 v3, 0x0

    .line 640
    .local v3, i:I
    const/4 v2, 0x0

    .line 642
    .local v2, count:I
    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 643
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 644
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    if-eqz v2, :cond_4

    .line 649
    new-array v7, v2, [Ljava/lang/String;

    .line 650
    .local v7, result:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 651
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 652
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v3

    .line 653
    if-lt v4, v2, :cond_6

    move v3, v4

    .line 662
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v4           #i:I
    .restart local v3       #i:I
    :cond_3
    :goto_2
    const-string v8, ""

    .line 663
    .local v8, tmp:Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v6, :cond_5

    aget-object v9, v1, v5

    .line 664
    .local v9, type:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 663
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 658
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #result:[Ljava/lang/String;
    .end local v8           #tmp:Ljava/lang/String;
    .end local v9           #type:Ljava/lang/String;
    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    .line 659
    .restart local v7       #result:[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "default"

    aput-object v11, v7, v10

    goto :goto_2

    .line 666
    .restart local v1       #arr$:[Ljava/lang/String;
    .local v5, i$:I
    .restart local v6       #len$:I
    .restart local v8       #tmp:Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getEnabledApnTypes() return="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 667
    return-object v7

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v6           #len$:I
    .end local v8           #tmp:Ljava/lang/String;
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    .restart local v4       #i:I
    .local v5, i$:Ljava/util/Iterator;
    :cond_6
    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1
.end method

.method public getEntitleErrorCause()I
    .locals 1

    .prologue
    .line 3125
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mEntitleErrorCause:I

    return v0
.end method

.method protected getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 570
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 571
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 573
    .local v1, dataConnectionAc:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_0

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active pdp is not null, return link Capabilities for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;

    move-result-object v2

    .line 579
    .end local v1           #dataConnectionAc:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 578
    :cond_0
    const-string v2, "return new LinkCapabilities"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 579
    new-instance v2, Landroid/net/LinkCapabilities;

    invoke-direct {v2}, Landroid/net/LinkCapabilities;-><init>()V

    goto :goto_0
.end method

.method protected getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 556
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 557
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 559
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_0

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return link properites for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 565
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 564
    :cond_0
    const-string v2, "return new LinkProperties"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 565
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0
.end method

.method public getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 7

    .prologue
    .line 748
    const/4 v3, 0x0

    .line 749
    .local v3, isConnecting:Z
    const/4 v4, 0x1

    .line 750
    .local v4, isFailed:Z
    const/4 v2, 0x0

    .line 752
    .local v2, isAnyEnabled:Z
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 753
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 754
    const/4 v2, 0x1

    .line 755
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 758
    :pswitch_0
    const-string v5, "overall state is CONNECTED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 759
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 786
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_1
    return-object v5

    .line 762
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :pswitch_1
    const/4 v3, 0x1

    .line 763
    const/4 v4, 0x0

    .line 764
    goto :goto_0

    .line 767
    :pswitch_2
    const/4 v4, 0x0

    goto :goto_0

    .line 773
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    if-nez v2, :cond_2

    .line 774
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 775
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    .line 778
    :cond_2
    if-eqz v3, :cond_3

    .line 779
    const-string v5, "overall state is CONNECTING"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 780
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    .line 781
    :cond_3
    if-nez v4, :cond_4

    .line 782
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 783
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    .line 785
    :cond_4
    const-string v5, "overall state is FAILED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 786
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    .line 755
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getRoamingisAutomic()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4293
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "national_roaming_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 4297
    :cond_0
    :goto_0
    return v1

    .line 4296
    :catch_0
    move-exception v0

    .line 4297
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 731
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 743
    :goto_0
    return-object v1

    .line 736
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 739
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 740
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_2

    .line 741
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    goto :goto_0

    .line 743
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0
.end method

.method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 2247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2248
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 2250
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4037
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsDisposed:Z

    if-eqz v2, :cond_2

    .line 4038
    :cond_0
    const-string v1, "handleMessage: Ignore GSM msgs since GSM phone is inactive"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 4148
    :cond_1
    :goto_0
    return-void

    .line 4042
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 4145
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 4044
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 4048
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onDataConnectionDetached()V

    goto :goto_0

    .line 4052
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onDataConnectionAttached()V

    goto :goto_0

    .line 4056
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onDataStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4060
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onPollPdp()V

    goto :goto_0

    .line 4064
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    .line 4068
    :sswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->doRecovery()V

    goto :goto_0

    .line 4072
    :sswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onApnChanged()V

    goto :goto_0

    .line 4082
    :sswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_PS_RESTRICT_ENABLED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4083
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 4084
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    goto :goto_0

    .line 4092
    :sswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4093
    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    .line 4094
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4095
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    .line 4098
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_4

    .line 4099
    const-string v1, "psRestrictEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 4100
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->resetAllRetryCounts()V

    .line 4101
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 4103
    :cond_4
    const-string v1, "psRestrictEnabled"

    const-string v2, "default"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 4107
    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/ApnContext;

    if-eqz v1, :cond_5

    .line 4108
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onTrySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto/16 :goto_0

    .line 4109
    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 4110
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 4112
    :cond_6
    const-string v1, "EVENT_TRY_SETUP request w/o apnContext or String"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4117
    :sswitch_b
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_7

    .line 4118
    .local v0, tearDown:Z
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CLEAN_UP_CONNECTION tearDown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4119
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/ApnContext;

    if-eqz v1, :cond_8

    .line 4120
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    goto/16 :goto_0

    .end local v0           #tearDown:Z
    :cond_7
    move v0, v1

    .line 4117
    goto :goto_1

    .line 4122
    .restart local v0       #tearDown:Z
    :cond_8
    const-string v1, "EVENT_CLEAN_UP_CONNECTION request w/o apn context"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4127
    .end local v0           #tearDown:Z
    :sswitch_c
    const-string v1, "EVENT_ICC_CARD_READY"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4128
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-nez v1, :cond_1

    .line 4129
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 4130
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v1, :cond_1

    .line 4131
    const-string v1, "get IccCardProxy success"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4132
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    const v2, 0x42002

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/IccCardProxy;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4139
    :sswitch_d
    const-string v1, "EVENT_RADIO_TECH_CHANGED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4140
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onRadioTechChanged()V

    goto/16 :goto_0

    .line 4042
    :sswitch_data_0
    .sparse-switch
        0x42002 -> :sswitch_0
        0x42003 -> :sswitch_a
        0x42004 -> :sswitch_3
        0x42005 -> :sswitch_4
        0x42009 -> :sswitch_1
        0x42010 -> :sswitch_2
        0x42011 -> :sswitch_5
        0x42012 -> :sswitch_6
        0x42013 -> :sswitch_7
        0x42016 -> :sswitch_8
        0x42017 -> :sswitch_9
        0x42018 -> :sswitch_b
        0x4202c -> :sswitch_c
        0x4202e -> :sswitch_d
    .end sparse-switch
.end method

.method protected initApnContextsAndDataConnection()V
    .locals 11

    .prologue
    .line 468
    const-string v9, "net.def_data_on_boot"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 477
    .local v3, defaultEnabled:Z
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070032

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 481
    .local v8, networkConfigStrings:[Ljava/lang/String;
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 482
    .local v7, networkConfigString:Ljava/lang/String;
    new-instance v6, Landroid/net/NetworkConfig;

    invoke-direct {v6, v7}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 483
    .local v6, networkConfig:Landroid/net/NetworkConfig;
    const/4 v0, 0x0

    .line 485
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    iget v9, v6, Landroid/net/NetworkConfig;->type:I

    packed-switch v9, :pswitch_data_0

    .line 481
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 487
    :pswitch_1
    const-string v9, "default"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 488
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnContext;->setEnabled(Z)V

    .line 490
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v10

    aput-boolean v3, v9, v10

    .line 546
    :goto_2
    if-eqz v0, :cond_0

    .line 548
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apntype="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, v6, Landroid/net/NetworkConfig;->dependencyMet:Z

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onSetDependencyMet(Ljava/lang/String;Z)V

    goto :goto_1

    .line 494
    :pswitch_2
    const-string v9, "mms"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 495
    goto :goto_2

    .line 497
    :pswitch_3
    const-string v9, "supl"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 498
    goto :goto_2

    .line 500
    :pswitch_4
    const-string v9, "dun"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 501
    goto :goto_2

    .line 503
    :pswitch_5
    const-string v9, "hipri"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 504
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v10, "default"

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 505
    .local v2, defaultContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v2, :cond_0

    .line 506
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v9

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v10

    invoke-direct {p0, v0, v9, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto :goto_1

    .line 513
    .end local v2           #defaultContext:Lcom/android/internal/telephony/ApnContext;
    :pswitch_6
    const-string v9, "fota"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 514
    goto :goto_2

    .line 516
    :pswitch_7
    const-string v9, "ims"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 517
    goto :goto_2

    .line 519
    :pswitch_8
    const-string v9, "cbs"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 520
    goto :goto_2

    .line 523
    :pswitch_9
    const-string v9, "internet"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 524
    goto :goto_2

    .line 526
    :pswitch_a
    const-string v9, "entitle"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 527
    goto :goto_2

    .line 529
    :pswitch_b
    const-string v9, "admin"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 530
    goto/16 :goto_2

    .line 534
    :pswitch_c
    const-string v9, "httpproxy"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 535
    goto/16 :goto_2

    .line 539
    :pswitch_d
    const-string v9, "cmmail"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 540
    goto/16 :goto_2

    .line 552
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v6           #networkConfig:Landroid/net/NetworkConfig;
    .end local v7           #networkConfigString:Ljava/lang/String;
    :cond_1
    return-void

    .line 485
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
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 416
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 417
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcisAnyTypeActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 419
    goto :goto_0

    .line 422
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 423
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_3

    move v1, v2

    goto :goto_0

    .line 425
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 4
    .parameter "type"

    .prologue
    .line 919
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 920
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 921
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    const/4 v2, 0x1

    .line 932
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    .line 928
    :cond_1
    const-string v2, "fota"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 929
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "noApnForFOTA"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 932
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "apnType"

    .prologue
    const/4 v1, 0x0

    .line 683
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcisAnyTypeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    const/4 v1, 0x1

    .line 693
    :cond_0
    :goto_0
    return v1

    .line 689
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 690
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method protected isApnTypeSupported(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 938
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 939
    .local v3, s:Ljava/lang/String;
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 940
    const/4 v4, 0x1

    .line 943
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 938
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected isConnected()Z
    .locals 4

    .prologue
    .line 3495
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

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

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3496
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_0

    .line 3498
    const/4 v2, 0x1

    .line 3502
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isDataAllowed()Z
    .locals 7

    .prologue
    .line 1211
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1212
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    .line 1213
    .local v3, internalDataEnabled:Z
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v2

    .line 1216
    .local v2, gprsState:I
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v1

    .line 1218
    .local v1, desiredPowerState:Z
    if-eqz v2, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    if-eqz v5, :cond_b

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->htcIsRecordLoaded(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_1
    if-eqz v3, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    .line 1230
    .local v0, allowed:Z
    :goto_0
    if-nez v0, :cond_a

    .line 1231
    const-string v4, ""

    .line 1232
    .local v4, reason:Ljava/lang/String;
    if-eqz v2, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    if-nez v5, :cond_3

    .line 1233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - gprs= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1237
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->htcIsRecordLoaded(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - SIM not loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1239
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - PhoneState= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Concurrent voice and data not allowed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1244
    :cond_5
    if-nez v3, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - mInternalDataEnabled= false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1245
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Roaming and data roaming not enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1248
    :cond_7
    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - mIsPsRestricted= true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1249
    :cond_8
    if-nez v1, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - desiredPowerState= false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1250
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDataAllowed: not allowed due to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1252
    .end local v4           #reason:Ljava/lang/String;
    :cond_a
    return v0

    .line 1213
    .end local v0           #allowed:Z
    .end local v1           #desiredPowerState:Z
    .end local v2           #gprsState:I
    .end local v3           #internalDataEnabled:Z
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1218
    .restart local v1       #desiredPowerState:Z
    .restart local v2       #gprsState:I
    .restart local v3       #internalDataEnabled:Z
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public isDataConnectionAsDesired()Z
    .locals 2

    .prologue
    .line 593
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 604
    .local v0, roaming:Z
    const/4 v1, 0x1

    return v1
.end method

.method protected isDataPossible(Ljava/lang/String;)Z
    .locals 10
    .parameter "apnType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 430
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 431
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_0

    .line 447
    :goto_0
    return v6

    .line 434
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    .line 435
    .local v1, apnContextIsEnabled:Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    .line 436
    .local v2, apnContextState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    if-eqz v1, :cond_1

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v8, :cond_2

    :cond_1
    move v3, v7

    .line 438
    .local v3, apnTypePossible:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed()Z

    move-result v4

    .line 439
    .local v4, dataAllowed:Z
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    move v5, v7

    .line 442
    .local v5, possible:Z
    :goto_2
    const-string v8, "isDataPossible(%s): possible=%b isDataAllowed=%b apnTypePossible=%b apnContextisEnabled=%b apnContextState()=%s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v7

    const/4 v6, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x5

    aput-object v2, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    move v6, v5

    .line 447
    goto :goto_0

    .end local v3           #apnTypePossible:Z
    .end local v4           #dataAllowed:Z
    .end local v5           #possible:Z
    :cond_2
    move v3, v6

    .line 436
    goto :goto_1

    .restart local v3       #apnTypePossible:Z
    .restart local v4       #dataAllowed:Z
    :cond_3
    move v5, v6

    .line 439
    goto :goto_2
.end method

.method public isDisconnected()Z
    .locals 3

    .prologue
    .line 3507
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

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

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3508
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3510
    const/4 v2, 0x0

    .line 3514
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 4178
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 4183
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    return-void
.end method

.method public nfcQueryPdpCid()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 4330
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->usedNumberOfDC()I

    move-result v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    if-lt v5, v6, :cond_4

    .line 4331
    const-wide/16 v3, -0x1

    .line 4332
    .local v3, latestTime:J
    const/4 v2, 0x0

    .line 4333
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

    .line 4334
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCreateTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-ltz v5, :cond_0

    .line 4335
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

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

    .line 4337
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCreateTime()J

    move-result-wide v3

    .line 4338
    move-object v2, v0

    goto :goto_0

    .line 4339
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    if-ne v5, v8, :cond_0

    .line 4340
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCreateTime()J

    move-result-wide v3

    .line 4341
    move-object v2, v0

    goto :goto_0

    .line 4346
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    if-nez v2, :cond_3

    .line 4347
    const-string v5, "nfcQueryPdpCid WARNING: can not find any DCAC, return 0"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4348
    const/4 v5, 0x0

    .line 4356
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #latestTime:J
    :goto_1
    return v5

    .line 4350
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    .restart local v3       #latestTime:J
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nfcQueryPdpCid: return dc.mId="

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

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4352
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v5

    goto :goto_1

    .line 4355
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #latestTime:J
    :cond_4
    const-string v5, "nfcQueryPdpCid: return -1"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4356
    const/4 v5, -0x1

    goto :goto_1
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 3519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnection: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3520
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3521
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnection: type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3523
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_1

    move-object v2, p1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3527
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 3528
    return-void
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 6
    .parameter "reason"

    .prologue
    .line 1531
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1532
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1533
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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1534
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

    .line 1539
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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1544
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    return-void
.end method

.method protected onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GPRS reconnect alarm. Previous state was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 217
    const-string v5, "reason"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, reason:Ljava/lang/String;
    const-string v5, "type"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 220
    .local v1, connectionId:I
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 222
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 224
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v5, v6, :cond_0

    .line 226
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 228
    :cond_0
    const v5, 0x42003

    invoke-virtual {p0, v5, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 231
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/DataConnectionAc;->setReconnectIntentSync(Landroid/app/PendingIntent;)V

    .line 233
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method protected onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 1581
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 1582
    return-void
.end method

.method protected onCleanUpConnection(ZILjava/lang/String;)V
    .locals 3
    .parameter "tearDown"
    .parameter "apnId"
    .parameter "reason"

    .prologue
    .line 3463
    const-string v1, "onCleanUpConnection"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3464
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3465
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 3466
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 3467
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    .line 3469
    :cond_0
    return-void
.end method

.method protected onDataConnectionDetached()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1029
    const-string v3, "onDataConnectionDetached: stop polling and notify detached"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1031
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAttached:Z

    .line 1033
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 1034
    const-string v3, "dataDetached"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1036
    const-string v3, "persist.ril.oosautodisconnect"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1037
    .local v0, oosDisconnectEnable:I
    const-string v3, "persist.ril.oosdisconnecttime"

    const-string v4, "120"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1038
    .local v1, oosDisconnectTimeout:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    .line 1039
    .local v2, state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OOSAD] OOS_AUTO_DISCONNECT_PROP is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1040
    if-ne v0, v5, :cond_2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_2

    .line 1043
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OOSAD] phoneState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " concurrent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1045
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1048
    :cond_1
    const-string v3, "dataDetached"

    invoke-direct {p0, v5, v3, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->tryEnableGprsAutoDisconnect(ZLjava/lang/String;I)V

    .line 1051
    :cond_2
    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 17
    .parameter "ar"

    .prologue
    .line 3137
    const/4 v2, 0x0

    .line 3139
    .local v2, apnContext:Lcom/android/internal/telephony/ApnContext;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v13, v13, Lcom/android/internal/telephony/ApnContext;

    if-eqz v13, :cond_0

    .line 3140
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 3145
    .restart local v2       #apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataSetupCompleteOk(Landroid/os/AsyncResult;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 3146
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v8

    .line 3147
    .local v8, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-nez v8, :cond_1

    .line 3148
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "onDataSetupCompete: No dcac"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 3142
    .end local v8           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_0
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "onDataSetupComplete: No apnContext"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 3150
    .restart local v8       #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v7

    .line 3156
    .local v7, dc:Lcom/android/internal/telephony/DataConnection;
    const-string v3, "<unknown>"

    .line 3157
    .local v3, apnStr:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 3159
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v13, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 3161
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDataSetupComplete: success apn="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3165
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 3166
    .local v1, apn:Lcom/android/internal/telephony/ApnSetting;
    iget-object v13, v1, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    if-eqz v13, :cond_4

    iget-object v13, v1, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    .line 3168
    :try_start_0
    iget-object v10, v1, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    .line 3169
    .local v10, port:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v10, "8080"

    .line 3170
    :cond_3
    new-instance v11, Landroid/net/ProxyProperties;

    iget-object v13, v1, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    invoke-direct {v11, v13, v14, v15}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3172
    .local v11, proxy:Landroid/net/ProxyProperties;
    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/DataConnectionAc;->setLinkPropertiesHttpProxySync(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3180
    .end local v10           #port:Ljava/lang/String;
    .end local v11           #proxy:Landroid/net/ProxyProperties;
    :cond_4
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v13

    const-string v14, "default"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3181
    const-string v13, "gsm.defaultpdpcontext.active"

    const-string v14, "true"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-nez v13, :cond_5

    .line 3183
    const-string v13, "onDataSetupComplete: PREFERED APN is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3184
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 3185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v13, :cond_5

    .line 3186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v13, v13, Lcom/android/internal/telephony/ApnSetting;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 3192
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDefaultData(Lcom/android/internal/telephony/ApnContext;)V

    .line 3196
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->UpdateDataRoamingSound(Z)V

    .line 3288
    .end local v1           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v3           #apnStr:Ljava/lang/String;
    .end local v7           #dc:Lcom/android/internal/telephony/DataConnection;
    .end local v8           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_2
    return-void

    .line 3173
    .restart local v1       #apn:Lcom/android/internal/telephony/ApnSetting;
    .restart local v3       #apnStr:Ljava/lang/String;
    .restart local v7       #dc:Lcom/android/internal/telephony/DataConnection;
    .restart local v8       #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :catch_0
    move-exception v9

    .line 3174
    .local v9, e:Ljava/lang/NumberFormatException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3190
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :cond_6
    const-string v13, "gsm.defaultpdpcontext.active"

    const-string v14, "false"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3202
    .end local v1           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v3           #apnStr:Ljava/lang/String;
    .end local v7           #dc:Lcom/android/internal/telephony/DataConnection;
    .end local v8           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_7
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v5, v13

    check-cast v5, Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 3205
    .local v5, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v13, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3209
    .local v4, apnString:Ljava/lang/String;
    :goto_3
    const-string v13, "onDataSetupComplete: error apn=%s cause=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3211
    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection$FailCause;->isEventLoggable()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 3213
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getCellLocationId()I

    move-result v6

    .line 3214
    .local v6, cid:I
    const v13, 0xc3b9

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3219
    .end local v6           #cid:I
    :cond_8
    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->decWaitingApnsPermFailCount()V

    .line 3221
    :cond_9
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->removeNextWaitingApn()V

    .line 3223
    const-string v13, "onDataSetupComplete: WaitingApns.size=%d WaitingApnsPermFailureCountDown=%d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v14, "entitle"

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-ne v2, v13, :cond_a

    .line 3232
    sget-object v13, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne v5, v13, :cond_c

    const/16 v13, 0x21

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEntitleErrorCause(I)V

    .line 3236
    :cond_a
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 3237
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v13

    if-nez v13, :cond_e

    .line 3239
    const-string v13, "onDataSetupComplete: All APN\'s had permanent failures, stop retrying"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3241
    sget-object v13, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 3243
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v13

    const-string v14, "default"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    sget-object v13, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq v5, v13, :cond_b

    sget-object v13, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne v5, v13, :cond_d

    .line 3246
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v14, "datt not subcribed"

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    :goto_5
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 3254
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 3257
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcTryPendingEnabled(Lcom/android/internal/telephony/ApnContext;)V

    .line 3261
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDataSetupComplete: permanent error apn=%s"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3285
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcUpdateConnectedProp()V

    goto/16 :goto_2

    .line 3206
    .end local v4           #apnString:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 3207
    .local v9, e:Ljava/lang/Exception;
    const-string v4, "<unknown>"

    .restart local v4       #apnString:Ljava/lang/String;
    goto/16 :goto_3

    .line 3232
    .end local v9           #e:Ljava/lang/Exception;
    :cond_c
    const/4 v13, 0x0

    goto :goto_4

    .line 3250
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v14, "apnFailed"

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3264
    :cond_e
    const-string v13, "onDataSetupComplete: Not all permanent failures, retry"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3266
    const/4 v12, -0x1

    .line 3267
    .local v12, retryOverride:I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v13, v13, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    if-eqz v13, :cond_f

    .line 3268
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v13, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    invoke-virtual {v13}, Lcom/android/internal/telephony/DataConnection$CallSetupException;->getRetryOverride()I

    move-result v12

    .line 3271
    :cond_f
    const v13, 0x7fffffff

    if-ne v12, v13, :cond_10

    .line 3272
    const-string v13, "No retry is suggested."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 3274
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V

    goto :goto_6

    .line 3278
    .end local v12           #retryOverride:I
    :cond_11
    const-string v13, "onDataSetupComplete: Try next APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3279
    sget-object v13, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 3282
    sget v13, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DELAY_MILLIS:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    goto :goto_6
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 7
    .parameter "connId"
    .parameter "ar"

    .prologue
    const/4 v6, 0x0

    .line 3311
    const/4 v0, 0x0

    .line 3313
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnectDone: EVENT_DISCONNECT_DONE connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3314
    iget-object v3, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/ApnContext;

    if-eqz v3, :cond_0

    .line 3315
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3325
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_1

    .line 3326
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 3332
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcUpdateConnectedProp()V

    .line 3335
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 3339
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDisconnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3342
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->UpdateDataRoamingSound(Z)V

    .line 3344
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3346
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 3347
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 3348
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 3408
    :goto_1
    return-void

    .line 3317
    :cond_0
    const-string v3, "Invalid ar in onDisconnectDone"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3328
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " avoid npe, ignore setState IDLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3360
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->dumpSwitchApnRecord()V

    .line 3361
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isSwitchOff(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3364
    const-string v3, "gsm.defaultpdpcontext.active"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    sget v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DELAY_MILLIS:I

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    .line 3399
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    if-eqz v3, :cond_7

    .line 3400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnectDone: trySetupData for pending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3402
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto :goto_1

    .line 3372
    :cond_3
    const-string v3, "clean (switchoff\'s) apn/dc/dcac"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3373
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 3374
    .local v2, switched:Lcom/android/internal/telephony/ApnContext;
    if-eq v2, v0, :cond_4

    .line 3375
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 3376
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 3377
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_3

    .line 3388
    .end local v2           #switched:Lcom/android/internal/telephony/ApnContext;
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_6

    .line 3389
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 3390
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 3391
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_2

    .line 3393
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " avoid npe, ignore clean apn/dc/dcac"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3404
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcTryPendingEnabled(Lcom/android/internal/telephony/ApnContext;)V

    goto/16 :goto_1
.end method

.method protected onEnableApn(II)V
    .locals 4
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    .line 3028
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3029
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_0

    .line 3030
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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 3036
    :goto_0
    return-void

    .line 3034
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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3035
    if-ne p2, v1, :cond_1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onPollPdp()V
    .locals 3

    .prologue
    .line 3411
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 3413
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42004

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 3414
    const v0, 0x42005

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3416
    :cond_0
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3078
    const-string v0, "onRadioAvailable"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3079
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3083
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 3085
    const-string v0, "onRadioAvailable: We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3091
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->htcIsRecordLoaded(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3093
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 3096
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_2

    .line 3097
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    .line 3099
    :cond_2
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3106
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

    .line 3107
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto :goto_0

    .line 3109
    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 3111
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3114
    const-string v2, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3119
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 3120
    return-void

    .line 3116
    :cond_1
    const-string v2, "onRadioOffOrNotAvailable: is off and clean up all connections"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3117
    const-string v2, "radioTurnedOff"

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method protected onRadioTechChanged()V
    .locals 3

    .prologue
    .line 3472
    const-string v1, "onRadioTechChanged"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3473
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    .line 3475
    .local v0, oldpdp:I
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAttached:Z

    if-eqz v1, :cond_0

    .line 3476
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getPdpLimit()V

    .line 3477
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPdpLimit()V

    .line 3481
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    if-lt v1, v0, :cond_1

    .line 3491
    :cond_0
    :goto_0
    return-void

    .line 3484
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->usedNumberOfDC()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 3485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldpdp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pdpLimitSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  > = usedNumberOfDC(), return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3488
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdpLimitSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "oldpdp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "usedNumberOfDC()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->usedNumberOfDC()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3489
    const/4 v1, 0x1

    const-string v2, "RadioTechChange"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onRoamingOff()V
    .locals 1

    .prologue
    .line 3053
    const-string v0, "onRoamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3055
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3056
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 3057
    const-string v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 3061
    :goto_0
    return-void

    .line 3059
    :cond_0
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRoamingOn()V
    .locals 2

    .prologue
    .line 3065
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3066
    const-string v0, "onRoamingOn: setup data on roaming"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3067
    const-string v0, "roamingOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 3068
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 3074
    :goto_0
    return-void

    .line 3070
    :cond_0
    const-string v0, "onRoamingOn: Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3071
    const/4 v0, 0x1

    const-string v1, "roamingOn"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 3072
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 4
    .parameter "apnType"
    .parameter "met"

    .prologue
    .line 2692
    const-string v1, "hipri"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2707
    :cond_0
    :goto_0
    return-void

    .line 2693
    :cond_1
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetDependencyMet, apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", met= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from PID/UID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2696
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_2

    .line 2697
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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2701
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    .line 2702
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2704
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "hipri"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2705
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto/16 :goto_0
.end method

.method protected onTrySetupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 3047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrySetupData: apnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3048
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v0

    return v0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    .line 3041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrySetupData: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3042
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 3043
    const/4 v0, 0x1

    return v0
.end method

.method protected onVoiceCallEnded()V
    .locals 1

    .prologue
    .line 3430
    const-string v0, "onVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3431
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3432
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3435
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPollwithoutResetPollStatus()V

    .line 3437
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 3459
    :cond_0
    :goto_0
    return-void

    .line 3442
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 3443
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPollwithoutResetPollStatus()V

    goto :goto_0

    .line 3450
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->HtcisAnyTypeEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3453
    const-string v0, "2G voice call end while no enabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3454
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 3457
    :cond_3
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onVoiceCallStarted()V
    .locals 1

    .prologue
    .line 3420
    const-string v0, "onVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3422
    const-string v0, "onVoiceCallStarted stop polling"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3423
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 3424
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 3426
    :cond_0
    return-void
.end method

.method protected restartRadio()V
    .locals 3

    .prologue
    .line 2351
    const-string v1, "restartRadio: ************TURN OFF RADIO**************"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2352
    const/4 v1, 0x1

    const-string v2, "radioTurnedOff"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 2353
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 2362
    const-string v1, "net.ppp.reset-by-timeout"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2363
    .local v0, reset:I
    const-string v1, "net.ppp.reset-by-timeout"

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    return-void
.end method

.method public setDataOnNationalRoamingMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 4305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "National Roaming mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4306
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "national_roaming_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 4308
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onNationRoamingDisabled()V

    .line 4311
    :goto_0
    return-void

    .line 4310
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onNationRoamingEnabled()V

    goto :goto_0
.end method

.method public setPreferredApnIfNeeded()Z
    .locals 5

    .prologue
    .line 3542
    const-string v3, "net.enable.prefer.apn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3544
    .local v1, enableByProp:Ljava/lang/String;
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    :cond_0
    if-eqz v1, :cond_3

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3547
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 3548
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 3549
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v3, "default"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htc customize, setPreferredApn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3551
    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 3552
    const/4 v3, 0x1

    .line 3557
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState should not be used in GSM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method protected startNetStatPoll()V
    .locals 2

    .prologue
    .line 2323
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 2324
    const-string v0, "startNetStatPoll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2325
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->resetPollStats()V

    .line 2326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 2327
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2329
    :cond_0
    return-void
.end method

.method protected startNetStatPollwithoutResetPollStatus()V
    .locals 2

    .prologue
    .line 2333
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

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

    .line 2334
    const-string v0, "GSM"

    const-string v1, "[DataConnection] Start poll NetStat without reset poll status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 2336
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2338
    :cond_0
    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 1

    .prologue
    .line 2344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 2345
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2346
    const-string v0, "stopNetStatPoll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2347
    return-void
.end method

.method public wifi2GRetry()V
    .locals 2

    .prologue
    .line 4385
    const-string v0, "wifi2G power save is off, send EVENT_TRY_SETUP_DATA"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4386
    const v0, 0x42003

    const-string v1, "dataEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4387
    return-void
.end method
