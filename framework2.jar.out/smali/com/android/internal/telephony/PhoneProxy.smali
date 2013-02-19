.class public Lcom/android/internal/telephony/PhoneProxy;
.super Landroid/os/Handler;
.source "PhoneProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;
.implements Lcom/android/internal/telephony/HtcIfPhoneProxy;


# static fields
.field private static final DEBUG_PDN_SETTING_INTERFACE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ENABLE_PDN_SETTING_INTERFACE:Z = false

.field private static final EVENT_ENTER_LPM:I = 0x2

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x65

.field private static final EVENT_GET_IMEISV_DONE:I = 0x67

.field private static final EVENT_GET_IMEI_DONE:I = 0x66

.field private static final EVENT_HTC_GET_DEVICE_MFG_CODE_IN_NV:I = 0x6f

.field private static final EVENT_HTC_GET_PDN_SETTING2:I = 0x6a

.field private static final EVENT_HTC_GET_PDN_SETTING2_CONT:I = 0x6b

.field private static final EVENT_HTC_GET_PDN_SETTING2_RESULT:I = 0x6c

.field private static final EVENT_HTC_SET_PDN_SETTING2:I = 0x6d

.field private static final EVENT_HTC_SET_PDN_SETTING2_RESULT:I = 0x6e

.field private static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x69

.field private static final EVENT_RADIO_AVAILABLE:I = 0x68

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x4

.field private static final EVENT_RADIO_TECHNOLOGY_CHANGED:I = 0x1

.field protected static final EVENT_REQUESET_PHONE_CLASS_CHANGE_DONE:I = 0x64

.field private static final EVENT_REQUEST_VOICE_RADIO_TECH_DONE:I = 0x5

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x7

.field private static final EVENT_SET_RADIO_POWER:I = 0x6

.field private static final EVENT_VOICE_RADIO_TECHNOLOGY_CHANGED:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final lockForRadioTechnologyChange:Ljava/lang/Object;

