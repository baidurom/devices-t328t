.class public abstract Lcom/android/internal/telephony/PhoneBase;
.super Landroid/os/Handler;
.source "PhoneBase.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# static fields
.field public static final CDMA_NUMBER_HYPHENATION_KEY:Ljava/lang/String; = "cdma_number_hyphenation_key"

.field public static final CDMA_PLUS_CODE_DIALING_KEY:Ljava/lang/String; = "cdma_plus_code_dialing_key"

.field public static final CDMA_PLUS_CODE_DIALING_NUMBER_KEY:Ljava/lang/String; = "cdma_plus_code_dialing_number_key"

.field public static final CLIR_KEY:Ljava/lang/String; = "clir_key"

.field public static final DATA_DISABLED_ON_BOOT_KEY:Ljava/lang/String; = "disabled_on_boot_key"

.field public static final DNS_SERVER_CHECK_DISABLED_KEY:Ljava/lang/String; = "dns_server_check_disabled_key"

.field protected static final EVENT_ACDB_TABLE_CHANGED:I = 0x6f

.field protected static final EVENT_AUTO_WIFI_ON_LOC:I = 0x74

.field protected static final EVENT_CALL_RING:I = 0xe

.field protected static final EVENT_CALL_RING_CONTINUE:I = 0xf

.field protected static final EVENT_DEACTIVATE_APPLICATION_DONE:I = 0x1c

.field protected static final EVENT_EMERGENCY_CALLBACK_MODE_ENTER:I = 0x19

.field protected static final EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x1a

.field protected static final EVENT_GET_BAND_CAPABILITY:I = 0x36

.field protected static final EVENT_GET_BASEBAND_VERSION_DONE:I = 0x6

.field protected static final EVENT_GET_CALL_BARRED_DONE:I = 0x32

.field protected static final EVENT_GET_CALL_FORWARD_DONE:I = 0xd

.field protected static final EVENT_GET_CDMA_LTE_STATE_REGISTRATION:I = 0x6e

.field protected static final EVENT_GET_CDMA_NV_PROGRAMMED_CARRIER_ID:I = 0x66

.field protected static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x15

.field protected static final EVENT_GET_IMEISV_DONE:I = 0xa

.field protected static final EVENT_GET_IMEI_DONE:I = 0x9

.field protected static final EVENT_GET_NETWORKS_DONE:I = 0x1e

.field protected static final EVENT_GET_OTA_MSG_PROVISION_STATUS:I = 0x65

.field protected static final EVENT_GET_SIM_STATUS_DONE:I = 0xb

.field protected static final EVENT_ICC_EXPIRED_FROM_RADIO:I = 0x37

.field protected static final EVENT_ICC_RECORDS_EONS_UPDATED:I = 0x1d

.field protected static final EVENT_KDDI_GET_SMS_DELIVER_REPORT:I = 0x73

.field protected static final EVENT_KDDI_OTASP:I = 0x71

.field protected static final EVENT_KDDI_SET_OTASP_STATUS_DONE:I = 0x72

.field protected static final EVENT_MMI_DONE:I = 0x4

.field protected static final EVENT_MODEM_RESTART_NOTIFY:I = 0x76

.field protected static final EVENT_NETWORK_SELECTION_STATE:I = 0x70

.field protected static final EVENT_NV_READY:I = 0x17

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x1

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x8

.field protected static final EVENT_RADIO_ON:I = 0x5

.field protected static final EVENT_REGISTERED_TO_NETWORK:I = 0x13

.field protected static final EVENT_REGISTER_RRCORDSLOADED:I = 0xc8

.field protected static final EVENT_REQUEST_HTC_DM_COMMAND_STRING:I = 0x64

.field protected static final EVENT_RESTORE_MANUAL_SELECT_NETWORK_DONE:I = 0x35

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x16

.field protected static final EVENT_SELECT_APPLICATION_DONE:I = 0x1b

.field protected static final EVENT_SET_CALL_FORWARD_DONE:I = 0xc

.field protected static final EVENT_SET_CLIR_COMPLETE:I = 0x12

.field protected static final EVENT_SET_ENHANCED_VP:I = 0x18

.field protected static final EVENT_SET_NETWORK_AUTOMATIC_COMPLETE:I = 0x11

.field protected static final EVENT_SET_NETWORK_MANUAL_COMPLETE:I = 0x10

.field protected static final EVENT_SET_VM_NUMBER_DONE:I = 0x14

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x3

.field protected static final EVENT_SMART_NETWORK_NOTIFY:I = 0x75

.field protected static final EVENT_SSN:I = 0x2

.field protected static final EVENT_STOP_INCOMING_USSD_NOTIFICATION:I = 0x34

.field protected static final EVENT_UNSOL_MM_LU_FAILED_CAUSE:I = 0x33

.field protected static final EVENT_USSD:I = 0x7

#the value of this static final field might be set in the static constructor
.field private static final GLOBAL_DATA_NETWORK_TYPE:Z = false

.field public static final LAST_SIM_IMSI_KEY:Ljava/lang/String; = "sim_imsi_key"

.field private static final LOCAL_DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final MWI_STATUS_KEY:Ljava/lang/String; = "mwi_status_key"

.field public static final NETWORK_SELECTION_ACT_KEY:Ljava/lang/String; = "network_selection_act_key"

.field public static final NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field public static final NETWORK_SELECTION_NAME_KEY:Ljava/lang/String; = "network_selection_name_key"

.field public static final NETWORK_SELECTION_REJECT_KEY:Ljava/lang/String; = "network_selection_reject_key"

.field protected static applyServiceStateMatrix:[[I


# instance fields
.field public MAX_DATA_POOL_SIZE:I

.field private dataNetworkType:Ljava/lang/Integer;

.field public m3GPreferred:Z

.field protected final mATDMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field public mCM:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mCallConnectedRegistrants:Landroid/os/RegistrantList;

.field mCallRingContinueToken:I

.field mCallRingDelay:I

.field protected final mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mContext:Landroid/content/Context;

.field public mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field mDnsCheckDisabled:Z

.field mDoesRilSendMultipleCallRing:Z

.field protected final mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

.field private mFirstBoot:Z

.field public mIccCard:Lcom/android/internal/telephony/IccCard;

.field protected mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field public mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field public mIsTheCurrentActivePhone:Z

.field mIsVoiceCapable:Z

.field protected mLooper:Landroid/os/Looper;

.field protected final mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

.field protected mManualSelection:Z

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field public mPdpSupportNum:I

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field protected final mRadioOnRegistrants:Landroid/os/RegistrantList;

.field protected mRoamingFirstConfirmed:Z

.field public mSMS:Lcom/android/internal/telephony/SMSDispatcher;

.field protected final mServiceStateRegistrants:Landroid/os/RegistrantList;

.field protected mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

.field public mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field public mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field protected mStorageAreaAvaliable:Ljava/lang/Boolean;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field mTempCLIR:I

.field protected final mUnblockPin2DoneRegistrants:Landroid/os/RegistrantList;

.field mUnitTestMode:Z

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

.field private voiceNetworkType:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x5

    .line 4302
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2b

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
    sput-boolean v0, Lcom/android/internal/telephony/PhoneBase;->GLOBAL_DATA_NETWORK_TYPE:Z

    .line 4436
    new-array v0, v4, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PhoneBase;->applyServiceStateMatrix:[[I

    return-void

    :cond_1
    move v0, v1

    .line 4302
    goto :goto_0

    .line 4436
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;)V
    .locals 3
    .parameter "notifier"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 358
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 233
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 234
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    .line 241
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->m3GPreferred:Z

    .line 245
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mFirstBoot:Z

    .line 249
    iput v2, p0, Lcom/android/internal/telephony/PhoneBase;->mTempCLIR:I

    .line 253
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/PhoneBase;->MAX_DATA_POOL_SIZE:I

    .line 254
    iput v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPdpSupportNum:I

    .line 268
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    .line 272
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    .line 275
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 278
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    .line 281
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 284
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    .line 287
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 290
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    .line 293
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    .line 296
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    .line 300
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

    .line 303
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOnRegistrants:Landroid/os/RegistrantList;

    .line 307
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 312
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

    .line 317
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mATDMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 319
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnblockPin2DoneRegistrants:Landroid/os/RegistrantList;

    .line 337
    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mRoamingFirstConfirmed:Z

    .line 350
    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mManualSelection:Z

    .line 359
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 360
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    .line 361
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    .line 363
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "notifier"
    .parameter "context"
    .parameter "ci"

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 375
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V
    .locals 7
    .parameter "notifier"
    .parameter "context"
    .parameter "ci"
    .parameter "unitTestMode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 387
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 233
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 234
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    .line 241
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->m3GPreferred:Z

    .line 245
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->mFirstBoot:Z

    .line 249
    iput v5, p0, Lcom/android/internal/telephony/PhoneBase;->mTempCLIR:I

    .line 253
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/telephony/PhoneBase;->MAX_DATA_POOL_SIZE:I

    .line 254
    iput v4, p0, Lcom/android/internal/telephony/PhoneBase;->mPdpSupportNum:I

    .line 268
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    .line 272
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    .line 275
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 278
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    .line 281
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 284
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    .line 287
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 290
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    .line 293
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    .line 296
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    .line 300
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

    .line 303
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOnRegistrants:Landroid/os/RegistrantList;

    .line 307
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 312
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

    .line 317
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mATDMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 319
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUnblockPin2DoneRegistrants:Landroid/os/RegistrantList;

    .line 337
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mRoamingFirstConfirmed:Z

    .line 350
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mManualSelection:Z

    .line 388
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 389
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    .line 390
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    .line 391
    iput-object p3, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 393
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->setPropertiesByCarrier()V

    .line 395
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/PhoneBase;->setUnitTestMode(Z)V

    .line 397
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 399
    .local v1, sp:Landroid/content/SharedPreferences;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-ne v2, v3, :cond_0

    .line 401
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    .line 402
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 403
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dns_server_check_disabled_key"

    iget-boolean v3, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 409
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe

    invoke-interface {v2, p0, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 417
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    .line 430
    const-string v2, "ro.telephony.call_ring.multiple"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    .line 432
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDoesRilSendMultipleCallRing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v2, "ro.telephony.call_ring.delay"

    const/16 v3, 0xbb8

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    .line 436
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallRingDelay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v2, Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SmsStorageMonitor;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 440
    new-instance v2, Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/SmsUsageMonitor;-><init>(Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 443
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x74

    invoke-interface {v2, p0, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAutoWifiOnLocNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 444
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x75

    invoke-interface {v2, p0, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForSmartNetworkNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 448
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x76

    invoke-interface {v2, p0, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemResetNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 450
    return-void

    .line 407
    :cond_0
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    goto/16 :goto_0
.end method

.method private checkCorrectThread(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 1084
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    if-eq v0, v1, :cond_0

    .line 1085
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "com.android.internal.telephony.Phone must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1088
    :cond_0
    return-void
.end method

.method public static combineVoiceDataServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 7
    .parameter "vss"
    .parameter "dss"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 4446
    if-nez p0, :cond_2

    .line 4447
    if-nez p1, :cond_1

    .line 4449
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    .line 4450
    .local v1, ss:Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 4508
    :cond_0
    :goto_0
    return-object v1

    .line 4453
    .end local v1           #ss:Landroid/telephony/ServiceState;
    :cond_1
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .restart local v1       #ss:Landroid/telephony/ServiceState;
    goto :goto_0

    .line 4457
    .end local v1           #ss:Landroid/telephony/ServiceState;
    :cond_2
    if-nez p1, :cond_3

    .line 4458
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .restart local v1       #ss:Landroid/telephony/ServiceState;
    goto :goto_0

    .line 4461
    .end local v1           #ss:Landroid/telephony/ServiceState;
    :cond_3
    new-array v2, v6, [Landroid/telephony/ServiceState;

    aput-object p0, v2, v5

    const/4 v4, 0x1

    aput-object p1, v2, v4

    .line 4464
    .local v2, targetStates:[Landroid/telephony/ServiceState;
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 4465
    .local v3, vsi:I
    sget-object v4, Lcom/android/internal/telephony/PhoneBase;->applyServiceStateMatrix:[[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_4

    if-gez v3, :cond_5

    .line 4466
    :cond_4
    const/4 v3, 0x1

    .line 4468
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 4469
    .local v0, dsi:I
    sget-object v4, Lcom/android/internal/telephony/PhoneBase;->applyServiceStateMatrix:[[I

    aget-object v4, v4, v5

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-gt v0, v4, :cond_6

    if-gez v0, :cond_7

    .line 4470
    :cond_6
    const/4 v0, 0x1

    .line 4473
    :cond_7
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 4474
    .restart local v1       #ss:Landroid/telephony/ServiceState;
    sget-object v4, Lcom/android/internal/telephony/PhoneBase;->applyServiceStateMatrix:[[I

    aget-object v4, v4, v3

    aget v4, v4, v0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setState(I)V

    .line 4475
    if-nez v0, :cond_0

    .line 4476
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 4477
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setNetworkType(I)V

    .line 4478
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getGPRSState()I

    move-result v4

    if-nez v4, :cond_8

    .line 4479
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getGPRSState()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setGPRSState(I)V

    .line 4482
    :cond_8
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 4485
    :cond_9
    if-eqz v3, :cond_a

    if-eq v3, v6, :cond_a

    .line 4487
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4493
    :cond_a
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 4502
    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    goto/16 :goto_0

    .line 4493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getSavedNetworkAct()Ljava/lang/String;
    .locals 3

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 803
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "network_selection_act_key"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSavedNetworkRejectStatus()Z
    .locals 3

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 810
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "network_selection_reject_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private initUSSDVerificationStrings()V
    .locals 2

    .prologue
    .line 2361
    const-string v0, "PHONE"

    const-string v1, "initUSSDVerificationStrings() is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    return-void
.end method

.method private logCallError()V
    .locals 0

    .prologue
    .line 4087
    return-void
.end method

.method private static logUnexpectedCdmaMethodCall(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1977
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() in PhoneBase should not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "called, CDMAPhone inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    return-void
.end method

.method private static logUnexpectedGsmMethodCall(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 2002
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() in PhoneBase should not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "called, GSMPhone inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    return-void
.end method

.method private notifyIncomingRing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1855
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-nez v1, :cond_0

    .line 1859
    :goto_0
    return-void

    .line 1857
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1858
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private processUSSDVerificationStrings()V
    .locals 2

    .prologue
    .line 2365
    const-string v0, "PHONE"

    const-string v1, "processUSSDVerificationStrings() is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    return-void
.end method

.method private sendIncomingCallRingNotification(I)V
    .locals 3
    .parameter "token"

    .prologue
    .line 1892
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    if-ne p1, v0, :cond_0

    .line 1894
    const-string v0, "PHONE"

    const-string v1, "Sending notifyIncomingRing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyIncomingRing()V

    .line 1896
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1905
    :goto_0
    return-void

    .line 1899
    :cond_0
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring ring notification request, mDoesRilSendMultipleCallRing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCallRingContinueToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsVoiceCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPropertiesByCarrier()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x0

    .line 1095
    const-string v9, "ro.carrier"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, carrier:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "unknown"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070030

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1104
    .local v2, carrierLocales:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v9, v2

    if-ge v5, v9, :cond_0

    .line 1105
    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, c:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1107
    add-int/lit8 v9, v5, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1109
    .local v6, l:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1110
    .local v7, language:Ljava/lang/String;
    const-string v3, ""

    .line 1111
    .local v3, country:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v12, :cond_2

    .line 1112
    const/4 v9, 0x3

    invoke-virtual {v6, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1114
    :cond_2
    invoke-virtual {p0, v7, v3, v11}, Lcom/android/internal/telephony/PhoneBase;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1116
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1118
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_country_code"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1120
    :catch_0
    move-exception v4

    .line 1122
    .local v4, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 1124
    .local v8, wM:Landroid/net/wifi/WifiManager;
    invoke-virtual {v8, v3, v11}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1104
    .end local v3           #country:Ljava/lang/String;
    .end local v4           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v6           #l:Ljava/lang/String;
    .end local v7           #language:Ljava/lang/String;
    .end local v8           #wM:Landroid/net/wifi/WifiManager;
    :cond_3
    add-int/lit8 v5, v5, 0x3

    goto :goto_1
.end method

.method private typesIncludeStar([Ljava/lang/String;)Z
    .locals 6
    .parameter "types"

    .prologue
    .line 1471
    const/4 v3, 0x0

    .line 1472
    .local v3, ret:Z
    if-eqz p1, :cond_0

    .line 1473
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1474
    .local v4, type:Ljava/lang/String;
    const-string v5, "*"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1475
    const/4 v3, 0x1

    .line 1480
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #type:Ljava/lang/String;
    :cond_0
    return v3

    .line 1473
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #type:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public HtcisDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 4284
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isDataPossible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 3009
    return-void
.end method

.method public activateCellBroadcastSmsExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "activate"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3868
    return-void
.end method

.method public canConferenceExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3044
    const/4 v0, 0x0

    return v0
.end method

.method public canTransferExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3066
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnectedExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3090
    return-void
.end method

.method public clearNetworkSelection()V
    .locals 4

    .prologue
    .line 2533
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2534
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2535
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "network_selection_key"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2536
    const-string v2, "network_selection_name_key"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2537
    const-string v2, "network_selection_act_key"

    const-string v3, "-1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2539
    const-string v2, "network_selection_reject_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2543
    const-string v2, "PHONE"

    const-string v3, "failed to commit network selection preference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    :cond_0
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
    .line 3058
    return-void
.end method

.method public abstract confirmFirstDataRoaming()V
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
    .line 3160
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
    .line 3175
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1815
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    const/4 v0, 0x3

    .line 1819
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->disableApnType(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public disableApnTypeExt(Ljava/lang/String;I)I
    .locals 1
    .parameter "type"
    .parameter "phoneType"

    .prologue
    .line 3766
    const/4 v0, -0x1

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 624
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    .line 625
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 626
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 627
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 628
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 629
    return-void
.end method

.method public disableDnsCheckExt(ZI)V
    .locals 0
    .parameter "b"
    .parameter "phoneType"

    .prologue
    .line 2606
    return-void
.end method

.method public disableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3672
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 453
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCallRing(Landroid/os/Handler;)V

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 462
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->dispose()V

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsUsageMonitor;->dispose()V

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mATDMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAutoWifiOnLocNotify(Landroid/os/Handler;)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSmartNetworkNotify(Landroid/os/Handler;)V

    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForModemResetNotify(Landroid/os/Handler;)V

    .line 497
    monitor-exit v1

    .line 498
    return-void

    .line 460
    :cond_0
    const-string v0, "PHONE"

    const-string v2, "mDataConnectionTracker is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1804
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    const/4 v0, 0x3

    .line 1808
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->enableApnType(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public enableApnTypeExt(Ljava/lang/String;I)I
    .locals 1
    .parameter "type"
    .parameter "phoneType"

    .prologue
    .line 3747
    const/4 v0, -0x1

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 1421
    const-string v0, "enableEnhancedVoicePrivacy"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1422
    return-void
.end method

.method public enableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3665
    return-void
.end method

.method public enableMpdp(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1930
    return-void
.end method

.method public enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 4100
    const/4 v0, 0x1

    return v0
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 1631
    const-string v0, "exitEmergencyCallbackMode"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1632
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
    .line 3081
    return-void
.end method

.method public genericSimIO(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "response"

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->genericSimIO(Ljava/lang/String;Landroid/os/Message;)V

    .line 2222
    return-void
.end method

.method public getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter "ipv"

    .prologue
    .line 4242
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 4244
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    const-string v0, ""

    .line 4248
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 4297
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1771
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const-string v0, ""

    .line 1775
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApnString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1760
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1764
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveApnTypesExt(I)[Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2645
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveCid()I
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mCidActive:I

    return v0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1936
    const-string v1, "PHONE"

    const-string v2, "getActivePDPList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const/4 v0, 0x0

    .line 1964
    .local v0, result:[Ljava/lang/String;
    return-object v0
.end method

.method public getActivePhoneType()I
    .locals 1

    .prologue
    .line 4083
    const/4 v0, -0x1

    return v0
.end method

.method public getAvailableNetworksAppendAcT(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2201
    const-string v0, "PHONE"

    const-string v1, "getAvailableNetworksAppendAcT is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    return-void
.end method

.method public getAvailableNetworksExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3447
    return-void
.end method

.method public getBackgroundCallExt(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 1281
    .local v0, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 1282
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getVoiceCallForwardingFlag()Z

    move-result v1

    .line 1284
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallForwardingIndicatorExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3262
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOptionExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3358
    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 1225
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallWaitingExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3420
    return-void
.end method

.method public getCdmaEriFileVersion()I
    .locals 2

    .prologue
    .line 1584
    const-string v0, "PHONE"

    const-string v1, "Error! getCdmaEriText should never be executed in GSM mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1558
    const-string v0, "getCdmaEriIconIndex"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1559
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1568
    const-string v0, "getCdmaEriIconMode"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1569
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1576
    const-string v0, "getCdmaEriText"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1577
    const-string v0, "GSM nw, no ERI"

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1590
    const-string v0, "getCdmaMin"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1591
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1602
    const-string v0, "getCdmaPrlVersion"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1603
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellBroadcastSmsConfigExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3878
    return-void
.end method

.method public getCellLocationExt(I)Landroid/telephony/CellLocation;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2578
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 2

    .prologue
    .line 2276
    const-string v0, "PHONE"

    const-string v1, "phonebase getDataActivityState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 2280
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 2284
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataActivityStateExt(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2596
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCFUNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2421
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallForwardingOption(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 2416
    const-string v0, "PHONE"

    const-string v1, "getDataCallForwardingOption"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    return-void
.end method

.method public getDataCallListExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3640
    return-void
.end method

.method public getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter "type"
    .parameter "ipv"

    .prologue
    .line 4196
    const-string v0, "PHONE"

    const-string v1, "phonebase getDataConnectionRealIpState(String type, IPVersion ipv)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 4200
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4201
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 4204
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    .prologue
    .line 1988
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1989
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1990
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 1995
    :goto_0
    return-object v0

    .line 1992
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    goto :goto_0

    .line 1995
    :cond_1
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter "type"
    .parameter "ipv"

    .prologue
    .line 4185
    const-string v0, "PHONE"

    const-string v1, "phonebase getDataConnectionState(String type, IPVersion ipv)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 4189
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 4193
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataConnectionStateExt(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2587
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConnectionStateTime(Ljava/lang/String;)J
    .locals 2
    .parameter "apnType"

    .prologue
    .line 2177
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDataRoamingEnabledExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3714
    const/4 v0, 0x0

    return v0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 2270
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2046
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceIdExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3788
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSvnExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3796
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;
    .locals 2
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 2292
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 2296
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnabledApnTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1463
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1467
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getEnabledApnTypes()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1426
    const-string v0, "getEnhancedVoicePrivacy"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1427
    return-void
.end method

.method public getEntitleErrorCause()I
    .locals 1

    .prologue
    .line 4253
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getEntitleErrorCause()I

    move-result v0

    return v0
.end method

.method public getFdnEnabledStatus()Z
    .locals 1

    .prologue
    .line 2216
    const/4 v0, 0x1

    return v0
.end method

.method public getForegroundCallExt(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 4231
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 4233
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    const-string v0, ""

    .line 4237
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 2

    .prologue
    .line 2465
    const-string v0, "PHONE"

    const-string v1, "not implement getGlobalDataRoamingOption"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    const/4 v0, 0x0

    return v0
.end method

.method public getGprsStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 4365
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4366
    const/4 v0, 0x0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .prologue
    .line 1211
    return-object p0
.end method

.method public getHtcSimTypes(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getHtcSimTypes(Landroid/os/Message;)V

    .line 1395
    return-void
.end method

.method public getICCRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 2

    .prologue
    .line 1290
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1291
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 1297
    :goto_0
    return-object v1

    .line 1293
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 1294
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_1

    .line 1295
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    goto :goto_0

    .line 1297
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 1232
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 1235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    goto :goto_0
.end method

.method public getIccCardExt(I)Lcom/android/internal/telephony/IccCard;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2996
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
.end method

.method public abstract getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;
.end method

.method public getIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 1
    .parameter "overrideFileHandler"

    .prologue
    .line 1200
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1201
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 1203
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object p1

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManagerExt(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3831
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 1257
    .local v0, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 1258
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v1

    .line 1260
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccRecordsLoadedExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2988
    const/4 v0, 0x0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1244
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 1245
    .local v0, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 1246
    iget-object v1, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 1248
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSerialNumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3810
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSmsInterfaceManagerExt(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3824
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2206
    const-string v0, "PHONE"

    const-string v1, "getImei is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImeiSv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2210
    const-string v0, "PHONE"

    const-string v1, "getImeiSv is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInCallPhoneType()I
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 4209
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 4211
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    const-string v0, ""

    .line 4215
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 4220
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 4222
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4223
    const-string v0, ""

    .line 4226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 2

    .prologue
    .line 1915
    const-string v0, "PHONE"

    const-string v1, "getIsimRecords() is only supported on LTE devices"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2064
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1AlphaTagExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3281
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2058
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1NumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3272
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1793
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    const/4 v0, 0x0

    .line 1797
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    goto :goto_0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1782
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    const/4 v0, 0x0

    .line 1786
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    goto :goto_0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 2

    .prologue
    .line 1268
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 1269
    .local v0, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 1270
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getVoiceMessageWaiting()Z

    move-result v1

    .line 1272
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessageWaitingIndicatorEnhanced()I
    .locals 1

    .prologue
    .line 2069
    const/4 v0, 0x0

    return v0
.end method

.method public getMessageWaitingIndicatorExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3252
    const/4 v0, 0x0

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1924
    const-string v0, "getMsisdn"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedGsmMethodCall(Ljava/lang/String;)V

    .line 1925
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMuteExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3589
    const/4 v0, 0x0

    return v0
.end method

.method public getNeighboringCidsExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3527
    return-void
.end method

.method public getOutgoingCallerIdDisplayExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3394
    return-void
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1612
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPRIVersions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2233
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPdnSettings(ILandroid/os/Message;)V
    .locals 0
    .parameter "profileSlot"
    .parameter "response"

    .prologue
    .line 2237
    return-void
.end method

.method public getPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "profile"
    .parameter "response"

    .prologue
    .line 2239
    return-void
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
    .line 2863
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneInstance(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 4070
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPhoneName()Ljava/lang/String;
.end method

.method public getPhoneNameExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2636
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneSubInfoExt(I)Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3817
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPhoneType()I
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1379
    return-void
.end method

.method public getPreferredNetworkTypeExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3493
    return-void
.end method

.method public getPreferredOnly()I
    .locals 1

    .prologue
    .line 1620
    const/4 v0, 0x0

    return v0
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCallExt(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSIMOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2484
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSavedNetworkSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 797
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "network_selection_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getServiceStateExt(I)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2571
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 1218
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignalStrengthExt(I)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2670
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimTypes(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSimTypes(Landroid/os/Message;)V

    .line 1390
    return-void
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 1405
    return-void
.end method

.method public getSmscAddressExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "result"
    .parameter "phoneType"

    .prologue
    .line 3502
    return-void
.end method

.method public abstract getState()Lcom/android/internal/telephony/Phone$State;
.end method

.method public getStateExt(I)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2627
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2052
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriberIdExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3803
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTempCLIR()I
    .locals 4

    .prologue
    .line 4160
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTempCLIR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PhoneBase;->mTempCLIR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and reset to CLIR_DEFAULT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mTempCLIR:I

    .line 4162
    .local v0, returnCLIR:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/PhoneBase;->mTempCLIR:I

    .line 4163
    return v0
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2374
    const-string v0, "PHONE"

    const-string v1, "getUSSDVerificationStatus() is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2369
    const-string v0, "PHONE"

    const-string v1, "getUSSDVerificationStrings() is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 1000
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    return v0
.end method

.method public getUnitTestModeExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3686
    const/4 v0, 0x0

    return v0
.end method

.method public getVTSimulatedMode()Z
    .locals 1

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getVTSimulatedMode()Z

    move-result v0

    return v0
.end method

.method public getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3325
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3302
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1551
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMessageCountExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3310
    const/4 v0, -0x1

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
    .line 3199
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 516
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 607
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected event not handled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 518
    :sswitch_0
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event EVENT_CALL_RING Received state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 520
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    .line 522
    .local v5, state:Lcom/android/internal/telephony/Phone$State;
    iget-boolean v6, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    if-nez v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_1

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_2

    .line 524
    :cond_1
    iget v6, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    .line 525
    iget v6, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneBase;->sendIncomingCallRingNotification(I)V

    goto :goto_0

    .line 527
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyIncomingRing()V

    goto :goto_0

    .line 533
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v5           #state:Lcom/android/internal/telephony/Phone$State;
    :sswitch_1
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event EVENT_CALL_RING_CONTINUE Received stat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_0

    .line 535
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneBase;->sendIncomingCallRingNotification(I)V

    goto :goto_0

    .line 548
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 549
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v2, v6

    check-cast v2, [I

    .line 550
    .local v2, info:[I
    if-eqz v2, :cond_0

    array-length v6, v2

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    .line 551
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.phone.AUTO_WIFI_ON_LOC"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .local v1, bc:Landroid/content/Intent;
    const-string v6, "matched_location_cell"

    aget v7, v2, v8

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    const-string v6, "location_index_in_db"

    aget v7, v2, v9

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 557
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 567
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #bc:Landroid/content/Intent;
    .end local v2           #info:[I
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 568
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v4, v6

    check-cast v4, [I

    .line 569
    .local v4, smartNetwork:[I
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lt v6, v9, :cond_0

    .line 570
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.htc.android.FlexNetStatusNotify"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    .restart local v1       #bc:Landroid/content/Intent;
    const-string v6, "Status"

    aget v7, v4, v8

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 587
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #bc:Landroid/content/Intent;
    .end local v4           #smartNetwork:[I
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 588
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v3, v6

    check-cast v3, [I

    .line 589
    .local v3, modemRestart:[I
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lt v6, v9, :cond_0

    .line 590
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.htc.android.ModemLoggingNotify"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .restart local v1       #bc:Landroid/content/Intent;
    const-string v6, "Status"

    aget v7, v3, v8

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 516
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0xf -> :sswitch_1
        0x74 -> :sswitch_2
        0x75 -> :sswitch_3
        0x76 -> :sswitch_4
    .end sparse-switch
.end method

.method public handlePinMmiExt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "dialString"
    .parameter "phoneType"

    .prologue
    .line 3186
    const/4 v0, 0x0

    return v0
.end method

.method public htcGetCdmaEriCallGuard()I
    .locals 2

    .prologue
    .line 2139
    const-string v0, "PHONE"

    const-string v1, "htcGetCdmaEriCallGuard is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    const/4 v0, -0x1

    return v0
.end method

.method public htcGetCdmaEriDistinctiveRinger()I
    .locals 2

    .prologue
    .line 2144
    const-string v0, "PHONE"

    const-string v1, "htcGetCdmaEriCallGuard is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    const/4 v0, -0x1

    return v0
.end method

.method public htcNotifyFailEntitlementCheck()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1883
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1884
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1885
    return-void
.end method

.method public htcNotifyNoDunDataPlan()V
    .locals 0

    .prologue
    .line 1869
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1439
    return-void
.end method

.method public invokeOemRilRequestRawExt([BLandroid/os/Message;I)V
    .locals 0
    .parameter "data"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3607
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1443
    return-void
.end method

.method public invokeOemRilRequestStringsExt([Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "strings"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3625
    return-void
.end method

.method public isActEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 4117
    const-string v3, "ro.cid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4118
    .local v0, cid:Ljava/lang/String;
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4120
    .local v1, operator:Ljava/lang/String;
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->IS_CMCC:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v2, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    :cond_2
    const-string v3, "0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.ril.oem.show.act."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    const-string v4, "ro.ril.oem.show.act"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.ril.oem.show.act."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isConcurrentVoiceAndDataExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3774
    const/4 v0, 0x0

    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 1910
    const-string v0, "isCspPlmnEnabled"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedGsmMethodCall(Ljava/lang/String;)V

    .line 1911
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityEnabledExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3730
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 1824
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1825
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1826
    const/4 v0, 0x0

    .line 1831
    :goto_0
    return v0

    .line 1828
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isDataConnectivityPossible()Z

    move-result v0

    goto :goto_0

    .line 1831
    :cond_1
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isDataPossible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataConnectivityPossibleExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3781
    const/4 v0, 0x0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    return v0
.end method

.method public isDnsCheckDisabledExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2612
    const/4 v0, 0x0

    return v0
.end method

.method public isInEcm()Z
    .locals 1

    .prologue
    .line 1542
    const/4 v0, 0x0

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1533
    const/4 v0, 0x0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 1596
    const-string v0, "isMinInfoReady"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1597
    const/4 v0, 0x0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialStr"

    .prologue
    .line 1667
    const/4 v0, 0x0

    return v0
.end method

.method public isStorageAreaAvaliable()Z
    .locals 8

    .prologue
    .line 4376
    const/4 v0, 0x1

    .line 4377
    .local v0, areaAvaliable:Z
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mStorageAreaAvaliable:Ljava/lang/Boolean;

    if-nez v5, :cond_4

    .line 4378
    const/4 v3, 0x0

    .line 4379
    .local v3, encryptState:I
    const/4 v1, 0x0

    .line 4382
    .local v1, cryptState:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-static {v5, v6}, Landroid/app/admin/DevicePolicyManager;->create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 4383
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_1

    .line 4384
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 4385
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 4386
    const/4 v0, 0x0

    .line 4396
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mStorageAreaAvaliable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4401
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :goto_1
    const-string v5, "PHONE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phone storage encryption : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    .end local v1           #cryptState:Ljava/lang/String;
    .end local v3           #encryptState:I
    :goto_2
    return v0

    .line 4388
    .restart local v1       #cryptState:Ljava/lang/String;
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v3       #encryptState:I
    :cond_2
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 4389
    :try_start_1
    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4390
    const-string v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4391
    const/4 v0, 0x0

    goto :goto_0

    .line 4392
    :cond_3
    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 4393
    const/4 v0, 0x0

    goto :goto_0

    .line 4398
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v4

    .line 4399
    .local v4, ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 4404
    .end local v1           #cryptState:Ljava/lang/String;
    .end local v3           #encryptState:I
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mStorageAreaAvaliable:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 1659
    const/4 v0, 0x0

    return v0
.end method

.method public notifyATDMmiComplete(Z)V
    .locals 0
    .parameter "ok"

    .prologue
    .line 4278
    return-void
.end method

.method protected notifyATDMmiCompleteP(Z)V
    .locals 0
    .parameter "ok"

    .prologue
    .line 986
    return-void
.end method

.method public notifyCallForwardingIndicator()V
    .locals 2

    .prologue
    .line 2009
    const-string v0, "PHONE"

    const-string v1, "Error! This function should never be executed, inactive CDMAPhone."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    return-void
.end method

.method public notifyCollidedDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 2262
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCollidedDisconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2264
    return-void
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    .line 1447
    return-void
.end method

.method public notifyDataActivityExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3917
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;)V
    .locals 7
    .parameter "reason"

    .prologue
    .line 1509
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v4

    .line 1511
    .local v4, types:[Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneBase;->typesIncludeStar([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1512
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getEnabledApnTypes()[Ljava/lang/String;

    move-result-object v4

    .line 1515
    :cond_0
    if-nez v4, :cond_2

    .line 1517
    const-string v5, "PHONE"

    const-string v6, "notifyDataConnection:ApnTypes is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_1
    return-void

    .line 1520
    :cond_2
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 1521
    .local v0, apnType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v6

    invoke-interface {v5, p0, p1, v0, v6}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 1520
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 1497
    const-string v5, "*"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1498
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getEnabledApnTypes()[Ljava/lang/String;

    move-result-object v4

    .line 1499
    .local v4, types:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1500
    .local v3, type:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v6

    invoke-interface {v5, p0, p1, v3, v6}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 1499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1505
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #type:Ljava/lang/String;
    .end local v4           #types:[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v6

    invoke-interface {v5, p0, p1, p2, v6}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 1506
    :cond_1
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 2
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 1487
    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    const-string v0, "PHONE"

    const-string v1, "notify(reason, type, state) should not use \'*\' as param, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :goto_0
    return-void

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    return-void
.end method

.method protected notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "cn"

    .prologue
    const/4 v1, 0x0

    .line 1010
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1011
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1012
    return-void
.end method

.method protected notifyMMLocationUpdateInfoP([I)V
    .locals 2
    .parameter "causeCode"

    .prologue
    const/4 v1, 0x0

    .line 937
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 939
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 940
    return-void
.end method

.method public notifyMessageWaitingIndicator()V
    .locals 1

    .prologue
    .line 1451
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-nez v0, :cond_0

    .line 1456
    :goto_0
    return-void

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method protected notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter "cn"

    .prologue
    const/4 v2, 0x0

    .line 1845
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-nez v1, :cond_0

    .line 1849
    :goto_0
    return-void

    .line 1847
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1848
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 1
    .parameter "otaspMode"

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V

    .line 1527
    return-void
.end method

.method protected notifyPreciseCallStateChangedP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 672
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 673
    return-void
.end method

.method protected notifyRadioOnP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 955
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 957
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 958
    return-void
.end method

.method protected notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "ss"

    .prologue
    const/4 v1, 0x0

    .line 1057
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    .line 1059
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1060
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1062
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    .line 1063
    return-void
.end method

.method protected notifyServiceStateChangedSeparatelyP()V
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceStateAndSeparate(Lcom/android/internal/telephony/Phone;)V

    .line 1067
    return-void
.end method

.method public notifyUnblockPin2Done()V
    .locals 0

    .prologue
    .line 4279
    return-void
.end method

.method protected notifyUnblockPin2DoneP()V
    .locals 0

    .prologue
    .line 990
    return-void
.end method

.method public notifyVoiceCallConnected(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 650
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 651
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 652
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1435
    return-void
.end method

.method public queryAvailableBandModeExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3708
    return-void
.end method

.method public queryCAVE(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCAVE(Landroid/os/Message;)V

    .line 2431
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1308
    return-void
.end method

.method public queryMD5(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryMD5(Landroid/os/Message;)V

    .line 2452
    return-void
.end method

.method public queryManualselectionStatus()Z
    .locals 1

    .prologue
    .line 4110
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mManualSelection:Z

    return v0
.end method

.method public queryNFCpdp()I
    .locals 1

    .prologue
    .line 4259
    const/4 v0, 0x0

    return v0
.end method

.method public querySSDUpdate(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->querySSDUpdate(Landroid/os/Message;)V

    .line 2437
    return-void
.end method

.method public querySubsidyLock(ILandroid/os/Message;)V
    .locals 1
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 4342
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    .line 4343
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryTTYMode(Landroid/os/Message;)V

    .line 1417
    return-void
.end method

.method public queryTTYModeExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3856
    return-void
.end method

.method public queryUIMAUTH(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryUIMAUTH(Landroid/os/Message;)V

    .line 2455
    return-void
.end method

.method public queryVPM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryVPM(Landroid/os/Message;)V

    .line 2446
    return-void
.end method

.method public reEnableDataRoamingGuardDialog()V
    .locals 2

    .prologue
    .line 2159
    const-string v0, "PHONE"

    const-string v1, "reEnableDataRoamingGuardDialog is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    return-void
.end method

.method public registerEcallAutoRetry(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 4271
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1732
    return-void
.end method

.method public registerFoT53ClirlInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 4029
    return-void
.end method

.method public registerForATDMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 970
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1672
    const-string v0, "registerForCallWaiting"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1673
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1636
    const-string v0, "registerForCdmaOtaStatusChange"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1637
    return-void
.end method

.method public registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2251
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 2253
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2254
    return-void
.end method

.method public registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2163
    const-string v0, "PHONE"

    const-string v1, "registerForDataRoamingGuardChanged is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    return-void
.end method

.method public registerForDataServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2307
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 735
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 739
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_DEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    return-void
.end method

.method public registerForDisconnectExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2802
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1700
    return-void
.end method

.method public registerForDisplayInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3930
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1682
    const-string v0, "registerForEcmTimerReset"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1683
    return-void
.end method

.method public registerForFailEntitlementCheck(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1873
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1875
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1876
    return-void
.end method

.method public registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2352
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 713
    return-void
.end method

.method public registerForInCallVoicePrivacyOffExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2968
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 703
    return-void
.end method

.method public registerForInCallVoicePrivacyOnExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2948
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 726
    return-void
.end method

.method public registerForIncomingRingExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2744
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1724
    return-void
.end method

.method public registerForLineControlInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 4004
    return-void
.end method

.method public registerForMMLocationUpdateInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 931
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 934
    return-void
.end method

.method public registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2474
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 779
    return-void
.end method

.method public registerForMmiCompleteExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2845
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 767
    return-void
.end method

.method public registerForMmiInitiateExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2825
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 690
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 693
    return-void
.end method

.method public registerForNewRingingConnectionExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2723
    return-void
.end method

.method public registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1863
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1864
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1708
    return-void
.end method

.method public registerForNumberInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3954
    return-void
.end method

.method public registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2192
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 659
    return-void
.end method

.method public registerForPreciseCallStateChangedExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2699
    return-void
.end method

.method public registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2501
    return-void
.end method

.method public registerForRadioOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 949
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 952
    return-void
.end method

.method public registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2186
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1716
    return-void
.end method

.method public registerForRedirectedNumberInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3979
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1040
    return-void
.end method

.method public registerForResendIncallMuteExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2781
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1030
    return-void
.end method

.method public registerForRingbackToneExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2766
    return-void
.end method

.method public registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2524
    const-string v0, "PHONE"

    const-string v1, "not implement registerForRoamingOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    return-void
.end method

.method public registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2516
    const-string v0, "PHONE"

    const-string v1, "not implement registerForRoamingOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1020
    return-void
.end method

.method public registerForServiceStateChangedExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2884
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1692
    return-void
.end method

.method public registerForSignalInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3903
    return-void
.end method

.method public registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2120
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1646
    const-string v0, "registerForSubscriptionInfoReady"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1647
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 755
    return-void
.end method

.method public registerForSuppServiceFailedExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2927
    return-void
.end method

.method public registerForSuppServiceNotificationExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2905
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1740
    return-void
.end method

.method public registerForT53AudioControlInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 4054
    return-void
.end method

.method public registerForUnblockPin2Done(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 978
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 680
    return-void
.end method

.method public registerForUnknownConnectionExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 2679
    return-void
.end method

.method public registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 643
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
    .line 3022
    return-void
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 501
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 502
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 503
    return-void
.end method

.method public requesetSetPhoneType(ILandroid/os/Message;)V
    .locals 2
    .parameter "phonetype"
    .parameter "response"

    .prologue
    .line 2182
    const-string v0, "PHONE"

    const-string v1, "requesetSetPhoneType is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    return-void
.end method

.method public requestCAVE(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "randu"
    .parameter "response"

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestCAVE(Ljava/lang/String;Landroid/os/Message;)V

    .line 2428
    return-void
.end method

.method public requestCW_UW_DREG(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->CWUWDeRegistration(Landroid/os/Message;)V

    .line 2400
    return-void
.end method

.method public requestCW_UW_REG(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->CWUWRegistration(Landroid/os/Message;)V

    .line 2397
    return-void
.end method

.method public requestEhrpdDomainNameChangeState(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2326
    const-string v0, "PHONE"

    const-string v1, "+requestEhrpdDomainNameChangeState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestEhrpdDomainNameChangeState(Landroid/os/Message;)V

    .line 2328
    const-string v0, "PHONE"

    const-string v1, "-requestEhrpdDomainNameChangeState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    return-void
.end method

.method public requestGetEhrpdDeviceCapability(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2338
    const-string v0, "PHONE"

    const-string v1, "+requestGetEhrpdDeviceCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetEhrpdDeviceCapability(Landroid/os/Message;)V

    .line 2340
    const-string v0, "PHONE"

    const-string v1, "-requestGetEhrpdDeviceCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    return-void
.end method

.method public requestGetEhrpdDisableCapability(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2332
    const-string v0, "PHONE"

    const-string v1, "+requestGetEhrpdDisableCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetEhrpdDisableCapability(Landroid/os/Message;)V

    .line 2334
    const-string v0, "PHONE"

    const-string v1, "-requestGetEhrpdDisableCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    return-void
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2560
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "ifc_name"
    .parameter "response"

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V

    .line 2495
    return-void
.end method

.method public requestGetSIMType()I
    .locals 1

    .prologue
    .line 4150
    const/4 v0, 0x0

    return v0
.end method

.method public requestGetSmartDataRoamingStatus(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetSmartDataRoamingStatus(Landroid/os/Message;)V

    .line 2116
    return-void
.end method

.method public requestGetVolteSipRegFailure(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetVolteSipRegFailure(Landroid/os/Message;)V

    .line 2491
    return-void
.end method

.method public requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .parameter "command"
    .parameter "modemId"
    .parameter "response"

    .prologue
    .line 4134
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4135
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO DM String - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    .line 4143
    :cond_0
    :goto_0
    return-void

    .line 4138
    :cond_1
    if-eqz p3, :cond_0

    .line 4139
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid input - command with String type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4140
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public requestHtcGetDDTMMode(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2084
    const-string v0, "PHONE"

    const-string v1, "OoO This requestHtcGetDDTMMode is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    return-void
.end method

.method public requestHtcSetDDTMMode(ILandroid/os/Message;)V
    .locals 2
    .parameter "selectDDTM"
    .parameter "response"

    .prologue
    .line 2080
    const-string v0, "PHONE"

    const-string v1, "OoO This requestHtcSetDDTMMode is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "nonce"
    .parameter "result"

    .prologue
    .line 1920
    const-string v0, "PHONE"

    const-string v1, "requestIsimAuthentication() is only supported on LTE devices"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    return-void
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"
    .parameter "result"

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2449
    return-void
.end method

.method public requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "randssd"
    .parameter "response"

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V

    .line 2434
    return-void
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "authbs"
    .parameter "response"

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V

    .line 2440
    return-void
.end method

.method public requestSetEhrpdDisableCapability(ILandroid/os/Message;)V
    .locals 3
    .parameter "ehrpdmode"
    .parameter "response"

    .prologue
    .line 2320
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+requestSetEhrpdDisableCapability:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetEhrpdDisableCapability(ILandroid/os/Message;)V

    .line 2322
    const-string v0, "PHONE"

    const-string v1, "-requestSetEhrpdDisableCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    return-void
.end method

.method public requestSetLBSNTFY(I)V
    .locals 2
    .parameter "lbsvalue"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetLBSNTFY(ILandroid/os/Message;)V

    .line 1400
    return-void
.end method

.method public requestSetPushMailDormantTime(IILandroid/os/Message;)V
    .locals 1
    .parameter "activate"
    .parameter "time"
    .parameter "response"

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    .line 2347
    return-void
.end method

.method public requestSetSmartDataRoaming(ILandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetSmartDataRoaming(ILandroid/os/Message;)V

    .line 2112
    return-void
.end method

.method public requestSetVoiceRoamingMode(IILandroid/os/Message;)V
    .locals 0
    .parameter "domestic"
    .parameter "international"
    .parameter "response"

    .prologue
    .line 2411
    return-void
.end method

.method public requestVPM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestVPM(Landroid/os/Message;)V

    .line 2443
    return-void
.end method

.method public requesthTcGetHybridMode(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2101
    const-string v0, "PHONE"

    const-string v1, "OoO This requesthTcGetHybridMode is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    return-void
.end method

.method public requesthTcGetSystemNAM(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2091
    const-string v0, "PHONE"

    const-string v1, "OoO This requesthTcGetSystemNAM is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    return-void
.end method

.method public requesthTcSetHybridMode(ILandroid/os/Message;)V
    .locals 2
    .parameter "hybridMode"
    .parameter "response"

    .prologue
    .line 2105
    const-string v0, "PHONE"

    const-string v1, "OoO This requesthTcSetHybridMode is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    return-void
.end method

.method public requesthTcSetSystemNAM(ILandroid/os/Message;)V
    .locals 2
    .parameter "numAssignModule"
    .parameter "response"

    .prologue
    .line 2095
    const-string v0, "PHONE"

    const-string v1, "OoO This requesthTcSetSystemNAM is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    return-void
.end method

.method public resetPdnForSettingsChange()V
    .locals 0

    .prologue
    .line 2241
    return-void
.end method

.method public responseDataRoamingGuardDialog(ZZ)V
    .locals 2
    .parameter "accept"
    .parameter "remember"

    .prologue
    .line 2171
    const-string v0, "PHONE"

    const-string v1, "responseDataRoamingGuardDialog is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    return-void
.end method

.method public restoreSavedNetworkSelection(Landroid/os/Message;)V
    .locals 14
    .parameter "response"

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 822
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v5

    .line 824
    .local v5, networkSelection:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkAct()Ljava/lang/String;

    move-result-object v4

    .line 828
    .local v4, networkAct:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 831
    .local v6, settingsNetworkMode:I
    const/4 v9, 0x7

    if-ne v6, v9, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 833
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 834
    .local v7, sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 835
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "network_selection_key"

    const-string v10, ""

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 836
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v9

    if-nez v9, :cond_0

    .line 837
    const-string v9, "PHONE"

    const-string v10, "failed to commit network selection preference !"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_0
    const-string v9, "PHONE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSavedNetworkSelection() shall be empty: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v5

    .line 845
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #sp:Landroid/content/SharedPreferences;
    :cond_1
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xda

    if-eq v9, v10, :cond_2

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x1b

    if-ne v9, v10, :cond_3

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 848
    :cond_2
    iget-boolean v9, p0, Lcom/android/internal/telephony/PhoneBase;->mFirstBoot:Z

    if-ne v9, v13, :cond_3

    .line 860
    iput-boolean v12, p0, Lcom/android/internal/telephony/PhoneBase;->mFirstBoot:Z

    .line 868
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isActEnabled()Z

    move-result v2

    .line 873
    .local v2, isActEnabled:Z
    iget-boolean v9, p0, Lcom/android/internal/telephony/PhoneBase;->m3GPreferred:Z

    if-eqz v9, :cond_4

    .line 874
    const/4 v2, 0x0

    .line 875
    iput-boolean v12, p0, Lcom/android/internal/telephony/PhoneBase;->m3GPreferred:Z

    .line 880
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 881
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8, p1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 927
    :cond_5
    :goto_0
    return-void

    .line 884
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkRejectStatus()Z

    move-result v9

    if-ne v9, v13, :cond_7

    const-string v9, "00"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 885
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.SELECT_INCORRECT_OPERATOR"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 886
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 896
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->needregisterForManualState()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v3, v8

    .line 901
    .local v3, msg:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_9

    .line 902
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, v5, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManualAppendAcT(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 911
    :goto_2
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/PhoneBase;->setNetworkSelectionRejectStatus(Z)V

    .line 915
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->needregisterForManualState()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 921
    iput-boolean v13, p0, Lcom/android/internal/telephony/PhoneBase;->mManualSelection:Z

    .line 923
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x70

    invoke-virtual {p0, v9, v10, v8}, Lcom/android/internal/telephony/PhoneBase;->registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 896
    .end local v3           #msg:Landroid/os/Message;
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x35

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    goto :goto_1

    .line 904
    .restart local v3       #msg:Landroid/os/Message;
    :cond_9
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2
.end method

.method public selectNetworkManuallyExt(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;I)V
    .locals 0
    .parameter "network"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3474
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 1626
    const-string v0, "sendBurstDtmf"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1627
    return-void
.end method

.method public sendDtmfExt(CI)V
    .locals 0
    .parameter "c"
    .parameter "phoneType"

    .prologue
    .line 3209
    return-void
.end method

.method public sendEmergencyPlusCallBackModeStatus(Z)V
    .locals 5
    .parameter "on"

    .prologue
    .line 4412
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HTC_EMERGENCY_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4413
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "EMERGENCY_AND_CALLBACK_STATUS"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4414
    const-string v2, "STORAGE_AREA_AVALIABLE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isStorageAreaAvaliable()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4415
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4417
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmergencyPlusCallBack : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isStorageAreaAvaliable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 4420
    .local v1, sst:Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isStorageAreaAvaliable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4421
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPower(Z)V

    .line 4423
    :cond_0
    return-void
.end method

.method public sendTamCmd([ILandroid/os/Message;)V
    .locals 1
    .parameter "config"
    .parameter "response"

    .prologue
    .line 4265
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendTamCmd([ILandroid/os/Message;)V

    .line 4266
    return-void
.end method

.method public sendUssdResponseExt(Ljava/lang/String;I)V
    .locals 0
    .parameter "ussdMessge"
    .parameter "phoneType"

    .prologue
    .line 2875
    return-void
.end method

.method public setActivePhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 4077
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setBandMode(ILandroid/os/Message;)V

    .line 1431
    return-void
.end method

.method public setBandModeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "bandMode"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3697
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
    .line 3382
    return-void
.end method

.method public setCallWaitingExt(ZLandroid/os/Message;I)V
    .locals 0
    .parameter "enable"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3432
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1315
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 1322
    return-void
.end method

.method public setCellBroadcastSmsConfigExt([ILandroid/os/Message;I)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3890
    return-void
.end method

.method public setDataEnabled(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 4169
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 4171
    const-string v0, "PHONE"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    const/4 v0, 0x0

    .line 4175
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataEnabled(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2301
    return-void
.end method

.method public setDataRoamingEnabledExt(ZI)V
    .locals 0
    .parameter "enable"
    .parameter "phoneType"

    .prologue
    .line 3722
    return-void
.end method

.method public setDataRoamingGuardResponse(ZZ)V
    .locals 2
    .parameter "accept"
    .parameter "remember"

    .prologue
    .line 2155
    const-string v0, "PHONE"

    const-string v1, "setDataRoamingGuardResponse is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    return-void
.end method

.method public setDataRoamingGuardSetting(I)V
    .locals 2
    .parameter "setting"

    .prologue
    .line 2151
    const-string v0, "PHONE"

    const-string v1, "setDataRoamingGuardSetting is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    return-void
.end method

.method public setDataSubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 4347
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4348
    return-void
.end method

.method public setDataSubscriptionExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "result"
    .parameter "phoneType"

    .prologue
    .line 4350
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4351
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1049
    return-void
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 2
    .parameter "roamingOption"

    .prologue
    .line 2461
    const-string v0, "PHONE"

    const-string v1, "not implement setGlobalDataRoamingOption"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    return-void
.end method

.method public setLine1NumberExt(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3294
    return-void
.end method

.method public setMuteExt(ZI)V
    .locals 0
    .parameter "muted"
    .parameter "phoneType"

    .prologue
    .line 3577
    return-void
.end method

.method public setNetworkSelectionModeAutomaticExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3461
    return-void
.end method

.method public setNetworkSelectionRejectStatus(Z)V
    .locals 4
    .parameter "reject"

    .prologue
    .line 2549
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2550
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2551
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "network_selection_reject_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2553
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2554
    const-string v2, "PHONE"

    const-string v3, "failed to commit network selection preference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    :cond_0
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1748
    const-string v0, "setOnEcbModeExitResponse"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1749
    return-void
.end method

.method public setOnPostDialCharacterExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3565
    return-void
.end method

.method public setOutgoingCallerIdDisplayExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3408
    return-void
.end method

.method public setPdnSettings(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "profileSlot"
    .parameter "settings"
    .parameter "response"

    .prologue
    .line 2238
    return-void
.end method

.method public setPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "profile"
    .parameter "response"

    .prologue
    .line 2240
    return-void
.end method

.method public setPdpLimit(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 1968
    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 4182
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setPolicyDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 6
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 1334
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1335
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1336
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1340
    const-string v3, "network_selection_act_key"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1342
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1343
    const-string v3, "PHONE"

    const-string v4, "failed to commit network selection preference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_0
    const/4 v0, 0x0

    .line 1351
    .local v0, autoSelectionMode:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x7

    if-eq p1, v3, :cond_1

    const/16 v3, 0xa

    if-ne p1, v3, :cond_3

    .line 1357
    :cond_1
    const-string v3, "network_selection_key"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1358
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1359
    const-string v3, "PHONE"

    const-string v4, "failed to commit network selection preference when user select Global mode"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_2
    const-string v3, "PHONE"

    const-string v4, "reset the status to automatic selection when mode is switched to Global mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==>getSavedNetworkSelection():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1371
    if-eqz v0, :cond_4

    .line 1372
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1375
    :cond_4
    return-void
.end method

.method public setPreferredNetworkTypeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "networkType"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3484
    return-void
.end method

.method public setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V
    .locals 1
    .parameter "isEnabled"
    .parameter "response"

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V

    .line 2513
    return-void
.end method

.method public setRX_Diversity(IILandroid/os/Message;)V
    .locals 1
    .parameter "rxInterface"
    .parameter "enabledFlag"
    .parameter "response"

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setRX_Diversity(IILandroid/os/Message;)V

    .line 2509
    return-void
.end method

.method public setRadioPowerExt(ZI)V
    .locals 0
    .parameter "power"
    .parameter "phoneType"

    .prologue
    .line 3243
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1409
    return-void
.end method

.method public setSmscAddressExt(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "address"
    .parameter "result"
    .parameter "phoneType"

    .prologue
    .line 3512
    return-void
.end method

.method public setSubscriptionMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "subscriptionMode"
    .parameter "response"

    .prologue
    .line 4353
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4354
    return-void
.end method

.method public setSubscriptionModeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "subscriptionMode"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 4356
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4357
    return-void
.end method

.method public setSystemLocale(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter "language"
    .parameter "country"
    .parameter "fromMcc"

    .prologue
    const/4 v11, 0x5

    .line 1144
    const-string v8, "persist.sys.language"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1145
    .local v6, l:Ljava/lang/String;
    const-string v8, "persist.sys.country"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1147
    .local v3, c:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1151
    if-nez p2, :cond_2

    .line 1152
    const-string p2, ""

    .line 1154
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 1156
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 1159
    :cond_4
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v7

    .line 1160
    .local v7, locales:[Ljava/lang/String;
    array-length v0, v7

    .line 1161
    .local v0, N:I
    const/4 v2, 0x0

    .line 1162
    .local v2, bestMatch:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_5

    .line 1164
    aget-object v8, v7, v5

    if-eqz v8, :cond_7

    aget-object v8, v7, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v11, :cond_7

    aget-object v8, v7, v5

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1166
    aget-object v8, v7, v5

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1167
    aget-object v2, v7, v5

    .line 1174
    :cond_5
    if-eqz v2, :cond_0

    .line 1175
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1176
    .local v1, am:Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 1177
    .local v4, config:Landroid/content/res/Configuration;
    new-instance v8, Ljava/util/Locale;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x5

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1179
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1180
    invoke-interface {v1, v4}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1182
    .end local v0           #N:I
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v2           #bestMatch:Ljava/lang/String;
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v5           #i:I
    .end local v7           #locales:[Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 1169
    .restart local v0       #N:I
    .restart local v2       #bestMatch:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v7       #locales:[Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_7

    .line 1170
    aget-object v2, v7, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "ttyMode"
    .parameter "onComplete"

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTTYMode(ILandroid/os/Message;)V

    .line 1413
    return-void
.end method

.method public setTTYModeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "ttyMode"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3846
    return-void
.end method

.method public setTempCLIR(I)V
    .locals 3
    .parameter "tempCLIR"

    .prologue
    .line 4155
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTempCLIR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    iput p1, p0, Lcom/android/internal/telephony/PhoneBase;->mTempCLIR:I

    .line 4157
    return-void
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 2379
    const-string v0, "PHONE"

    const-string v1, "getUSSDVerificationStatus() is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    return-void
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 2385
    const-string v0, "PHONE"

    const-string v1, "setUSSDVerificationStrings() is not implemented "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
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
    .line 4359
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4360
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
    .line 4362
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4363
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 0
    .parameter "f"

    .prologue
    .line 995
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    .line 996
    return-void
.end method

.method public setUnitTestModeExt(ZI)V
    .locals 0
    .parameter "f"
    .parameter "phoneType"

    .prologue
    .line 3680
    return-void
.end method

.method public setUserDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 4179
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setUserDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setVTSimulatedMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setVTSimulatedMode(Z)V

    .line 2130
    return-void
.end method

.method public setVoiceMailNumberExt(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3342
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 2035
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 2036
    .local v0, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 2037
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccRecords;->setVoiceMessageWaiting(II)V

    .line 2040
    :cond_0
    return-void
.end method

.method public startDtmfExt(CI)V
    .locals 0
    .parameter "c"
    .parameter "phoneType"

    .prologue
    .line 3219
    return-void
.end method

.method public stopDtmfExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3227
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
    .line 3036
    return-void
.end method

.method public uiccAkaAuthenticate([B[BLandroid/os/Message;)V
    .locals 2
    .parameter "rand"
    .parameter "autn"
    .parameter "response"

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->uiccAkaAuthenticate(I[B[BLandroid/os/Message;)V

    .line 2228
    return-void
.end method

.method public unregisterEcallAutoRetry(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 4275
    return-void
.end method

.method public unregisterForATDMmiComplete(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 974
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1677
    const-string v0, "unregisterForCallWaiting"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1678
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1641
    const-string v0, "unregisterForCdmaOtaStatusChange"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1642
    return-void
.end method

.method public unregisterForCollidedDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCollidedDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2259
    return-void
.end method

.method public unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 2167
    const-string v0, "PHONE"

    const-string v1, "unregisterForDataRoamingGuardChanged is not implemented for GSM network system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    return-void
.end method

.method public unregisterForDataServiceStateChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2311
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 748
    return-void
.end method

.method public unregisterForDisconnectExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2810
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1704
    return-void
.end method

.method public unregisterForDisplayInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3940
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1687
    const-string v0, "unregisterForEcmTimerReset"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1688
    return-void
.end method

.method public unregisterForFailEntitlementCheck(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mFailEntitlementCheckRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1880
    return-void
.end method

.method public unregisterForHTCECCStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForHTCECCStatus(Landroid/os/Handler;)V

    .line 2357
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 718
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOffExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2977
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 708
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOnExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2957
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 731
    return-void
.end method

.method public unregisterForIncomingRingExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2753
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 1728
    return-void
.end method

.method public unregisterForLineControlInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 4014
    return-void
.end method

.method public unregisterForMMLocationUpdateInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMMLocationUpdateInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 946
    return-void
.end method

.method public unregisterForManualState(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForManualState(Landroid/os/Handler;)V

    .line 2479
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 783
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 786
    return-void
.end method

.method public unregisterForMmiCompleteExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2853
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 772
    return-void
.end method

.method public unregisterForMmiInitiateExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2833
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 698
    return-void
.end method

.method public unregisterForNewRingingConnectionExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2731
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 2732
    return-void
.end method

.method public unregisterForNoDunDataPlan(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1866
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 1712
    return-void
.end method

.method public unregisterForNumberInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3964
    return-void
.end method

.method public unregisterForPhoneModeChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPhoneModeChanged(Landroid/os/Handler;)V

    .line 2196
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 664
    return-void
.end method

.method public unregisterForPreciseCallStateChangedExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2707
    return-void
.end method

.method public unregisterForRSSI_Report(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2504
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRSSI_Report(Landroid/os/Handler;)V

    .line 2505
    return-void
.end method

.method public unregisterForRadioOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 961
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 964
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 1720
    return-void
.end method

.method public unregisterForRedirectedNumberInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3989
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 1045
    return-void
.end method

.method public unregisterForResendIncallMuteExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2788
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1035
    return-void
.end method

.method public unregisterForRingbackToneExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2773
    return-void
.end method

.method public unregisterForRoamingOff(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 2528
    const-string v0, "PHONE"

    const-string v1, "not implement unregisterForRoamingOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    return-void
.end method

.method public unregisterForRoamingOn(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 2520
    const-string v0, "PHONE"

    const-string v1, "not implement unregisterForRoamingOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1025
    return-void
.end method

.method public unregisterForServiceStateChangedExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2892
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1696
    return-void
.end method

.method public unregisterForSignalInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3913
    return-void
.end method

.method public unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V

    .line 2124
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1651
    const-string v0, "unregisterForSubscriptionInfoReady"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1652
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 760
    return-void
.end method

.method public unregisterForSuppServiceFailedExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2937
    return-void
.end method

.method public unregisterForSuppServiceNotificationExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2915
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 1744
    return-void
.end method

.method public unregisterForT53AudioControlInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 4064
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 1736
    return-void
.end method

.method public unregisterForT53ClirInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 4039
    return-void
.end method

.method public unregisterForUnblockPin2Done(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 982
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 685
    return-void
.end method

.method public unregisterForUnknownConnectionExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 2685
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 2686
    return-void
.end method

.method public unregisterForVoiceCallConnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 647
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1753
    const-string v0, "unsetOnEcbModeExitResponse"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1754
    return-void
.end method

.method public updateMessageWaitingIndicator(ZI)V
    .locals 0
    .parameter "mwi"
    .parameter "count"

    .prologue
    .line 2236
    return-void
.end method

.method public updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z
    .locals 3
    .parameter "forData"
    .parameter "networkType"

    .prologue
    .line 4312
    sget-boolean v2, Lcom/android/internal/telephony/PhoneBase;->GLOBAL_DATA_NETWORK_TYPE:Z

    if-eqz v2, :cond_1

    .line 4313
    move-object v0, p2

    .line 4314
    .local v0, convertedNetworkType:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 4316
    const/4 v0, 0x0

    .line 4318
    :cond_0
    if-eqz p1, :cond_2

    .line 4319
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->dataNetworkType:Ljava/lang/Integer;

    .line 4325
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->dataNetworkType:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 4326
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->dataNetworkType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 4334
    .local v1, strNetworkType:Ljava/lang/String;
    :goto_1
    const-string v2, "gsm.network.type"

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4336
    .end local v0           #convertedNetworkType:Ljava/lang/Integer;
    .end local v1           #strNetworkType:Ljava/lang/String;
    :cond_1
    sget-boolean v2, Lcom/android/internal/telephony/PhoneBase;->GLOBAL_DATA_NETWORK_TYPE:Z

    return v2

    .line 4322
    .restart local v0       #convertedNetworkType:Ljava/lang/Integer;
    :cond_2
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->voiceNetworkType:Ljava/lang/Integer;

    goto :goto_0

    .line 4328
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->voiceNetworkType:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 4329
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->voiceNetworkType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #strNetworkType:Ljava/lang/String;
    goto :goto_1

    .line 4332
    .end local v1           #strNetworkType:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #strNetworkType:Ljava/lang/String;
    goto :goto_1
.end method

.method public updateServiceLocationExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3658
    return-void
.end method

.method public wifi2GRetry()V
    .locals 2

    .prologue
    .line 4290
    const-string v0, "PHONE"

    const-string v1, "base: wifi2GRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    return-void
.end method

.method public wifi2GRetryExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 4369
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->logCallError()V

    .line 4370
    return-void
.end method