.field private static final pdnIpTypes:[Ljava/lang/String;

.field private static final pdnLables_Spcs:[Ljava/lang/String;

.field private static final pdnLables_Vzw:[Ljava/lang/String;


# instance fields
.field protected mActivePhone:Lcom/android/internal/telephony/Phone;

.field protected mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mDct:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mDesiredPowerState:Z

.field private mDeviceMfgCodeRequested:Ljava/lang/Integer;

.field private mEsn:Ljava/lang/String;

.field private mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

.field private mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

.field private mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

.field protected mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field protected mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mMeid:Ljava/lang/String;

.field protected mOutgoingPhone:Ljava/lang/String;

.field protected mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

.field private mResetModemOnRadioTechnologyChange:Z

.field private rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    .line 2104
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x52

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x49

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x64

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    .line 2297
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "IPv4"

    aput-object v3, v0, v1

    const-string v3, "IPv6"

    aput-object v3, v0, v2

    const-string v3, "IPv4v6"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    .line 2434
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v0, v1

    const-string v3, "2"

    aput-object v3, v0, v2

    const-string v3, "3"

    aput-object v3, v0, v5

    const-string v3, "4"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string v4, "5"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Vzw:[Ljava/lang/String;

    .line 2435
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "ota"

    aput-object v3, v0, v1

    const-string v1, "internet"

    aput-object v1, v0, v2

    const-string v1, "pam"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Spcs:[Ljava/lang/String;

    return-void

    :cond_1
    move v0, v1

    .line 2104
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 139
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 86
    iput-boolean v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    .line 130
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    .line 131
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    .line 140
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 143
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    new-instance v4, Lcom/android/internal/telephony/IccCardProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v4, v1}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 146
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    .line 150
    :cond_0
    const-string v1, "persist.radio.reset_on_switch"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    .line 152
    new-instance v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    .line 154
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 156
    new-instance v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 168
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x68

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x2

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForEnterLowPowerMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x4

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 184
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, airplaneMode:I
    if-gtz v0, :cond_8

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V

    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    .end local v0           #airplaneMode:I
    :cond_3
    const-string v1, "htctelephonyinternal"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    .line 196
    new-instance v1, Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, v2, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    .line 197
    const-string v1, "PHONE"

    const-string v2, "ServiceManager.addService:htctelephonyinternal"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v1, "htctelephonyinternal"

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 204
    :cond_4
    const-string v1, "htctelephony"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->enableFullyIHtcTelephony:Z

    if-nez v1, :cond_5

    .line 205
    new-instance v1, Lcom/android/internal/telephony/HtcTelephony;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, v2, v4}, Lcom/android/internal/telephony/HtcTelephony;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    .line 206
    const-string v1, "PHONE"

    const-string v2, "ServiceManager.addService:htctelephony"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v1, "htctelephony"

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 213
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v1, v1, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_6

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/PhoneBase;->sendEmergencyPlusCallBackModeStatus(Z)V

    .line 217
    :cond_6
    return-void

    :cond_7
    move v1, v3

    .line 150
    goto/16 :goto_0

    .restart local v0       #airplaneMode:I
    :cond_8
    move v2, v3

    .line 187
    goto :goto_1
.end method

.method private getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "mmdctClass"

    .prologue
    .line 2207
    move-object v0, p1

    .line 2208
    .local v0, mmdt:Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 2209
    instance-of v1, p1, Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 2210
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 2213
    .end local v0           #mmdt:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method private getMMDataConnectionTrackerClass()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2197
    const/4 v0, 0x0

    .line 2199
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v2, "com.android.internal.telephony.MMDataConnectionTracker"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 2203
    :goto_0
    return-object v1

    .line 2200
    :catch_0
    move-exception v1

    .line 2201
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getPdnSettings2Cont_handling(IILandroid/os/AsyncResult;Landroid/os/Handler;)V
    .locals 11
    .parameter "requestType"
    .parameter "resultType"
    .parameter "ar"
    .parameter "remainingHandling"

    .prologue
    .line 2543
    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v8, :cond_1

    .line 2544
    iget-object v8, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    move-object v3, v8

    check-cast v3, [Ljava/lang/Object;

    .line 2545
    .local v3, msgDataArray:[Ljava/lang/Object;
    const/4 v8, 0x1

    aget-object v8, v3, v8

    check-cast v8, Lcom/android/internal/telephony/APNParam;

    move-object v4, v8

    check-cast v4, Lcom/android/internal/telephony/APNParam;

    .line 2546
    .local v4, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v8, 0x2

    aget-object v8, v3, v8

    check-cast v8, Landroid/os/Message;

    move-object v6, v8

    check-cast v6, Landroid/os/Message;

    .line 2547
    .local v6, request:Landroid/os/Message;
    const/4 v8, 0x3

    aget-object v8, v3, v8

    check-cast v8, [Ljava/lang/String;

    move-object v7, v8

    check-cast v7, [Ljava/lang/String;

    .line 2549
    .local v7, result:[Ljava/lang/String;
    iget-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    .line 2551
    iget-object v8, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p2, v8, v7}, Lcom/android/internal/telephony/PhoneProxy;->processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2554
    const/4 v8, 0x0

    aget-object v8, v3, v8

    check-cast v8, [Ljava/lang/String;

    move-object v1, v8

    check-cast v1, [Ljava/lang/String;

    .line 2555
    .local v1, knownPdns:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2556
    .local v0, index:I
    :goto_0
    array-length v8, v1

    if-ge v0, v8, :cond_0

    iget-object v8, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    aget-object v9, v1, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2559
    :cond_0
    array-length v8, v1

    if-ge v0, v8, :cond_2

    .line 2560
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN(cont) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    new-instance v5, Lcom/android/internal/telephony/APNParam;

    aget-object v8, v1, v0

    iget v9, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    invoke-direct {v5, v8, v9}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2562
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .local v5, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/16 v8, 0x6b

    invoke-virtual {p4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2563
    .local v2, msg:Landroid/os/Message;
    const/4 v8, 0x1

    aput-object v5, v3, v8

    .line 2564
    const/4 v8, 0x3

    aput-object v7, v3, v8

    .line 2565
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 2566
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2567
    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-direct {p0, v5, v2, v8}, Lcom/android/internal/telephony/PhoneProxy;->queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object v8

    iput-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v5

    .line 2577
    .end local v0           #index:I
    .end local v1           #knownPdns:[Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    .end local v5           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :goto_1
    iget-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_1

    .line 2578
    invoke-direct {p0, p1, p2, v7}, Lcom/android/internal/telephony/PhoneProxy;->processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2581
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2584
    .end local v3           #msgDataArray:[Ljava/lang/Object;
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .end local v6           #request:Landroid/os/Message;
    .end local v7           #result:[Ljava/lang/String;
    :cond_1
    return-void

    .line 2570
    .restart local v0       #index:I
    .restart local v1       #knownPdns:[Ljava/lang/String;
    .restart local v3       #msgDataArray:[Ljava/lang/Object;
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v6       #request:Landroid/os/Message;
    .restart local v7       #result:[Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "End of query PDN(cont)"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_1

    .line 2574
    .end local v0           #index:I
    .end local v1           #knownPdns:[Ljava/lang/String;
    :cond_3
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN(cont) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V
    .locals 7
    .parameter "requestType"
    .parameter "resultType"
    .parameter "ar"

    .prologue
    .line 2587
    sget-boolean v4, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v4, :cond_0

    .line 2588
    iget-object v4, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Object;

    .line 2589
    .local v1, msgDataArray:[Ljava/lang/Object;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    check-cast v4, Lcom/android/internal/telephony/APNParam;

    check-cast v4, Lcom/android/internal/telephony/APNParam;

    iget-object v0, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2590
    .local v0, currPdn:Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Landroid/os/Message;

    move-object v2, v4

    check-cast v2, Landroid/os/Message;

    .line 2591
    .local v2, request:Landroid/os/Message;
    const/4 v4, 0x3

    aget-object v4, v1, v4

    check-cast v4, [Ljava/lang/String;

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 2593
    .local v3, result:[Ljava/lang/String;
    iget-object v4, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 2594
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query PDN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    iget-object v4, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p2, v4, v3}, Lcom/android/internal/telephony/PhoneProxy;->processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2601
    :goto_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/telephony/PhoneProxy;->processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v3, :cond_2

    iget-object v4, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :goto_1
    invoke-static {v2, v5, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2604
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2606
    .end local v0           #currPdn:Ljava/lang/String;
    .end local v1           #msgDataArray:[Ljava/lang/Object;
    .end local v2           #request:Landroid/os/Message;
    .end local v3           #result:[Ljava/lang/String;
    :cond_0
    return-void

    .line 2598
    .restart local v0       #currPdn:Ljava/lang/String;
    .restart local v1       #msgDataArray:[Ljava/lang/Object;
    .restart local v2       #request:Landroid/os/Message;
    .restart local v3       #result:[Ljava/lang/String;
    :cond_1
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query PDN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2601
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 17
    .parameter "requestType"
    .parameter "requestObj"
    .parameter "remainingHandling"

    .prologue
    .line 2443
    const/4 v14, 0x1

    aget-object v13, p2, v14

    check-cast v13, Landroid/os/Message;

    .line 2444
    .local v13, request:Landroid/os/Message;
    if-eqz v13, :cond_3

    .line 2445
    const/4 v1, 0x0

    .line 2446
    .local v1, errorResult:Ljava/lang/Exception;
    const/4 v14, 0x0

    aget-object v14, p2, v14

    check-cast v14, [Ljava/lang/String;

    move-object v12, v14

    check-cast v12, [Ljava/lang/String;

    .line 2447
    .local v12, queryCmds:[Ljava/lang/String;
    sget-boolean v14, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v14, :cond_8

    if-eqz v12, :cond_8

    .line 2448
    const/4 v3, 0x0

    .line 2449
    .local v3, givenProjectId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2450
    .local v2, givenNetworkType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2452
    .local v4, givenQueryPdn:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2469
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 2470
    .local v6, msg:Landroid/os/Message;
    const/4 v14, 0x4

    new-array v7, v14, [Ljava/lang/Object;

    .line 2472
    .local v7, msgDataArray:[Ljava/lang/Object;
    move-object v10, v4

    .line 2473
    .local v10, pdnType:Ljava/lang/String;
    const-string v14, "PHONE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Query PDN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_5

    .line 2475
    :cond_1
    const/4 v11, -0x1

    .line 2477
    .local v11, project:I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 2479
    :goto_1
    const/4 v5, 0x0

    .line 2480
    .local v5, knownPdns:[Ljava/lang/String;
    sparse-switch v11, :sswitch_data_0

    .line 2484
    :goto_2
    if-eqz v5, :cond_4

    .line 2485
    const/4 v14, 0x0

    aput-object v5, v7, v14

    .line 2486
    const/4 v14, 0x0

    aget-object v10, v5, v14

    .line 2487
    const/16 v14, 0x6b

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2497
    .end local v5           #knownPdns:[Ljava/lang/String;
    .end local v11           #project:I
    :goto_3
    const/4 v9, 0x0

    .line 2498
    .local v9, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v8, 0x0

    .line 2499
    .local v8, networkType:I
    if-eqz v10, :cond_2

    .line 2501
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 2503
    :goto_4
    sparse-switch v8, :sswitch_data_1

    .line 2516
    :cond_2
    :goto_5
    if-eqz v9, :cond_6

    .line 2517
    const/4 v14, 0x1

    aput-object v9, v7, v14

    .line 2518
    const/4 v14, 0x2

    aput-object v13, v7, v14

    .line 2519
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput-object v15, v7, v14

    .line 2520
    move/from16 v0, p1

    iput v0, v6, Landroid/os/Message;->arg1:I

    .line 2521
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2522
    const/4 v14, 0x0

    aget-object v14, v7, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v14}, Lcom/android/internal/telephony/PhoneProxy;->queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object v1

    .line 2534
    .end local v2           #givenNetworkType:Ljava/lang/String;
    .end local v3           #givenProjectId:Ljava/lang/String;
    .end local v4           #givenQueryPdn:Ljava/lang/String;
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #msgDataArray:[Ljava/lang/Object;
    .end local v8           #networkType:I
    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .end local v10           #pdnType:Ljava/lang/String;
    :goto_6
    if-eqz v1, :cond_3

    .line 2535
    const/4 v14, 0x0

    invoke-static {v13, v14, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2536
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 2540
    .end local v1           #errorResult:Ljava/lang/Exception;
    .end local v12           #queryCmds:[Ljava/lang/String;
    :cond_3
    return-void

    .line 2454
    .restart local v1       #errorResult:Ljava/lang/Exception;
    .restart local v2       #givenNetworkType:Ljava/lang/String;
    .restart local v3       #givenProjectId:Ljava/lang/String;
    .restart local v4       #givenQueryPdn:Ljava/lang/String;
    .restart local v12       #queryCmds:[Ljava/lang/String;
    :pswitch_0
    array-length v14, v12

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 2455
    const/16 v14, 0xa8

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2456
    const/4 v14, 0x0

    aget-object v2, v12, v14

    .line 2457
    const/4 v14, 0x1

    aget-object v4, v12, v14

    goto/16 :goto_0

    .line 2461
    :pswitch_1
    array-length v14, v12

    const/4 v15, 0x3

    if-ne v14, v15, :cond_0

    .line 2462
    const/4 v14, 0x0

    aget-object v3, v12, v14

    .line 2463
    const/4 v14, 0x1

    aget-object v2, v12, v14

    .line 2464
    const/4 v14, 0x2

    aget-object v4, v12, v14

    goto/16 :goto_0

    .line 2481
    .restart local v5       #knownPdns:[Ljava/lang/String;
    .restart local v6       #msg:Landroid/os/Message;
    .restart local v7       #msgDataArray:[Ljava/lang/Object;
    .restart local v10       #pdnType:Ljava/lang/String;
    .restart local v11       #project:I
    :sswitch_0
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Vzw:[Ljava/lang/String;

    goto :goto_2

    .line 2482
    :sswitch_1
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Spcs:[Ljava/lang/String;

    goto :goto_2

    .line 2490
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 2494
    .end local v5           #knownPdns:[Ljava/lang/String;
    .end local v11           #project:I
    :cond_5
    const/16 v14, 0x6c

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    goto :goto_3

    .line 2505
    .restart local v8       #networkType:I
    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :sswitch_2
    new-instance v9, Lcom/android/internal/telephony/APNParam;

    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v14, 0x1

    invoke-direct {v9, v10, v14}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2506
    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_5

    .line 2508
    :sswitch_3
    new-instance v9, Lcom/android/internal/telephony/APNParam;

    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v14, 0x2

    invoke-direct {v9, v10, v14}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2509
    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_5

    .line 2511
    :sswitch_4
    new-instance v9, Lcom/android/internal/telephony/APNParam;

    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v14, 0x4

    invoke-direct {v9, v10, v14}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_5

    .line 2525
    :cond_6
    const-string v15, "PHONE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Query PDN parm incorrect "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v12, :cond_7

    array-length v14, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    new-instance v1, Ljava/lang/Exception;

    .end local v1           #errorResult:Ljava/lang/Exception;
    const-string v14, "Incorrect Format"

    invoke-direct {v1, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v1       #errorResult:Ljava/lang/Exception;
    goto :goto_6

    .line 2525
    :cond_7
    const-string v14, "null"

    goto :goto_7

    .line 2530
    .end local v2           #givenNetworkType:Ljava/lang/String;
    .end local v3           #givenProjectId:Ljava/lang/String;
    .end local v4           #givenQueryPdn:Ljava/lang/String;
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #msgDataArray:[Ljava/lang/Object;
    .end local v8           #networkType:I
    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .end local v10           #pdnType:Ljava/lang/String;
    :cond_8
    const-string v15, "PHONE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Query PDN parm incorrect "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v12, :cond_9

    array-length v14, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v16, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    new-instance v1, Ljava/lang/Exception;

    .end local v1           #errorResult:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Incorrect Parameters - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v1       #errorResult:Ljava/lang/Exception;
    goto/16 :goto_6

    .line 2530
    :cond_9
    const-string v14, "null"

    goto :goto_8

    .line 2478
    .restart local v2       #givenNetworkType:Ljava/lang/String;
    .restart local v3       #givenProjectId:Ljava/lang/String;
    .restart local v4       #givenQueryPdn:Ljava/lang/String;
    .restart local v6       #msg:Landroid/os/Message;
    .restart local v7       #msgDataArray:[Ljava/lang/Object;
    .restart local v10       #pdnType:Ljava/lang/String;
    .restart local v11       #project:I
    :catch_0
    move-exception v14

    goto/16 :goto_1

    .line 2502
    .end local v11           #project:I
    .restart local v8       #networkType:I
    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :catch_1
    move-exception v14

    goto/16 :goto_4

    .line 2452
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2480
    :sswitch_data_0
    .sparse-switch
        0x94 -> :sswitch_1
        0xa8 -> :sswitch_0
    .end sparse-switch

    .line 2503
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xd -> :sswitch_4
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private htcDmCommandForMfgCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3739
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    .line 3756
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3745
    :cond_0
    const-string v0, "C826BD75"

    goto :goto_0
.end method

.method private htcParseMfgCode(Landroid/os/AsyncResult;)Ljava/lang/Integer;
    .locals 18
    .parameter "ar"

    .prologue
    .line 3771
    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 3772
    .local v11, resultCode:Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 3773
    .local v1, deviceMfgCode:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_9

    .line 3774
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v15, :cond_e

    .line 3775
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3776
    if-eqz v1, :cond_d

    .line 3777
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneProxy;->htcDmCommandForMfgCode()Ljava/lang/String;

    move-result-object v2

    .line 3778
    .local v2, dmCmd:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_c

    .line 3779
    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 3780
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 3781
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    shr-int/lit8 v15, v15, 0x1

    new-array v3, v15, [I

    .line 3782
    .local v3, hexConverter:[I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    array-length v15, v3

    if-ge v4, v15, :cond_2

    .line 3783
    add-int/lit8 v14, v4, 0x1

    .line 3784
    .local v14, valueEndPos:I
    array-length v15, v3

    if-ge v14, v15, :cond_1

    .line 3785
    mul-int/lit8 v14, v14, 0x2

    .line 3790
    :goto_1
    const/4 v13, 0x0

    .line 3792
    .local v13, value:I
    mul-int/lit8 v15, v4, 0x2

    :try_start_0
    invoke-virtual {v1, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 3794
    :goto_2
    add-int/lit8 v15, v4, 0x1

    mul-int/lit8 v15, v15, 0x2

    if-ge v14, v15, :cond_0

    .line 3795
    shl-int/lit8 v15, v13, 0x4

    and-int/lit16 v13, v15, 0xf0

    .line 3797
    :cond_0
    aput v13, v3, v4

    .line 3782
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3788
    .end local v13           #value:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    goto :goto_1

    .line 3799
    .end local v14           #valueEndPos:I
    :cond_2
    const/4 v10, 0x0

    .line 3802
    .local v10, possibleTextLen:I
    :goto_3
    array-length v15, v3

    if-ge v10, v15, :cond_3

    const/16 v15, 0x20

    aget v16, v3, v10

    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    aget v15, v3, v10

    const/16 v16, 0x7e

    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    .line 3803
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 3805
    :cond_3
    const/4 v15, 0x1

    if-lt v10, v15, :cond_a

    .line 3806
    const/4 v9, 0x0

    .line 3808
    .local v9, possibleRemainingLen:I
    :goto_4
    if-ge v10, v9, :cond_4

    array-length v15, v3

    sub-int/2addr v15, v9

    add-int/lit8 v15, v15, -0x1

    aget v15, v3, v15

    if-nez v15, :cond_4

    .line 3809
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 3811
    :cond_4
    array-length v15, v3

    sub-int/2addr v15, v10

    sub-int v8, v15, v9

    .line 3813
    .local v8, possibleDigitsLen:I
    const/4 v15, 0x5

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 3814
    .local v6, lenText:I
    sub-int v15, v10, v6

    add-int/2addr v8, v15

    .line 3817
    const/4 v15, 0x3

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3819
    .local v5, lenDigits:I
    mul-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v6

    new-array v7, v15, [B

    .line 3820
    .local v7, mfgCode:[B
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_5

    .line 3821
    aget v15, v3, v4

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v7, v4

    .line 3820
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3823
    :cond_5
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_8

    .line 3824
    add-int v15, v6, v4

    aget v15, v3, v15

    and-int/lit16 v15, v15, 0xf0

    shr-int/lit8 v15, v15, 0x4

    int-to-byte v12, v15

    .line 3825
    .local v12, tmpCode:B
    const/16 v15, 0xa

    if-ge v12, v15, :cond_6

    .line 3826
    add-int/lit8 v15, v12, 0x30

    int-to-byte v12, v15

    .line 3831
    :goto_7
    mul-int/lit8 v15, v4, 0x2

    add-int/2addr v15, v6

    aput-byte v12, v7, v15

    .line 3833
    add-int v15, v6, v4

    aget v15, v3, v15

    and-int/lit8 v15, v15, 0xf

    int-to-byte v12, v15

    .line 3834
    const/16 v15, 0xa

    if-ge v12, v15, :cond_7

    .line 3835
    add-int/lit8 v15, v12, 0x30

    int-to-byte v12, v15

    .line 3840
    :goto_8
    mul-int/lit8 v15, v4, 0x2

    add-int/2addr v15, v6

    add-int/lit8 v15, v15, 0x1

    aput-byte v12, v7, v15

    .line 3823
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3829
    :cond_6
    add-int/lit8 v15, v12, -0xa

    add-int/lit8 v15, v15, 0x41

    int-to-byte v12, v15

    goto :goto_7

    .line 3838
    :cond_7
    add-int/lit8 v15, v12, -0xa

    add-int/lit8 v15, v15, 0x41

    int-to-byte v12, v15

    goto :goto_8

    .line 3842
    .end local v12           #tmpCode:B
    :cond_8
    const-string v15, "persist.radio.htc_mfg_code"

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3843
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 3865
    .end local v2           #dmCmd:Ljava/lang/String;
    .end local v3           #hexConverter:[I
    .end local v4           #index:I
    .end local v5           #lenDigits:I
    .end local v6           #lenText:I
    .end local v7           #mfgCode:[B
    .end local v8           #possibleDigitsLen:I
    .end local v9           #possibleRemainingLen:I
    .end local v10           #possibleTextLen:I
    :cond_9
    :goto_9
    const-string v15, "PHONE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")DeviceMfgCode = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3866
    return-object v11

    .line 3846
    .restart local v2       #dmCmd:Ljava/lang/String;
    .restart local v3       #hexConverter:[I
    .restart local v4       #index:I
    .restart local v10       #possibleTextLen:I
    :cond_a
    const/4 v15, 0x7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    .line 3850
    .end local v3           #hexConverter:[I
    .end local v4           #index:I
    .end local v10           #possibleTextLen:I
    :cond_b
    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    .line 3854
    :cond_c
    const/4 v15, 0x5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    .line 3858
    .end local v2           #dmCmd:Ljava/lang/String;
    :cond_d
    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    .line 3862
    :cond_e
    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    .line 3793
    .restart local v2       #dmCmd:Ljava/lang/String;
    .restart local v3       #hexConverter:[I
    .restart local v4       #index:I
    .restart local v13       #value:I
    .restart local v14       #valueEndPos:I
    :catch_0
    move-exception v15

    goto/16 :goto_2
.end method

.method private htcRequestMfgCode()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 3760
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;->htcDmCommandForMfgCode()Ljava/lang/String;

    move-result-object v0

    .line 3761
    .local v0, dmCmd:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3762
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6f

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 3763
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3766
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 512
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void
.end method

.method private pdnIpTypeLookup(Ljava/lang/String;)I
    .locals 2
    .parameter "givenType"

    .prologue
    .line 2300
    const/4 v0, 0x0

    .line 2301
    .local v0, type:I
    if-eqz p1, :cond_0

    .line 2302
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 2303
    :goto_0
    if-lez v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2304
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2307
    :cond_0
    return v0
.end method

.method private processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "resultType"
    .parameter "result"
    .parameter "prevResults"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2311
    move-object v0, p3

    .line 2312
    .local v0, currResults:[Ljava/lang/String;
    sget-boolean v7, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v7, :cond_9

    move-object v4, p2

    .line 2313
    check-cast v4, Lcom/android/internal/telephony/APNParam;

    .line 2314
    .local v4, resultAPNParam:Lcom/android/internal/telephony/APNParam;
    if-eqz v4, :cond_9

    .line 2318
    const/4 v3, 0x6

    .line 2319
    .local v3, itemsAdd:I
    packed-switch p1, :pswitch_data_0

    .line 2322
    :goto_0
    if-nez p3, :cond_a

    .line 2323
    add-int/lit8 v7, v3, 0x1

    new-array v0, v7, [Ljava/lang/String;

    .line 2324
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 2333
    :cond_0
    if-lt v3, v5, :cond_1

    .line 2334
    :try_start_0
    array-length v7, v0

    sub-int/2addr v7, v3

    iget-object v8, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    aput-object v8, v0, v7

    .line 2336
    :cond_1
    const/4 v7, 0x2

    if-lt v3, v7, :cond_2

    .line 2337
    array-length v7, v0

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    iget v8, v4, Lcom/android/internal/telephony/APNParam;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 2339
    :cond_2
    const/4 v7, 0x3

    if-lt v3, v7, :cond_3

    .line 2340
    array-length v7, v0

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x2

    iget v8, v4, Lcom/android/internal/telephony/APNParam;->state:I

    if-eqz v8, :cond_b

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    .line 2342
    :cond_3
    const/4 v5, 0x4

    if-lt v3, v5, :cond_4

    .line 2343
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x3

    iget-object v6, v4, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    aput-object v6, v0, v5

    .line 2345
    :cond_4
    const/4 v5, 0x5

    if-lt v3, v5, :cond_5

    .line 2346
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v6, v5, 0x4

    iget v5, v4, Lcom/android/internal/telephony/APNParam;->type:I

    if-ltz v5, :cond_c

    iget v5, v4, Lcom/android/internal/telephony/APNParam;->type:I

    sget-object v7, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_c

    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    iget v7, v4, Lcom/android/internal/telephony/APNParam;->type:I

    aget-object v5, v5, v7

    :goto_2
    aput-object v5, v0, v6

    .line 2349
    :cond_5
    const/4 v5, 0x6

    if-lt v3, v5, :cond_6

    .line 2350
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x5

    iget v6, v4, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 2352
    :cond_6
    const/4 v5, 0x7

    if-lt v3, v5, :cond_7

    .line 2353
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x6

    iget v6, v4, Lcom/android/internal/telephony/APNParam;->authType:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 2355
    :cond_7
    const/16 v5, 0x8

    if-lt v3, v5, :cond_8

    .line 2356
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x7

    iget-object v6, v4, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    aput-object v6, v0, v5

    .line 2358
    :cond_8
    const/16 v5, 0x9

    if-lt v3, v5, :cond_9

    .line 2359
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x8

    iget-object v6, v4, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    aput-object v6, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2366
    .end local v3           #itemsAdd:I
    .end local v4           #resultAPNParam:Lcom/android/internal/telephony/APNParam;
    :cond_9
    :goto_3
    return-object v0

    .line 2320
    .restart local v3       #itemsAdd:I
    .restart local v4       #resultAPNParam:Lcom/android/internal/telephony/APNParam;
    :pswitch_0
    const/16 v3, 0x9

    goto/16 :goto_0

    .line 2327
    :cond_a
    array-length v7, p3

    add-int/2addr v7, v3

    new-array v0, v7, [Ljava/lang/String;

    .line 2328
    const/4 v2, 0x0

    .local v2, index:I
    :goto_4
    array-length v7, p3

    if-ge v2, v7, :cond_0

    .line 2329
    aget-object v7, p3, v2

    aput-object v7, v0, v2

    .line 2328
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2           #index:I
    :cond_b
    move v5, v6

    .line 2340
    goto :goto_1

    .line 2346
    :cond_c
    :try_start_1
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v5, v5, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2361
    :catch_0
    move-exception v1

    .line 2362
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "PHONE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parsing PDN ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2319
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .parameter "requestType"
    .parameter "resultType"
    .parameter "prevResults"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 2375
    const/4 v0, 0x0

    .line 2376
    .local v0, currResults:Ljava/lang/Object;
    sget-boolean v4, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v4, :cond_0

    .line 2377
    packed-switch p1, :pswitch_data_0

    .line 2431
    .end local v0           #currResults:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 2380
    .restart local v0       #currResults:Ljava/lang/Object;
    :pswitch_0
    const/4 v1, 0x0

    .line 2381
    .local v1, formattedResult:Ljava/lang/String;
    packed-switch p2, :pswitch_data_1

    .line 2399
    :cond_1
    :goto_1
    move-object v0, v1

    .line 2401
    .local v0, currResults:Ljava/lang/String;
    goto :goto_0

    .line 2383
    .local v0, currResults:Ljava/lang/Object;
    :pswitch_1
    if-eqz p3, :cond_1

    array-length v4, p3

    if-le v4, v5, :cond_1

    .line 2384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, p3, v6

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "1"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v8

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v4, "0"

    goto :goto_2

    .line 2391
    :pswitch_2
    if-eqz p3, :cond_1

    array-length v4, p3

    if-le v4, v5, :cond_1

    .line 2392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, p3, v6

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "1"

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v8

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    const-string v4, "0"

    goto :goto_3

    .line 2404
    .end local v1           #formattedResult:Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .line 2405
    .local v1, formattedResult:[Ljava/lang/String;
    packed-switch p2, :pswitch_data_2

    .line 2426
    :cond_4
    :goto_4
    move-object v0, v1

    .local v0, currResults:[Ljava/lang/String;
    goto/16 :goto_0

    .line 2408
    .local v0, currResults:Ljava/lang/Object;
    :pswitch_4
    const/4 v3, -0x1

    .line 2410
    .local v3, profLen:I
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2412
    :goto_5
    if-lez v3, :cond_4

    .line 2413
    move-object v1, p3

    .line 2414
    const/4 v2, 0x2

    .line 2415
    .local v2, index:I
    :goto_6
    array-length v4, v1

    if-ge v2, v4, :cond_4

    .line 2416
    add-int/lit8 v4, v2, -0x1

    aget-object v5, p3, v2

    aput-object v5, v1, v4

    .line 2417
    add-int/2addr v2, v3

    goto :goto_6

    .line 2423
    .end local v2           #index:I
    .end local v3           #profLen:I
    :pswitch_5
    move-object v1, p3

    goto :goto_4

    .line 2411
    .restart local v3       #profLen:I
    :catch_0
    move-exception v4

    goto :goto_5

    .line 2377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2381
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2405
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;
    .locals 14
    .parameter "pdnParam"
    .parameter "msg"
    .parameter "pdnArray"

    .prologue
    .line 2224
    const/4 v8, 0x0

    .line 2226
    .local v8, queryFail:Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v9, :cond_0

    .line 2227
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTrackerClass()Ljava/lang/Object;

    move-result-object v1

    .line 2228
    .local v1, cls:Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2229
    .local v6, mmdt:Ljava/lang/Object;
    if-eqz v6, :cond_5

    .line 2230
    instance-of v9, v6, Ljava/lang/Exception;

    if-nez v9, :cond_4

    .line 2231
    const/4 v4, 0x0

    .line 2233
    .local v4, methodAPNParam_get:Ljava/lang/reflect/Method;
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object v9, v0

    const-string v10, "getAPNParams"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Lcom/android/internal/telephony/APNParam;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Landroid/os/Message;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 2236
    :goto_0
    if-eqz v4, :cond_1

    .line 2237
    const/4 v9, 0x2

    move-object/from16 v0, p2

    iput v9, v0, Landroid/os/Message;->arg2:I

    .line 2242
    const/4 v9, 0x2

    :try_start_1
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v4, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2294
    .end local v1           #cls:Ljava/lang/Object;
    .end local v4           #methodAPNParam_get:Ljava/lang/reflect/Method;
    .end local v6           #mmdt:Ljava/lang/Object;
    .end local p3
    :cond_0
    :goto_1
    return-object v8

    .line 2243
    .restart local v1       #cls:Ljava/lang/Object;
    .restart local v4       #methodAPNParam_get:Ljava/lang/reflect/Method;
    .restart local v6       #mmdt:Ljava/lang/Object;
    .restart local p3
    :catch_0
    move-exception v2

    .line 2244
    .local v2, ex:Ljava/lang/Exception;
    const-string v9, "PHONE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN2 error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    move-object v8, v2

    .line 2246
    goto :goto_1

    .line 2249
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v7, -0x1

    .line 2251
    .local v7, profileIndex:I
    :try_start_2
    iget-object v9, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 2262
    .end local p3
    :cond_2
    if-ltz v7, :cond_3

    .line 2263
    const/4 v5, 0x0

    .line 2264
    .local v5, methodName:Ljava/lang/String;
    iget v9, p1, Lcom/android/internal/telephony/APNParam;->rat:I

    packed-switch v9, :pswitch_data_0

    .line 2270
    :goto_2
    :pswitch_0
    :try_start_3
    check-cast v1, Ljava/lang/Class;

    .end local v1           #cls:Ljava/lang/Object;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/os/Message;

    aput-object v11, v9, v10

    invoke-virtual {v1, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2271
    const/4 v9, 0x1

    move-object/from16 v0, p2

    iput v9, v0, Landroid/os/Message;->arg2:I

    .line 2275
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v4, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 2276
    :catch_1
    move-exception v2

    .line 2277
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v9, "PHONE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    move-object v8, v2

    goto :goto_1

    .line 2252
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #methodName:Ljava/lang/String;
    .restart local v1       #cls:Ljava/lang/Object;
    .restart local p3
    :catch_2
    move-exception v2

    .line 2253
    .restart local v2       #ex:Ljava/lang/Exception;
    if-eqz p3, :cond_2

    .line 2254
    check-cast p3, [Ljava/lang/String;

    .end local p3
    move-object/from16 v3, p3

    check-cast v3, [Ljava/lang/String;

    .line 2255
    .local v3, knownPdns:[Ljava/lang/String;
    array-length v9, v3

    add-int/lit8 v7, v9, -0x1

    .line 2256
    :goto_3
    if-ltz v7, :cond_2

    aget-object v9, v3, v7

    iget-object v10, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2257
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 2265
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #knownPdns:[Ljava/lang/String;
    .restart local v5       #methodName:Ljava/lang/String;
    :pswitch_1
    const-string v5, "get3GPPAPNParams"

    goto :goto_2

    .line 2266
    :pswitch_2
    const-string v5, "getEHRPDAPNParams"

    goto :goto_2

    .line 2267
    :pswitch_3
    const-string v5, "getLTEAPNParams"

    goto :goto_2

    .line 2282
    .end local v5           #methodName:Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/Exception;

    .end local v8           #queryFail:Ljava/lang/Exception;
    const-string v9, "Only supported PDN1 format"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v8       #queryFail:Ljava/lang/Exception;
    goto/16 :goto_1

    .end local v4           #methodAPNParam_get:Ljava/lang/reflect/Method;
    .end local v7           #profileIndex:I
    .restart local p3
    :cond_4
    move-object v8, v6

    .line 2287
    check-cast v8, Ljava/lang/Exception;

    goto/16 :goto_1

    .line 2290
    :cond_5
    if-nez v8, :cond_0

    .line 2291
    new-instance v8, Ljava/lang/Exception;

    .end local v8           #queryFail:Ljava/lang/Exception;
    const-string v9, "MMDct not created"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v8       #queryFail:Ljava/lang/Exception;
    goto/16 :goto_1

    .line 2234
    .restart local v4       #methodAPNParam_get:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .line 2264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private requestPhoneClassChangeDone(ZILandroid/os/Message;)Z
    .locals 8
    .parameter "phoneTypeChanged"
    .parameter "phoneType"
    .parameter "response"

    .prologue
    .line 1908
    const/4 v2, 0x1

    .line 1909
    .local v2, requestSend:Z
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 1911
    :try_start_0
    const-string v3, "com.android.internal.telephony.CommandsInterface"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1912
    .local v0, cls:Ljava/lang/Class;
    const-string v3, "requestPhoneClassChangeDone"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/os/Message;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    .end local v0           #cls:Ljava/lang/Class;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 1917
    const/4 v2, 0x0

    .line 1918
    const-string v3, "PHONE"

    const-string v4, "RIL interface PhoneClassChange with phoneType not existed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_0
    if-eqz v2, :cond_1

    .line 1923
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1929
    :cond_1
    :goto_1
    return v2

    .line 1913
    :catch_0
    move-exception v1

    .line 1914
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 1924
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1925
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1926
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Ljava/lang/Exception;
    .locals 13
    .parameter "pdnParam"
    .parameter "msg"

    .prologue
    .line 2616
    const/4 v7, 0x0

    .line 2618
    .local v7, setFail:Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v8, :cond_0

    .line 2619
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTrackerClass()Ljava/lang/Object;

    move-result-object v1

    .line 2620
    .local v1, cls:Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2621
    .local v5, mmdt:Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 2622
    instance-of v8, v5, Ljava/lang/Exception;

    if-nez v8, :cond_3

    .line 2623
    const/4 v3, 0x0

    .line 2625
    .local v3, methodAPNParam_set:Ljava/lang/reflect/Method;
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object v8, v0

    const-string v9, "setAPNParams"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lcom/android/internal/telephony/APNParam;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/os/Message;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 2628
    :goto_0
    if-eqz v3, :cond_1

    .line 2629
    const/4 v8, 0x2

    iput v8, p2, Landroid/os/Message;->arg2:I

    .line 2634
    const/4 v8, 0x2

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2684
    .end local v1           #cls:Ljava/lang/Object;
    .end local v3           #methodAPNParam_set:Ljava/lang/reflect/Method;
    .end local v5           #mmdt:Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v7

    .line 2635
    .restart local v1       #cls:Ljava/lang/Object;
    .restart local v3       #methodAPNParam_set:Ljava/lang/reflect/Method;
    .restart local v5       #mmdt:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 2636
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set PDN2 error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    move-object v7, v2

    .line 2638
    goto :goto_1

    .line 2641
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v6, -0x1

    .line 2643
    .local v6, profileIndex:I
    :try_start_2
    iget-object v8, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    .line 2646
    :goto_2
    const/4 v8, 0x1

    if-lt v6, v8, :cond_2

    .line 2647
    add-int/lit8 v6, v6, -0x1

    .line 2648
    const/4 v4, 0x0

    .line 2649
    .local v4, methodName:Ljava/lang/String;
    iget v8, p1, Lcom/android/internal/telephony/APNParam;->rat:I

    packed-switch v8, :pswitch_data_0

    .line 2656
    :goto_3
    :pswitch_0
    :try_start_3
    check-cast v1, Ljava/lang/Class;

    .end local v1           #cls:Ljava/lang/Object;
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-class v10, Landroid/os/Message;

    aput-object v10, v8, v9

    invoke-virtual {v1, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2659
    const/4 v8, 0x1

    iput v8, p2, Landroid/os/Message;->arg2:I

    .line 2664
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p1, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->state:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    aput-object p2, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 2666
    :catch_1
    move-exception v2

    .line 2667
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set PDN error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    move-object v7, v2

    goto/16 :goto_1

    .line 2650
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #cls:Ljava/lang/Object;
    :pswitch_1
    const-string v4, "set3GPPAPNParams"

    goto/16 :goto_3

    .line 2651
    :pswitch_2
    const-string v4, "setEHRPDAPNParams"

    goto/16 :goto_3

    .line 2652
    :pswitch_3
    const-string v4, "setLTEAPNParams"

    goto/16 :goto_3

    .line 2672
    .end local v4           #methodName:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/Exception;

    .end local v7           #setFail:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only supported PDN1 format : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v7       #setFail:Ljava/lang/Exception;
    goto/16 :goto_1

    .end local v3           #methodAPNParam_set:Ljava/lang/reflect/Method;
    .end local v6           #profileIndex:I
    :cond_3
    move-object v7, v5

    .line 2677
    check-cast v7, Ljava/lang/Exception;

    goto/16 :goto_1

    .line 2680
    :cond_4
    if-nez v7, :cond_0

    .line 2681
    new-instance v7, Ljava/lang/Exception;

    .end local v7           #setFail:Ljava/lang/Exception;
    const-string v8, "MMDct not created"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v7       #setFail:Ljava/lang/Exception;
    goto/16 :goto_1

    .line 2644
    .restart local v3       #methodAPNParam_set:Ljava/lang/reflect/Method;
    .restart local v6       #profileIndex:I
    :catch_2
    move-exception v8

    goto/16 :goto_2

    .line 2626
    .end local v6           #profileIndex:I
    :catch_3
    move-exception v8

    goto/16 :goto_0

    .line 2649
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V
    .locals 4
    .parameter "requestType"
    .parameter "resultType"
    .parameter "ar"

    .prologue
    .line 2798
    iget-object v0, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 2799
    .local v0, request:Landroid/os/Message;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set PDN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    if-eqz v0, :cond_0

    .line 2801
    const/4 v1, 0x0

    iget-object v2, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2802
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2804
    :cond_0
    return-void
.end method

.method private setPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 10
    .parameter "requestType"
    .parameter "requestObj"
    .parameter "remainingHandling"

    .prologue
    .line 2693
    const/4 v0, 0x0

    .line 2694
    .local v0, errorResult:Ljava/lang/Exception;
    const/4 v7, 0x0

    aget-object v7, p2, v7

    check-cast v7, [Ljava/lang/String;

    move-object v5, v7

    check-cast v5, [Ljava/lang/String;

    .line 2695
    .local v5, queryCmds:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v6, p2, v7

    check-cast v6, Landroid/os/Message;

    .line 2696
    .local v6, request:Landroid/os/Message;
    sget-boolean v7, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    .line 2697
    new-instance v4, Lcom/android/internal/telephony/APNParam;

    invoke-direct {v4}, Lcom/android/internal/telephony/APNParam;-><init>()V

    .line 2698
    .local v4, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/16 v7, 0x6e

    invoke-virtual {p3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2699
    .local v2, msg:Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 2776
    const-string v8, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set PDN parm incorrect "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_5

    array-length v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    new-instance v0, Ljava/lang/Exception;

    .end local v0           #errorResult:Ljava/lang/Exception;
    const-string v7, "Incorrect Parameters"

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2780
    .restart local v0       #errorResult:Ljava/lang/Exception;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 2781
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 2782
    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2783
    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/PhoneProxy;->setPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Ljava/lang/Exception;

    move-result-object v0

    .line 2791
    .end local v2           #msg:Landroid/os/Message;
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    .line 2792
    const/4 v7, 0x0

    invoke-static {v6, v7, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2793
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2795
    :cond_2
    return-void

    .line 2702
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :pswitch_0
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set PDN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    const/4 v3, 0x0

    .line 2705
    .local v3, networkType:I
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result v3

    .line 2707
    :goto_3
    sparse-switch v3, :sswitch_data_0

    .line 2716
    const/4 v7, 0x4

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 2720
    :goto_4
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2724
    :goto_5
    if-nez v0, :cond_0

    .line 2725
    const/4 v7, 0x2

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2727
    const/4 v7, 0x3

    :try_start_2
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_6
    iput v7, v4, Lcom/android/internal/telephony/APNParam;->state:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 2729
    :goto_7
    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->type:I

    .line 2731
    const/4 v7, 0x5

    :try_start_3
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->timer:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 2733
    :goto_8
    const/4 v7, 0x6

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 2709
    :sswitch_0
    const/4 v7, 0x1

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_4

    .line 2712
    :sswitch_1
    const/4 v7, 0x2

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_4

    .line 2721
    :catch_0
    move-exception v1

    .line 2722
    .local v1, ex:Ljava/lang/Exception;
    move-object v0, v1

    goto :goto_5

    .line 2727
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_3
    const/4 v7, 0x0

    goto :goto_6

    .line 2739
    .end local v3           #networkType:I
    :pswitch_1
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set PDN2 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    const/4 v3, 0x0

    .line 2742
    .restart local v3       #networkType:I
    const/4 v7, 0x1

    :try_start_4
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v3

    .line 2744
    :goto_9
    sparse-switch v3, :sswitch_data_1

    .line 2753
    const/4 v7, 0x4

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 2756
    :goto_a
    const/4 v7, 0x2

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2758
    const/4 v7, 0x3

    :try_start_5
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->id:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2761
    :goto_b
    const/4 v7, 0x4

    :try_start_6
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_c
    iput v7, v4, Lcom/android/internal/telephony/APNParam;->state:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2763
    :goto_d
    const/4 v7, 0x5

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 2764
    const/4 v7, 0x6

    aget-object v7, v5, v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->type:I

    .line 2766
    const/4 v7, 0x7

    :try_start_7
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->timer:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 2769
    :goto_e
    const/16 v7, 0x8

    :try_start_8
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->authType:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 2771
    :goto_f
    const/16 v7, 0x9

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    .line 2772
    const/16 v7, 0xa

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    goto/16 :goto_1

    .line 2746
    :sswitch_2
    const/4 v7, 0x1

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_a

    .line 2749
    :sswitch_3
    const/4 v7, 0x2

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_a

    .line 2761
    :cond_4
    const/4 v7, 0x0

    goto :goto_c

    .line 2776
    .end local v3           #networkType:I
    :cond_5
    const-string v7, "null"

    goto/16 :goto_0

    .line 2787
    .end local v2           #msg:Landroid/os/Message;
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    :cond_6
    const-string v8, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set PDN parm incorrect "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_7

    array-length v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_10
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v9, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    new-instance v0, Ljava/lang/Exception;

    .end local v0           #errorResult:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect Parameters - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v0       #errorResult:Ljava/lang/Exception;
    goto/16 :goto_2

    .line 2787
    :cond_7
    const-string v7, "null"

    goto :goto_10

    .line 2770
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v3       #networkType:I
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :catch_1
    move-exception v7

    goto :goto_f

    .line 2767
    :catch_2
    move-exception v7

    goto :goto_e

    .line 2762
    :catch_3
    move-exception v7

    goto/16 :goto_d

    .line 2759
    :catch_4
    move-exception v7

    goto/16 :goto_b

    .line 2743
    :catch_5
    move-exception v7

    goto/16 :goto_9

    .line 2732
    :catch_6
    move-exception v7

    goto/16 :goto_8

    .line 2728
    :catch_7
    move-exception v7

    goto/16 :goto_7

    .line 2706
    :catch_8
    move-exception v7

    goto/16 :goto_3

    .line 2699
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2707
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch

    .line 2744
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private declared-synchronized setPowerStateToDesired()V
    .locals 4

    .prologue
    .line 3001
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerStateToDesired : mDesiredPowerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getRadioState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 3005
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 3007
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3008
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3016
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3010
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3011
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3013
    .local v0, powerOffMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3001
    .end local v0           #powerOffMsg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public HtcisDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 3713
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->HtcisDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 756
    return-void
.end method

.method public acceptCallExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3344
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 1221
    return-void
.end method

.method public activateCellBroadcastSmsExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "activate"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3613
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canConferenceExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3353
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public canTransferExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3360
    const/4 v0, 0x0

    return v0
.end method

.method public changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCBFacility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1422
    return-void
.end method

.method public checkFDNCapability()Z
    .locals 1

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->checkFDNCapability()Z

    move-result v0

    return v0
.end method

.method public checkTestIcc()Z
    .locals 1

    .prologue
    .line 1426
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->checkTestIcc()Z

    move-result v0

    .line 1433
    :goto_0
    return v0

    .line 1430
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->checkTestIcc()Z

    move-result v0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 792
    return-void
.end method

.method public clearDisconnectedExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3367
    return-void
.end method

.method public clearVoiceMessageWaiting()V
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearVoiceMessageWaiting()V

    .line 1441
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 772
    return-void
.end method

.method public conferenceExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3357
    return-void
.end method

.method public confirmFirstDataRoaming()V
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->confirmFirstDataRoaming()V

    .line 1145
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialExt(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3382
    const/4 v0, 0x0

    return-object v0
.end method

.method public dialExt(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3386
    const/4 v0, 0x0

    return-object v0
.end method

.method public dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnTypeExt(Ljava/lang/String;I)I
    .locals 1
    .parameter "type"
    .parameter "phoneType"

    .prologue
    .line 3563
    const/4 v0, 0x0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 548
    return-void
.end method

.method public disableDnsCheckExt(ZI)V
    .locals 0
    .parameter "b"
    .parameter "phoneType"

    .prologue
    .line 3212
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1062
    return-void
.end method

.method public disableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3532
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableApnTypeExt(Ljava/lang/String;I)I
    .locals 1
    .parameter "type"
    .parameter "phoneType"

    .prologue
    .line 3559
    const/4 v0, 0x0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 776
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1058
    return-void
.end method

.method public enableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3529
    return-void
.end method

.method public enableMpdp(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableMpdp(Z)V

    .line 2903
    return-void
.end method

.method public enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 1290
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 788
    return-void
.end method

.method public explicitCallTransferExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3364
    return-void
.end method

.method public genericSimIO(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "response"

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->genericSimIO(Ljava/lang/String;Landroid/os/Message;)V

    .line 2056
    return-void
.end method

.method public getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "type"
    .parameter "ipv"

    .prologue
    .line 3174
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 3877
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypesExt(I)[Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3227
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveCid()I
    .locals 1

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveCid()I

    move-result v0

    return v0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2909
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActivePDPList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivePhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getActivePhoneType()I
    .locals 1

    .prologue
    .line 3692
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 979
    return-void
.end method

.method public getAvailableNetworksAppendAcT(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworksAppendAcT(Landroid/os/Message;)V

    .line 1988
    return-void
.end method

.method public getAvailableNetworksExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3472
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCallExt(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3374
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBandCapability()I
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBandCapability()I

    move-result v0

    return v0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCFUNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallBarringOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCBReason"
    .parameter "onComplete"

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(ILandroid/os/Message;)V

    .line 1446
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingIndicatorExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3414
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 933
    return-void
.end method

.method public getCallForwardingOptionExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3448
    return-void
.end method

.method public getCallType()Lcom/android/internal/telephony/Phone$CallType;
    .locals 1

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallType()Lcom/android/internal/telephony/Phone$CallType;

    move-result-object v0

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 971
    return-void
.end method

.method public getCallWaitingExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3466
    return-void
.end method

.method public getCdmaEriFileVersion()I
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriFileVersion()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 1225
    return-void
.end method

.method public getCellBroadcastSmsConfigExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3616
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationExt(I)Landroid/telephony/CellLocation;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3199
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityStateExt(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3207
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCFUNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataCFUNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDataCallForwardingOption(ILandroid/os/Message;)V

    .line 940
    return-void
.end method

.method public getDataCallForwardingStatus()Z
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataCallForwardingStatus()Z

    move-result v0

    return v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 1050
    return-void
.end method

.method public getDataCallListExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3513
    return-void
.end method

.method public getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "type"
    .parameter "ipv"

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "type"
    .parameter "ipv"

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateExt(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3203
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConnectionStateTime(Ljava/lang/String;)J
    .locals 2
    .parameter "apnType"

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionStateTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3548
    const/4 v0, 0x0

    return v0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getDetailIccStatus()[I
    .locals 1

    .prologue
    .line 1450
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->getDetailIccStatus()[I

    move-result-object v0

    .line 1457
    :goto_0
    return-object v0

    .line 1454
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1457
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDetailIccStatus()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getDetailIccStatusExt(I)[I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3579
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvnExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3583
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmergencyCallPowerState()Z
    .locals 1

    .prologue
    .line 3134
    const/4 v0, 0x1

    return v0
.end method

.method public getEmergencyPreference()I
    .locals 1

    .prologue
    .line 3132
    const/4 v0, 0x0

    return v0
.end method

.method public getEmergencyState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 780
    return-void
.end method

.method public getEntitleErrorCause()I
    .locals 1

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEntitleErrorCause()I

    move-result v0

    return v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFdnEnabledStatus()Z
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getFdnEnabledStatus()Z

    move-result v0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCallExt(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3370
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 3170
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 4

    .prologue
    .line 3027
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getGlobalDataRoamingOption()I

    move-result v0

    .line 3028
    .local v0, result:I
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGlobalDataRoamingOption:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    return v0
.end method

.method public getGprsState()I
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGprsState()I

    move-result v0

    return v0
.end method

.method public getGprsStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3733
    const/4 v0, 0x0

    return v0
.end method

.method public getHtcSimTypes(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getHtcSimTypes(Landroid/os/Message;)V

    .line 1012
    return-void
.end method

.method public getICCRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 746
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 749
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccCardExt(I)Lcom/android/internal/telephony/IccCard;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3340
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManagerExt(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3603
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 732
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->getRecordsLoaded()Z

    move-result v0

    .line 739
    :goto_0
    return v0

    .line 736
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method public getIccRecordsLoadedExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3336
    const/4 v0, 0x0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3591
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManagerExt(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3599
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1184
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    .line 1191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get imei:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 1192
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    .line 1195
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getImeiSv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2007
    const-string v0, "get getImeiSv"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 2008
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2017
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mImeiSv:Ljava/lang/String;

    .line 2019
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInCallPhoneType()I
    .locals 1

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 3162
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 3166
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3422
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3418
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1154
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1157
    :cond_0
    const-string v1, "00000000000000"

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1163
    const-string v1, "gsm.cdma.meid.workaround"

    const-string v2, "empty"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, strWorkaround:Ljava/lang/String;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMeid, strWorkaround="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1175
    .end local v0           #strWorkaround:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1169
    .restart local v0       #strWorkaround:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    goto :goto_0

    .line 1172
    .end local v0           #strWorkaround:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    goto :goto_0

    .line 1175
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicatorEnhanced()I
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicatorEnhanced()I

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicatorExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3410
    const/4 v0, 0x0

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMuteExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3503
    const/4 v0, 0x0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 1022
    return-void
.end method

.method public getNeighboringCidsExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3494
    return-void
.end method

.method public getOperatorInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getOperatorInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 961
    return-void
.end method

.method public getOutgoingCallerIdDisplayExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3459
    return-void
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPRIVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPRIVersions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPRIVersions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdnSettings(ILandroid/os/Message;)V
    .locals 7
    .parameter "profileSlot"
    .parameter "response"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2123
    new-array v0, v5, [Ljava/lang/String;

    .line 2124
    .local v0, request:[Ljava/lang/String;
    if-ltz p1, :cond_0

    if-gt p1, v6, :cond_0

    .line 2125
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 2126
    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 2140
    :goto_0
    new-array v1, v5, [Ljava/lang/Object;

    .line 2141
    .local v1, requestArray:[Ljava/lang/Object;
    aput-object v0, v1, v3

    .line 2142
    aput-object p2, v1, v4

    .line 2143
    const/16 v2, 0x6a

    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    .line 2144
    return-void

    .line 2128
    .end local v1           #requestArray:[Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x5

    if-gt v2, p1, :cond_1

    const/16 v2, 0x8

    if-gt p1, v2, :cond_1

    .line 2129
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 2130
    add-int/lit8 v2, p1, -0x5

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    .line 2132
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xc8

    if-gt v2, p1, :cond_2

    const/16 v2, 0xcc

    if-gt p1, v2, :cond_2

    .line 2134
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 2135
    add-int/lit16 v2, p1, -0xc8

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    .line 2138
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "profile"
    .parameter "response"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2217
    new-array v0, v3, [Ljava/lang/Object;

    .line 2218
    .local v0, requestArray:[Ljava/lang/Object;
    aput-object p1, v0, v2

    .line 2219
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 2220
    const/16 v1, 0x6a

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    .line 2221
    return-void
.end method

.method public getPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMO()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMmiCodesExt(I)Ljava/util/List;
    .locals 1
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3299
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneInstance(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3670
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNameExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3223
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfoExt(I)Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3595
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 995
    return-void
.end method

.method public getPreferredNetworkTypeExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3485
    return-void
.end method

.method public getPreferredOnly()I
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPreferredOnly()I

    move-result v0

    return v0
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getRegistrationState(Landroid/os/Message;)V

    .line 1472
    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCallExt(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3378
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSIMOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3045
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSM()Lcom/android/internal/telephony/SimSlotManager;
    .locals 1

    .prologue
    .line 3678
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateExt(I)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrengthExt(I)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3241
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimTypes(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSimTypes(Landroid/os/Message;)V

    .line 1007
    return-void
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1237
    return-void
.end method

.method public getSmscAddressExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "result"
    .parameter "phoneType"

    .prologue
    .line 3488
    return-void
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method public getStateExt(I)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2850
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3587
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 1
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getSubsidyLock(ILandroid/os/Message;)V

    .line 1552
    return-void
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUnitTestModeExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3538
    const/4 v0, 0x0

    return v0
.end method

.method public getVTSimulatedMode()Z
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVTSimulatedMode()Z

    move-result v0

    return v0
.end method

.method public getVoiceCallForwardingStatus()Z
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceCallForwardingStatus()Z

    move-result v0

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3437
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3429
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3433
    const/4 v0, 0x0

    return v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleInCallMmiCommandsExt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "command"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3394
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 222
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 504
    const-string v18, "PHONE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error! This handler was not registered for this message type. Message: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 509
    return-void

    .line 225
    :sswitch_0
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x61

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x49

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    .line 232
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Switching phone from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Phone to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v20, "GSM"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v18, "CDMAPhone"

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 234
    const/4 v15, 0x0

    .line 235
    .local v15, oldPowerState:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 237
    const/4 v15, 0x1

    .line 238
    const-string v18, "Setting Radio Power to Off"

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 244
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/IccCardProxy;->dispose()V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    .line 251
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "GSM"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 252
    const-string v18, "Make a new CDMAPhone and destroy the old GSMPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 255
    const/16 v16, 0x0

    .line 256
    .local v16, pendingMO_dialString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    .line 257
    .local v10, ct:Lcom/android/internal/telephony/CallTracker;
    if-eqz v10, :cond_3

    .line 258
    invoke-virtual {v10}, Lcom/android/internal/telephony/CallTracker;->getCurrentPendingMO()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 259
    .local v9, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v9, :cond_3

    .line 260
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v16

    .line 264
    .end local v9           #conn:Lcom/android/internal/telephony/Connection;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 273
    .local v14, oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 274
    check-cast v14, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v14           #oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->removeReferences()V

    .line 275
    const/4 v14, 0x0

    .line 277
    .restart local v14       #oldPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v16, :cond_4

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    .line 279
    if-eqz v10, :cond_a

    .line 280
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/CallTracker;->assignPendingMO(Ljava/lang/String;)V

    .line 339
    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 340
    new-instance v19, Lcom/android/internal/telephony/IccCardProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    .line 346
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/HtcTelephonyInternal;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 349
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/HtcTelephony;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 355
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 356
    const-string v18, "Resetting Radio"

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v15, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 361
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->setmIccSmsInterfaceManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->setmIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 369
    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v12, intent:Landroid/content/Intent;
    const/high16 v18, 0x2000

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 371
    const-string v18, "phoneName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    if-gez v18, :cond_f

    .line 378
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v18

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->requestPhoneClassChangeDone(ZILandroid/os/Message;)Z

    goto/16 :goto_0

    .line 232
    .end local v10           #ct:Lcom/android/internal/telephony/CallTracker;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v14           #oldPhone:Lcom/android/internal/telephony/Phone;
    .end local v15           #oldPowerState:Z
    .end local v16           #pendingMO_dialString:Ljava/lang/String;
    :cond_9
    const-string v18, "GSMPhone"

    goto/16 :goto_1

    .line 283
    .restart local v10       #ct:Lcom/android/internal/telephony/CallTracker;
    .restart local v14       #oldPhone:Lcom/android/internal/telephony/Phone;
    .restart local v15       #oldPowerState:Z
    .restart local v16       #pendingMO_dialString:Ljava/lang/String;
    :cond_a
    const-string v18, "Unable to transfer pending dialing call to CDMAPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 288
    .end local v10           #ct:Lcom/android/internal/telephony/CallTracker;
    .end local v14           #oldPhone:Lcom/android/internal/telephony/Phone;
    .end local v16           #pendingMO_dialString:Ljava/lang/String;
    :cond_b
    const-string v18, "Make a new GSMPhone and destroy the old CDMAPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 291
    const/16 v16, 0x0

    .line 292
    .restart local v16       #pendingMO_dialString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    .line 293
    .restart local v10       #ct:Lcom/android/internal/telephony/CallTracker;
    if-eqz v10, :cond_c

    .line 294
    invoke-virtual {v10}, Lcom/android/internal/telephony/CallTracker;->getCurrentPendingMO()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 295
    .restart local v9       #conn:Lcom/android/internal/telephony/Connection;
    if-eqz v9, :cond_c

    .line 296
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v16

    .line 300
    .end local v9           #conn:Lcom/android/internal/telephony/Connection;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dispose()V

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 310
    .restart local v14       #oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 311
    check-cast v14, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v14           #oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeReferences()V

    .line 312
    const/4 v14, 0x0

    .line 314
    .restart local v14       #oldPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v16, :cond_d

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    .line 316
    if-eqz v10, :cond_e

    .line 317
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/CallTracker;->assignPendingMO(Ljava/lang/String;)V

    .line 334
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->turnOnRadioDueToECC()V

    goto/16 :goto_2

    .line 320
    :cond_e
    const-string v18, "Unable to transfer pending dialing call to GSMPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 382
    .restart local v12       #intent:Landroid/content/Intent;
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_10

    sget-boolean v18, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-eqz v18, :cond_0

    .line 384
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->requestPhoneClassChangeDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 390
    .end local v10           #ct:Lcom/android/internal/telephony/CallTracker;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v14           #oldPhone:Lcom/android/internal/telephony/Phone;
    .end local v15           #oldPowerState:Z
    .end local v16           #pendingMO_dialString:Ljava/lang/String;
    :sswitch_1
    const-string v18, "PHONE"

    const-string v19, "Message EVENT_REQUESET_PHONE_CLASS_CHANGE_DONE "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 394
    :sswitch_2
    const-string v18, "PHONE"

    const-string v19, "Radio available"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x67

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x69

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 402
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 404
    .local v7, ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 407
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v17, v18

    check-cast v17, [Ljava/lang/String;

    .line 408
    .local v17, respId:[Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v18, v17, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    .line 409
    const/16 v18, 0x3

    aget-object v18, v17, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    .line 410
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mEsn "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mMeid "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 412
    const-string v18, "ro.cdma.meid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 417
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v17           #respId:[Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 419
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 420
    const-string v18, "PHONE"

    const-string v19, "Get IMEI fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 423
    :cond_11
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    .line 424
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mImei "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 426
    const-string v18, "ro.gsm.imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 431
    .end local v7           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 433
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    .line 434
    const-string v18, "PHONE"

    const-string v19, "Get EVENT_GET_IMEISV_DONE fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    :cond_12
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mImeiSv:Ljava/lang/String;

    .line 438
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mImeiSv "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mImeiSv:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 444
    .end local v7           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    const-string v18, "PHONE"

    const-string v19, "Message EVENT_ENTER_LPM"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v13, Landroid/content/Intent;

    const-string v18, "com.android.internal.telephony.enter_lpm"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v13, intent_lpm:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 453
    .end local v13           #intent_lpm:Landroid/content/Intent;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 454
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_13

    .line 455
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v8, v18

    check-cast v8, [Ljava/lang/String;

    .line 456
    .local v8, cdmaSubscription:[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v0, v8

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 457
    const/16 v18, 0x0

    aget-object v5, v8, v18

    .line 458
    .local v5, Mdn:Ljava/lang/String;
    const/16 v18, 0x3

    aget-object v6, v8, v18

    .line 459
    .local v6, Min:Ljava/lang/String;
    const-string v18, "ril.cdmaphoneapp.mdn"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v18, "ril.cdmaphoneapp.min"

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v18, "PHONE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CDMA mdn "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "min "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v6}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 464
    .end local v5           #Mdn:Ljava/lang/String;
    .end local v6           #Min:Ljava/lang/String;
    .end local v8           #cdmaSubscription:[Ljava/lang/String;
    :cond_13
    const-string v18, "PHONE"

    const-string v19, "Error for poll state "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 470
    .end local v7           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/Object;

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->getPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 473
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/PhoneProxy;->getPdnSettings2Cont_handling(IILandroid/os/AsyncResult;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 476
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->getPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 479
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/Object;

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 482
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 488
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    .line 490
    .local v11, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mDeviceMfgCodeRequested:Ljava/lang/Integer;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    sget-object v18, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_0

    sget-object v18, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_0

    sget-object v18, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_0

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneProxy;->htcRequestMfgCode()Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mDeviceMfgCodeRequested:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 499
    .end local v11           #currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->htcParseMfgCode(Landroid/os/AsyncResult;)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mDeviceMfgCodeRequested:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 222
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_6
        0x4 -> :sswitch_d
        0x64 -> :sswitch_1
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_2
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6d -> :sswitch_b
        0x6e -> :sswitch_c
        0x6f -> :sswitch_e
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialString"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handlePinMmiExt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "dialString"
    .parameter "phoneType"

    .prologue
    .line 3390
    const/4 v0, 0x0

    return v0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcCdmaExitRadioPowerSaveMode()V

    .line 1853
    return-void
.end method

.method public htcGetCdmaEriCallGuard()I
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v0

    return v0
.end method

.method public htcGetCdmaEriDistinctiveRinger()I
    .locals 1

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriDistinctiveRinger()I

    move-result v0

    return v0
.end method

.method public htcModemLinkOn()Z
    .locals 1

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcModemLinkOn()Z

    move-result v0

    return v0
.end method

.method public htcNotifyDataConnectionDisconnect(Z)Z
    .locals 1
    .parameter "dis"

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->htcNotifyDataConnectionDisconnect(Z)Z

    move-result v0

    return v0
.end method

.method public initSpecificDialNumbers()V
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->initSpecificDialNumbers()V

    .line 1548
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1042
    return-void
.end method

.method public invokeOemRilRequestRawExt([BLandroid/os/Message;I)V
    .locals 0
    .parameter "data"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3507
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1046
    return-void
.end method

.method public invokeOemRilRequestStringsExt([Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "strings"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3510
    return-void
.end method

.method public isActEnabled()Z
    .locals 1

    .prologue
    .line 3100
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isActEnabled()Z

    move-result v0

    return v0
.end method

.method public isConcurrentVoiceAndData()Z
    .locals 1

    .prologue
    .line 3567
    const/4 v0, 0x0

    return v0
.end method

.method public isConcurrentVoiceAndDataExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3571
    const/4 v0, 0x0

    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabledExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3555
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3575
    const/4 v0, 0x0

    return v0
.end method

.method public isDefaultTypeStillActive()Z
    .locals 1

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDefaultTypeStillActive()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabledExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3215
    const/4 v0, 0x0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isNetworkSelectionEnabled()Z
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isNetworkSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialStr"

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyATDMmiComplete(Z)V
    .locals 0
    .parameter "ok"

    .prologue
    .line 3709
    return-void
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    .line 1233
    return-void
.end method

.method public notifyDataActivityExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3622
    return-void
.end method

.method public notifyUnblockPin2Done()V
    .locals 0

    .prologue
    .line 3707
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1078
    return-void
.end method

.method public queryAvailableBandModeExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3545
    return-void
.end method

.method public queryCAVE(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCAVE(Landroid/os/Message;)V

    .line 2968
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1096
    return-void
.end method

.method public queryMD5(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    .line 2989
    return-void
.end method

.method public querySSDUpdate(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->querySSDUpdate(Landroid/os/Message;)V

    .line 2974
    return-void
.end method

.method public querySubsidyLock(ILandroid/os/Message;)V
    .locals 1
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->querySubsidyLock(ILandroid/os/Message;)V

    .line 1561
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1217
    return-void
.end method

.method public queryTTYModeExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3610
    return-void
.end method

.method public queryUIMAUTH(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryUIMAUTH(Landroid/os/Message;)V

    .line 2992
    return-void
.end method

.method public queryVPM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryVPM(Landroid/os/Message;)V

    .line 2983
    return-void
.end method

.method public reEnableDataRoamingGuardDialog()V
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->reEnableDataRoamingGuardDialog()V

    .line 1869
    return-void
.end method

.method public registerEcallAutoRetry(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3700
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1350
    return-void
.end method

.method public registerFoT53ClirlInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3655
    return-void
.end method

.method public registerForATDMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1505
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1302
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 692
    return-void
.end method

.method public registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2869
    return-void
.end method

.method public registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1873
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 620
    return-void
.end method

.method public registerForDisconnectExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3281
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1318
    return-void
.end method

.method public registerForDisplayInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3631
    return-void
.end method

.method public registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1821
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 708
    return-void
.end method

.method public registerForFailEntitlementCheck(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForFailEntitlementCheck(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1979
    return-void
.end method

.method public registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2914
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 684
    return-void
.end method

.method public registerForInCallVoicePrivacyOffExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3330
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 676
    return-void
.end method

.method public registerForInCallVoicePrivacyOnExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3324
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 612
    return-void
.end method

.method public registerForIncomingRingExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3263
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1342
    return-void
.end method

.method public registerForLineControlInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3649
    return-void
.end method

.method public registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1666
    return-void
.end method

.method public registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1629
    return-void
.end method

.method public registerForMMLocationUpdateInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMMLocationUpdateInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1481
    return-void
.end method

.method public registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3036
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 636
    return-void
.end method

.method public registerForMmiCompleteExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3293
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 628
    return-void
.end method

.method public registerForMmiInitiateExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3287
    return-void
.end method

.method public registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1749
    return-void
.end method

.method public registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1620
    return-void
.end method

.method public registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1829
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 604
    return-void
.end method

.method public registerForNewRingingConnectionExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3257
    return-void
.end method

.method public registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2093
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1326
    return-void
.end method

.method public registerForNumberInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3637
    return-void
.end method

.method public registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1969
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 596
    return-void
.end method

.method public registerForPreciseCallStateChangedExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3251
    return-void
.end method

.method public registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3061
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3062
    return-void
.end method

.method public registerForRadioOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1489
    return-void
.end method

.method public registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1900
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1334
    return-void
.end method

.method public registerForRedirectedNumberInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3643
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 724
    return-void
.end method

.method public registerForResendIncallMuteExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3275
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 716
    return-void
.end method

.method public registerForRingbackToneExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3269
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 652
    return-void
.end method

.method public registerForServiceStateChangedExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3306
    return-void
.end method

.method public registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1648
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1310
    return-void
.end method

.method public registerForSignalInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3625
    return-void
.end method

.method public registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1577
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 700
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 668
    return-void
.end method

.method public registerForSuppServiceFailedExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3318
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 660
    return-void
.end method

.method public registerForSuppServiceNotificationExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3312
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1358
    return-void
.end method

.method public registerForT53AudioControlInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3661
    return-void
.end method

.method public registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1690
    return-void
.end method

.method public registerForUnblockPin2Done(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1511
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 588
    return-void
.end method

.method public registerForUnknownConnectionExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3245
    return-void
.end method

.method public registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1497
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2084
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2076
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 760
    return-void
.end method

.method public rejectCallExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3347
    return-void
.end method

.method public requesetSetPhoneType(ILandroid/os/Message;)V
    .locals 4
    .parameter "phonetype"
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 1933
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    .line 1934
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    .line 1935
    .local v0, outgoingPhoneType:I
    if-nez p1, :cond_1

    .line 1936
    const-string v1, "Please speicify the phone type"

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 1964
    :cond_0
    :goto_0
    return-void

    .line 1941
    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 1942
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/telephony/PhoneProxy;->requestPhoneClassChangeDone(ZILandroid/os/Message;)Z

    .line 1943
    if-eqz p2, :cond_0

    .line 1944
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1949
    :cond_2
    if-eq v0, p1, :cond_4

    .line 1950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch phone type ougoing phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p1, v3, :cond_3

    const-string v1, "GSM"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 1956
    iget v1, p2, Landroid/os/Message;->arg1:I

    iget v2, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->handleMessage(Landroid/os/Message;)V

    .line 1958
    if-eqz p2, :cond_0

    .line 1959
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1950
    :cond_3
    const-string v1, "CDMA"

    goto :goto_1

    .line 1962
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No need to change mode outgoing phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " switch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestCAVE(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "randu"
    .parameter "response"

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestCAVE(Ljava/lang/String;Landroid/os/Message;)V

    .line 2965
    return-void
.end method

.method public requestCW_UW_DREG(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestCW_UW_DREG(Landroid/os/Message;)V

    .line 2959
    return-void
.end method

.method public requestCW_UW_REG(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestCW_UW_REG(Landroid/os/Message;)V

    .line 2955
    return-void
.end method

.method public requestEhrpdDomainNameChangeState(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestEhrpdDomainNameChangeState(Landroid/os/Message;)V

    .line 2882
    return-void
.end method

.method public requestGetEhrpdDeviceCapability(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetEhrpdDeviceCapability(Landroid/os/Message;)V

    .line 2890
    return-void
.end method

.method public requestGetEhrpdDisableCapability(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetEhrpdDisableCapability(Landroid/os/Message;)V

    .line 2886
    return-void
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3080
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetGID1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetNBPCD(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetNBPCD(Landroid/os/Message;)V

    .line 1738
    return-void
.end method

.method public requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "ifc_name"
    .parameter "response"

    .prologue
    .line 3055
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V

    .line 3056
    return-void
.end method

.method public requestGetSIMType()I
    .locals 1

    .prologue
    .line 3115
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetSIMType()I

    move-result v0

    return v0
.end method

.method public requestGetSmartDataRoamingStatus(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetSmartDataRoamingStatus(Landroid/os/Message;)V

    .line 1573
    return-void
.end method

.method public requestGetVolteSipRegFailure(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3051
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetVolteSipRegFailure(Landroid/os/Message;)V

    .line 3052
    return-void
.end method

.method public requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "command"
    .parameter "response"

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 1275
    return-void
.end method

.method public requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .parameter "command"
    .parameter "modemId"
    .parameter "response"

    .prologue
    .line 3109
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    .line 3110
    return-void
.end method

.method public requestHtcGetDDTMMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestHtcGetDDTMMode(Landroid/os/Message;)V

    .line 1715
    return-void
.end method

.method public requestHtcGetGPSOneMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestHtcGetGPSOneMode(Landroid/os/Message;)V

    .line 1404
    return-void
.end method

.method public requestHtcSetDDTMMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "selectDDTM"
    .parameter "response"

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestHtcSetDDTMMode(ILandroid/os/Message;)V

    .line 1724
    return-void
.end method

.method public requestHtcSetGPSOneMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "gpsOneMode"
    .parameter "response"

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestHtcSetGPSOneMode(ILandroid/os/Message;)V

    .line 1410
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "nonce"
    .parameter "response"

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 1382
    return-void
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"
    .parameter "result"

    .prologue
    .line 2985
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2986
    return-void
.end method

.method public requestOTAProvisionStatus(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestOTAProvisionStatus(Landroid/os/Message;)V

    .line 1843
    return-void
.end method

.method public requestReleaseAllVoiceCalls(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestReleaseAllVoiceCalls(Landroid/os/Message;)V

    .line 1613
    return-void
.end method

.method public requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "randssd"
    .parameter "response"

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V

    .line 2971
    return-void
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "authbs"
    .parameter "response"

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V

    .line 2977
    return-void
.end method

.method public requestSetEhrpdDisableCapability(ILandroid/os/Message;)V
    .locals 1
    .parameter "ehrpdmode"
    .parameter "response"

    .prologue
    .line 2877
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSetEhrpdDisableCapability(ILandroid/os/Message;)V

    .line 2878
    return-void
.end method

.method public requestSetLBSNTFY(I)V
    .locals 1
    .parameter "lbsvalue"

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestSetLBSNTFY(I)V

    .line 1017
    return-void
.end method

.method public requestSetPushMailDormantTime(IILandroid/os/Message;)V
    .locals 1
    .parameter "activate"
    .parameter "time"
    .parameter "response"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    .line 1282
    return-void
.end method

.method public requestSetSmartDataRoaming(ILandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSetSmartDataRoaming(ILandroid/os/Message;)V

    .line 1569
    return-void
.end method

.method public requestSetVoiceRoamingMode(IILandroid/os/Message;)V
    .locals 1
    .parameter "domestic"
    .parameter "international"
    .parameter "response"

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->requestSetVoiceRoamingMode(IILandroid/os/Message;)V

    .line 2946
    return-void
.end method

.method public requestVPM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestVPM(Landroid/os/Message;)V

    .line 2980
    return-void
.end method

.method public requesthTcGetHybridMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requesthTcGetHybridMode(Landroid/os/Message;)V

    .line 1805
    return-void
.end method

.method public requesthTcGetSystemNAM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requesthTcGetSystemNAM(Landroid/os/Message;)V

    .line 1780
    return-void
.end method

.method public requesthTcSetHybridMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "hybridMode"
    .parameter "response"

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requesthTcSetHybridMode(ILandroid/os/Message;)V

    .line 1814
    return-void
.end method

.method public requesthTcSetSystemNAM(ILandroid/os/Message;)V
    .locals 1
    .parameter "numAssignModule"
    .parameter "response"

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requesthTcSetSystemNAM(ILandroid/os/Message;)V

    .line 1789
    return-void
.end method

.method public resetPdnForSettingsChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2807
    sget-boolean v2, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v2, :cond_1

    .line 2808
    const-string v2, " changePdnSettings"

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 2809
    const/4 v0, 0x0

    .line 2810
    .local v0, mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2811
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .end local v0           #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    check-cast v0, Lcom/android/internal/telephony/MMDataConnectionTracker;

    .line 2816
    .restart local v0       #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    :goto_0
    if-eqz v0, :cond_1

    .line 2817
    const/4 v1, 0x0

    .line 2819
    .local v1, phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->resetRadioForDisconnectingPdn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2820
    const-string v2, " Need reset the Radio due to LTE VZWIMS has been modified"

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 2821
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_0

    .line 2822
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v2, :cond_3

    .line 2823
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 2830
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    .line 2831
    const-string v2, "getNewMPDNTable"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;)V

    .line 2842
    .end local v0           #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    .end local v1           #phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_1
    :goto_2
    return-void

    .line 2814
    .restart local v0       #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .end local v0           #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    check-cast v0, Lcom/android/internal/telephony/MMDataConnectionTracker;

    .restart local v0       #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    goto :goto_0

    .line 2825
    .restart local v1       #phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v2, :cond_0

    .line 2826
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    goto :goto_1

    .line 2834
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V

    .line 2837
    invoke-virtual {v1, v4, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->lockUntilRadioPower(ZLcom/android/internal/telephony/DataConnectionTracker;)Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public restoreSavedNetworkSelection(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 1565
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .parameter "network"
    .parameter "response"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 987
    return-void
.end method

.method public selectNetworkManuallyExt(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;I)V
    .locals 0
    .parameter "network"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3479
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1286
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 824
    return-void
.end method

.method public sendDtmfExt(CI)V
    .locals 0
    .parameter "c"
    .parameter "phoneType"

    .prologue
    .line 3398
    return-void
.end method

.method public sendTamCmd([ILandroid/os/Message;)V
    .locals 1
    .parameter "config"
    .parameter "response"

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->sendTamCmd([ILandroid/os/Message;)V

    .line 3185
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "ussdMessge"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method public sendUssdResponseExt(Ljava/lang/String;I)V
    .locals 0
    .parameter "ussdMessge"
    .parameter "phoneType"

    .prologue
    .line 3303
    return-void
.end method

.method public setActivePhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3686
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 1074
    return-void
.end method

.method public setBandModeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "bandMode"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3542
    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 1
    .parameter "msgId"
    .parameter "onComplete"

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCBMsgIdEFcbmi([BLandroid/os/Message;)V

    .line 1520
    return-void
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 1
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCBFacility"
    .parameter "lockState"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V

    .line 1525
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 948
    return-void
.end method

.method public setCallForwardingOptionExt(IILjava/lang/String;ILandroid/os/Message;I)V
    .locals 0
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3456
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 975
    return-void
.end method

.method public setCallWaitingExt(ZLandroid/os/Message;I)V
    .locals 0
    .parameter "enable"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3469
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1100
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 1104
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 1229
    return-void
.end method

.method public setCellBroadcastSmsConfigExt([ILandroid/os/Message;I)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3619
    return-void
.end method

.method public setDataCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setDataCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 956
    return-void
.end method

.method public setDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3144
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setDataNationalRoamingMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataNationalRoamingMode(I)V

    .line 1091
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1086
    return-void
.end method

.method public setDataRoamingEnabledExt(ZI)V
    .locals 0
    .parameter "enable"
    .parameter "phoneType"

    .prologue
    .line 3552
    return-void
.end method

.method public setDataRoamingGuardResponse(ZZ)V
    .locals 1
    .parameter "accept"
    .parameter "remember"

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setDataRoamingGuardResponse(ZZ)V

    .line 1865
    return-void
.end method

.method public setDataRoamingGuardSetting(I)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingGuardSetting(I)V

    .line 1861
    return-void
.end method

.method public setDataSubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 3721
    return-void
.end method

.method public setDataSubscriptionExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "result"
    .parameter "phoneType"

    .prologue
    .line 3723
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 1038
    return-void
.end method

.method public setEmergencyRadioOn()V
    .locals 0

    .prologue
    .line 3131
    return-void
.end method

.method public setForceEmergencyMode(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 3130
    return-void
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 3
    .parameter "roamingOption"

    .prologue
    .line 3022
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGlobalDataRoamingOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setGlobalDataRoamingOption(I)V

    .line 3024
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 909
    return-void
.end method

.method public setLine1NumberExt(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3426
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1030
    return-void
.end method

.method public setMuteExt(ZI)V
    .locals 0
    .parameter "muted"
    .parameter "phoneType"

    .prologue
    .line 3500
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 983
    return-void
.end method

.method public setNetworkSelectionModeAutomaticExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3475
    return-void
.end method

.method public setNetworkSelectionRejectStatus(Z)V
    .locals 1
    .parameter "reject"

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionRejectStatus(Z)V

    .line 3121
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1366
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1026
    return-void
.end method

.method public setOnPostDialCharacterExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3497
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 967
    return-void
.end method

.method public setOutgoingCallerIdDisplayExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3463
    return-void
.end method

.method public setPdnSettings(ILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "profileSlot"
    .parameter "settings"
    .parameter "response"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2148
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    .line 2149
    .local v2, request:[Ljava/lang/String;
    if-ltz p1, :cond_1

    if-gt p1, v10, :cond_1

    .line 2150
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 2151
    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 2165
    :goto_0
    aget-object v4, v2, v8

    if-eqz v4, :cond_0

    .line 2166
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2167
    .local v0, apnSettings:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 2169
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 2172
    :goto_1
    const/4 v4, 0x3

    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v0, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2177
    :goto_2
    const/4 v4, 0x4

    :try_start_2
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v2, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2182
    :goto_3
    const/4 v4, 0x5

    const/4 v5, 0x3

    :try_start_3
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2185
    :goto_4
    const/4 v4, 0x6

    const/4 v5, 0x4

    :try_start_4
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2190
    .end local v0           #apnSettings:[Ljava/lang/String;
    :cond_0
    :goto_5
    new-array v3, v11, [Ljava/lang/Object;

    .line 2191
    .local v3, requestArray:[Ljava/lang/Object;
    aput-object v2, v3, v7

    .line 2192
    aput-object p3, v3, v8

    .line 2193
    const/16 v4, 0x6d

    invoke-virtual {p0, v4, v8, v7, v3}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    .line 2194
    return-void

    .line 2153
    .end local v3           #requestArray:[Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x5

    if-gt v4, p1, :cond_2

    const/16 v4, 0x9

    if-gt p1, v4, :cond_2

    .line 2154
    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 2155
    add-int/lit8 v4, p1, -0x5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    goto :goto_0

    .line 2157
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xc8

    if-gt v4, p1, :cond_3

    const/16 v4, 0xcc

    if-gt p1, v4, :cond_3

    .line 2159
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 2160
    add-int/lit16 v4, p1, -0xc8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    goto/16 :goto_0

    .line 2163
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    goto/16 :goto_0

    .line 2173
    .restart local v0       #apnSettings:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2174
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    goto :goto_2

    .line 2178
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2179
    .restart local v1       #ex:Ljava/lang/Exception;
    sget-object v4, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v2, v10

    goto :goto_3

    .line 2186
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_5

    .line 2183
    :catch_3
    move-exception v4

    goto :goto_4

    .line 2170
    :catch_4
    move-exception v4

    goto/16 :goto_1
.end method

.method public setPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "profile"
    .parameter "response"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2609
    new-array v0, v3, [Ljava/lang/Object;

    .line 2610
    .local v0, requestArray:[Ljava/lang/Object;
    aput-object p1, v0, v2

    .line 2611
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 2612
    const/16 v1, 0x6d

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    .line 2613
    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3152
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setPolicyDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 991
    return-void
.end method

.method public setPreferredNetworkTypeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "networkType"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3482
    return-void
.end method

.method public setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V
    .locals 1
    .parameter "isEnabled"
    .parameter "response"

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V

    .line 3066
    return-void
.end method

.method public setRX_Diversity(IILandroid/os/Message;)V
    .locals 1
    .parameter "rxInterface"
    .parameter "enabledFlag"
    .parameter "response"

    .prologue
    .line 3070
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setRX_Diversity(IILandroid/os/Message;)V

    .line 3071
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 836
    return-void
.end method

.method public setRadioPowerExt(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPowerExt(Z)V

    .line 842
    return-void
.end method

.method public setRadioPowerExt(ZI)V
    .locals 0
    .parameter "power"
    .parameter "phoneType"

    .prologue
    .line 3407
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1241
    return-void
.end method

.method public setSmscAddressExt(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "address"
    .parameter "result"
    .parameter "phoneType"

    .prologue
    .line 3491
    return-void
.end method

.method public setSubscriptionMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "subscriptionMode"
    .parameter "response"

    .prologue
    .line 3725
    return-void
.end method

.method public setSubscriptionModeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "subscriptionMode"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3727
    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "response"

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1557
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "ttyMode"
    .parameter "onComplete"

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1213
    return-void
.end method

.method public setTTYModeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "ttyMode"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3607
    return-void
.end method

.method public setTempCLIR(I)V
    .locals 1
    .parameter "tempCLIR"

    .prologue
    .line 3125
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setTempCLIR(I)V

    .line 3126
    return-void
.end method

.method public setTestIcc(Ljava/lang/String;Z)V
    .locals 1
    .parameter "plmn"
    .parameter "ef_ad"

    .prologue
    .line 1529
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1530
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccCardProxy;->setTestIcc(Ljava/lang/String;Z)V

    .line 1537
    :cond_0
    :goto_0
    return-void

    .line 1534
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTestIcc(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 2926
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 2927
    return-void
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .parameter "slotId"
    .parameter "appIndex"
    .parameter "subId"
    .parameter "subStatus"
    .parameter "response"

    .prologue
    .line 3729
    return-void
.end method

.method public setUiccSubscriptionExt(IIIILandroid/os/Message;I)V
    .locals 0
    .parameter "slotId"
    .parameter "appIndex"
    .parameter "subId"
    .parameter "subStatus"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3731
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1
    .parameter "f"

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 1066
    return-void
.end method

.method public setUnitTestModeExt(ZI)V
    .locals 0
    .parameter "f"
    .parameter "phoneType"

    .prologue
    .line 3535
    return-void
.end method

.method public setUserDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUserDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setVTSimulatedMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setVTSimulatedMode(Z)V

    .line 1602
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 927
    return-void
.end method

.method public setVoiceMailNumberExt(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3444
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 1395
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 828
    return-void
.end method

.method public startDtmfExt(CI)V
    .locals 0
    .parameter "c"
    .parameter "phoneType"

    .prologue
    .line 3401
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 832
    return-void
.end method

.method public stopDtmfExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3404
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 764
    return-void
.end method

.method public switchHoldingAndActiveExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3350
    return-void
.end method

.method public turnOnRadioDueToECC()V
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->turnOnRadioDueToECC()V

    .line 1416
    return-void
.end method

.method public uiccAkaAuthenticate([B[BLandroid/os/Message;)V
    .locals 1
    .parameter "rand"
    .parameter "autn"
    .parameter "response"

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->uiccAkaAuthenticate([B[BLandroid/os/Message;)V

    .line 2062
    return-void
.end method

.method public unregisterEcallAutoRetry(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 3703
    return-void
.end method

.method public unregisterForATDMmiComplete(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1508
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1306
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 696
    return-void
.end method

.method public unregisterForCollidedDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2872
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCollidedDisconnect(Landroid/os/Handler;)V

    .line 2873
    return-void
.end method

.method public unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V

    .line 1877
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 624
    return-void
.end method

.method public unregisterForDisconnectExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3284
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1322
    return-void
.end method

.method public unregisterForDisplayInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3634
    return-void
.end method

.method public unregisterForERIInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForERIInfo(Landroid/os/Handler;)V

    .line 1825
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 712
    return-void
.end method

.method public unregisterForFailEntitlementCheck(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForFailEntitlementCheck(Landroid/os/Handler;)V

    .line 1982
    return-void
.end method

.method public unregisterForHTCECCStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForHTCECCStatus(Landroid/os/Handler;)V

    .line 2918
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 688
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOffExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3333
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 680
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOnExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3327
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 616
    return-void
.end method

.method public unregisterForIncomingRingExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3266
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 1346
    return-void
.end method

.method public unregisterForLineControlInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3652
    return-void
.end method

.method public unregisterForLoopBackMode(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLoopBackMode(Landroid/os/Handler;)V

    .line 1674
    return-void
.end method

.method public unregisterForMIPFailCause(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMIPFailCause(Landroid/os/Handler;)V

    .line 1637
    return-void
.end method

.method public unregisterForMMLocationUpdateInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMMLocationUpdateInfo(Landroid/os/Handler;)V

    .line 1485
    return-void
.end method

.method public unregisterForManualState(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3039
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForManualState(Landroid/os/Handler;)V

    .line 3040
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 640
    return-void
.end method

.method public unregisterForMmiCompleteExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3296
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 632
    return-void
.end method

.method public unregisterForMmiInitiateExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3290
    return-void
.end method

.method public unregisterForNBPCDInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNBPCDInfo(Landroid/os/Handler;)V

    .line 1757
    return-void
.end method

.method public unregisterForNetworkBusy(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkBusy(Landroid/os/Handler;)V

    .line 1624
    return-void
.end method

.method public unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    .line 1833
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 608
    return-void
.end method

.method public unregisterForNewRingingConnectionExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3260
    return-void
.end method

.method public unregisterForNoDunDataPlan(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNoDunDataPlan(Landroid/os/Handler;)V

    .line 2097
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 1330
    return-void
.end method

.method public unregisterForNumberInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3640
    return-void
.end method

.method public unregisterForPhoneModeChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPhoneModeChanged(Landroid/os/Handler;)V

    .line 1973
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 600
    return-void
.end method

.method public unregisterForPreciseCallStateChangedExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3254
    return-void
.end method

.method public unregisterForRSSI_Report(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRSSI_Report(Landroid/os/Handler;)V

    .line 3075
    return-void
.end method

.method public unregisterForRadioOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOn(Landroid/os/Handler;)V

    .line 1493
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 1338
    return-void
.end method

.method public unregisterForRedirectedNumberInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3646
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 728
    return-void
.end method

.method public unregisterForResendIncallMuteExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3278
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 720
    return-void
.end method

.method public unregisterForRingbackToneExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3272
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 656
    return-void
.end method

.method public unregisterForServiceStateChangedExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3309
    return-void
.end method

.method public unregisterForSignalFade(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalFade(Landroid/os/Handler;)V

    .line 1656
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1314
    return-void
.end method

.method public unregisterForSignalInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3628
    return-void
.end method

.method public unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V

    .line 1581
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 704
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 672
    return-void
.end method

.method public unregisterForSuppServiceFailedExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3321
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 664
    return-void
.end method

.method public unregisterForSuppServiceNotificationExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3315
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 1362
    return-void
.end method

.method public unregisterForT53AudioControlInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3664
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 1354
    return-void
.end method

.method public unregisterForT53ClirInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3658
    return-void
.end method

.method public unregisterForToneSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForToneSignalInfo(Landroid/os/Handler;)V

    .line 1698
    return-void
.end method

.method public unregisterForUnblockPin2Done(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1514
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 592
    return-void
.end method

.method public unregisterForUnknownConnectionExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3248
    return-void
.end method

.method public unregisterForVoiceCallConnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallConnected(Landroid/os/Handler;)V

    .line 1502
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 2088
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 2080
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1370
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1054
    return-void
.end method

.method public updateServiceLocationExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3526
    return-void
.end method

.method public wifi2GRetry()V
    .locals 2

    .prologue
    .line 3871
    const-string v0, "PHONE"

    const-string v1, "Proxy: wifi2GRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->wifi2GRetry()V

    .line 3873
    return-void
.end method

.method public wifi2GRetryExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3719
    return-void
.end method
