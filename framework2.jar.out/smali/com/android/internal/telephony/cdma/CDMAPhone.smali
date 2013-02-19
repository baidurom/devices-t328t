.class public Lcom/android/internal/telephony/cdma/CDMAPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CDMAPhone$2;
    }
.end annotation


# static fields
.field static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final INVALID_SYSTEM_SELECTION_CODE:I = -0x1

.field private static final IS683A_FEATURE_CODE:Ljava/lang/String; = "*228"

.field private static final IS683A_FEATURE_CODE_NUM_DIGITS:I = 0x4

.field private static final IS683A_SYS_SEL_CODE_NUM_DIGITS:I = 0x2

.field private static final IS683A_SYS_SEL_CODE_OFFSET:I = 0x4

.field private static final IS683_CONST_1900MHZ_A_BLOCK:I = 0x2

.field private static final IS683_CONST_1900MHZ_B_BLOCK:I = 0x3

.field private static final IS683_CONST_1900MHZ_C_BLOCK:I = 0x4

.field private static final IS683_CONST_1900MHZ_D_BLOCK:I = 0x5

.field private static final IS683_CONST_1900MHZ_E_BLOCK:I = 0x6

.field private static final IS683_CONST_1900MHZ_F_BLOCK:I = 0x7

.field private static final IS683_CONST_800MHZ_A_BAND:I = 0x0

.field private static final IS683_CONST_800MHZ_B_BAND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static OTARequested:Z = false

.field static final OTA_REQ:Ljava/lang/String; = "ota_required"

.field static PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = null

.field static final RESTART_ECM_TIMER:I = 0x0

.field static final VM_COUNT_CDMA:Ljava/lang/String; = "vm_count_key_cdma"

.field public static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field private static isKddiOtaspProvision:Z

.field public static final mDetectVMbyCarrierIdFromNV:Z

.field public static mDropEvent:Z

.field private static pOtaSpNumSchema:Ljava/util/regex/Pattern;


# instance fields
.field private DataRoamingGuardSettingMapping:[I

.field private countVoiceMessages:I

.field mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field private mCarrierId:I

.field private mCarrierOtaSpNumSchema:Ljava/lang/String;

.field mCcatService:Lcom/android/internal/telephony/cat/CatService;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private final mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

.field mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

.field private mEsn:Ljava/lang/String;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field private mHtcCdmaGpsOne:Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;

.field mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

.field mHtcCdmaProfileSwitch:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;

.field mHtcCdmaTty:Lcom/android/internal/telephony/cdma/HtcCdmaTty;

.field public mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

.field mHtcModemLink:Lcom/android/internal/telephony/cdma/HtcModemLink;

.field public mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

.field protected mImei:Ljava/lang/String;

.field protected mImeiSv:Ljava/lang/String;

.field private mImsSmsInterfaceManager:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

.field private mIsPhoneInEcmState:Z

.field private mMeid:Ljava/lang/String;

.field private final mNvLoadedRegistrants:Landroid/os/RegistrantList;

.field mPendingMmis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

.field mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

.field mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

.field mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

.field mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

.field mSimPhoneBookIntManager:Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 121
    sput-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->OTARequested:Z

    .line 203
    sput-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    .line 214
    const-string v2, "ro.cdma.home.operator.numeric"

    sput-object v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    .line 217
    sput-boolean v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->isKddiOtaspProvision:Z

    .line 426
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDetectVMbyCarrierIdFromNV:Z

    .line 2391
    const-string v0, "[,\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 7
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 232
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 118
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    .line 156
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 159
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierId:I

    .line 205
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone$1;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 3184
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->DataRoamingGuardSettingMapping:[I

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 234
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 235
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 236
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 238
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x52

    if-eq v0, v1, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x64

    if-eq v0, v1, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_7

    .line 249
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    if-ne v0, v6, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 256
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 258
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 259
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    invoke-virtual {v0, p0, v3, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 261
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    .line 262
    if-nez p4, :cond_2

    .line 263
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;

    .line 267
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCcatService:Lcom/android/internal/telephony/cat/CatService;

    .line 280
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->initSstIcc()V

    .line 291
    :goto_1
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v0, :cond_8

    .line 292
    const-string v0, "CDMA"

    const-string v1, "New MMDataConnectionTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataConnectionTracker;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 299
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setInternalDataEnabled(Z)Z

    .line 302
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    .line 306
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 309
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaGpsOne:Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;

    .line 314
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 319
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    .line 329
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6f

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAcdbTableChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 331
    return-void

    .line 276
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    goto :goto_0

    .line 285
    :cond_7
    new-instance v0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsSmsInterfaceManager:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    goto :goto_1

    .line 296
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    goto :goto_2

    .line 3184
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x10t
        0x0t 0x0t 0x0t 0x20t
    .end array-data
.end method

.method private static checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z
    .locals 8
    .parameter "sysSelCodeInt"
    .parameter "sch"

    .prologue
    .line 2365
    const/4 v2, 0x0

    .line 2368
    .local v2, isOtaSpNum:Z
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2369
    .local v5, selRc:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 2370
    add-int/lit8 v6, v1, 0x2

    aget-object v6, p1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v1, 0x3

    aget-object v6, p1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2371
    add-int/lit8 v6, v1, 0x2

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2372
    .local v4, selMin:I
    add-int/lit8 v6, v1, 0x3

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2375
    .local v3, selMax:I
    if-lt p0, v4, :cond_1

    if-gt p0, v3, :cond_1

    .line 2376
    const/4 v2, 0x1

    .line 2386
    .end local v1           #i:I
    .end local v3           #selMax:I
    .end local v4           #selMin:I
    .end local v5           #selRc:I
    :cond_0
    :goto_1
    return v2

    .line 2369
    .restart local v1       #i:I
    .restart local v5       #selRc:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2381
    .end local v1           #i:I
    .end local v5           #selRc:I
    :catch_0
    move-exception v0

    .line 2384
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v6, "CDMA"

    const-string v7, "checkOtaSpNumBasedOnSysSelCode, error"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private clearMessageHandler()V
    .locals 1

    .prologue
    .line 3298
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeMessages(I)V

    .line 3299
    return-void
.end method

.method private dealMccVMByCarrierId(I)V
    .locals 5
    .parameter "carrierId"

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 435
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "vm_number_key_cdma"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, voiceMailNum:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 438
    const-string v3, "CDMA"

    const-string v4, "voiceMailNum is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getVoiceMailNumberByCarrierId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 442
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 444
    const-string v3, "vm_number_key_cdma"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 445
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 448
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private static extractSelCodeFromOtaSpNum(Ljava/lang/String;)I
    .locals 6
    .parameter "dialStr"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2341
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2342
    .local v0, dialStrLen:I
    const/4 v1, -0x1

    .line 2344
    .local v1, sysSelCodeInt:I
    const-string v2, "*228"

    invoke-virtual {p0, v3, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lt v0, v5, :cond_0

    .line 2350
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2354
    :cond_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractSelCodeFromOtaSpNum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    return v1
.end method

.method private handleEnterEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1743
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-nez v0, :cond_0

    .line 1748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 1750
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    .line 1751
    const-string v0, "ril.cdma.inecmmode"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1763
    :cond_0
    return-void
.end method

.method private handleExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 1766
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1768
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleExitEmergencyCallbackMode,ar.exception , mIsPhoneInEcmState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1774
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 1775
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1778
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 1779
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v1, :cond_1

    .line 1780
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 1781
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    .line 1787
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyPlusCallBackModeStatus(Z)V

    .line 1788
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v1, :cond_2

    .line 1791
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setInternalDataEnabled(Z)Z

    .line 1796
    :cond_2
    return-void
.end method

.method private htcVZWGetCdmaEriCallGuard()I
    .locals 3

    .prologue
    .line 3244
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    if-eqz v0, :cond_0

    .line 3245
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call htcGetCdmaEriCallGuard function."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/EriManager;->htcGetCdmaEriCallGuard()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->htcGetCdmaEriCallGuard()I

    move-result v0

    .line 3248
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isCarrierOtaSpNum(Ljava/lang/String;)Z
    .locals 12
    .parameter "dialStr"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 2412
    const/4 v2, 0x0

    .line 2413
    .local v2, isOtaSpNum:Z
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v6

    .line 2414
    .local v6, sysSelCodeInt:I
    if-ne v6, v11, :cond_0

    move v3, v2

    .line 2457
    .end local v2           #isOtaSpNum:Z
    .local v3, isOtaSpNum:I
    :goto_0
    return v3

    .line 2418
    .end local v3           #isOtaSpNum:I
    .restart local v2       #isOtaSpNum:Z
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2419
    sget-object v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2421
    .local v4, m:Ljava/util/regex/Matcher;
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCarrierOtaSpNum,schema"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2425
    sget-object v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 2427
    .local v5, sch:[Ljava/lang/String;
    aget-object v7, v5, v10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v5, v10

    const-string v8, "SELC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2428
    if-eq v6, v11, :cond_1

    .line 2429
    invoke-static {v6, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z

    move-result v2

    .end local v4           #m:Ljava/util/regex/Matcher;
    .end local v5           #sch:[Ljava/lang/String;
    :goto_1
    move v3, v2

    .line 2457
    .restart local v3       #isOtaSpNum:I
    goto :goto_0

    .line 2432
    .end local v3           #isOtaSpNum:I
    .restart local v4       #m:Ljava/util/regex/Matcher;
    .restart local v5       #sch:[Ljava/lang/String;
    :cond_1
    const-string v7, "CDMA"

    const-string v8, "isCarrierOtaSpNum,sysSelCodeInt is invalid"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2435
    :cond_2
    aget-object v7, v5, v10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, v5, v10

    const-string v8, "FC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2436
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2437
    .local v1, fcLen:I
    const/4 v7, 0x2

    aget-object v0, v5, v7

    .line 2438
    .local v0, fc:Ljava/lang/String;
    invoke-virtual {p1, v10, v0, v10, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2439
    const/4 v2, 0x1

    goto :goto_1

    .line 2441
    :cond_3
    const-string v7, "CDMA"

    const-string v8, "isCarrierOtaSpNum,not otasp number"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2445
    .end local v0           #fc:Ljava/lang/String;
    .end local v1           #fcLen:I
    :cond_4
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCarrierOtaSpNum,ota schema not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2450
    .end local v5           #sch:[Ljava/lang/String;
    :cond_5
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCarrierOtaSpNum,ota schema pattern not right"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2455
    .end local v4           #m:Ljava/util/regex/Matcher;
    :cond_6
    const-string v7, "CDMA"

    const-string v8, "isCarrierOtaSpNum,ota schema pattern empty"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static isIs683OtaSpDialStr(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 2306
    const/4 v1, 0x0

    .line 2307
    .local v1, isOtaspDialString:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2309
    .local v0, dialStrLen:I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 2310
    const-string v3, "*228"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2311
    const/4 v1, 0x1

    .line 2331
    :cond_0
    :goto_0
    const-string v3, "*228"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2332
    const/4 v1, 0x1

    .line 2335
    :cond_1
    return v1

    .line 2314
    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v2

    .line 2315
    .local v2, sysSelCodeInt:I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2324
    :pswitch_0
    const/4 v1, 0x1

    .line 2325
    goto :goto_0

    .line 2315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setIsoCountryProperty(Ljava/lang/String;)V
    .locals 5
    .parameter "operatorNumeric"

    .prologue
    .line 2533
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2534
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    :goto_0
    return-void

    .line 2536
    :cond_0
    const-string v1, ""

    .line 2538
    .local v1, iso:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2546
    :goto_1
    const-string v2, "gsm.sim.operator.iso-country"

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2540
    :catch_0
    move-exception v0

    .line 2541
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryCodeForMcc error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2542
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 2543
    .local v0, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryCodeForMcc error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setupIccByCarrierId(I)V
    .locals 6
    .parameter "carrierId"

    .prologue
    .line 452
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getMccMncByCarrierId(I)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, operatorNumeric:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 456
    const-string v3, "ro.cdma.home.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    :cond_0
    const-string v3, "gsm.sim.operator.numeric"

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 466
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 472
    const/4 v1, 0x0

    .line 473
    .local v1, operatorAlpha:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 475
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 476
    .local v0, ic:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->setupIccOperatorNumericFromNV(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    .line 482
    .end local v0           #ic:Lcom/android/internal/telephony/IccCardProxy;
    :cond_1
    if-nez v1, :cond_2

    .line 483
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getOperatorByCarrierId(I)Ljava/lang/String;

    move-result-object v1

    .line 486
    :cond_2
    if-nez v1, :cond_3

    .line 489
    const-string v3, "ro.cdma.home.operator.alpha"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    :cond_3
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operatorAlpha = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v3, "gsm.sim.operator.alpha"

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 2521
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeVoiceMailNumber, number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2523
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2524
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_number_key_cdma"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2525
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2526
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->acceptCall()V

    .line 942
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 2249
    const-string v0, "CDMA"

    const-string v1, "[CDMAPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2251
    return-void
.end method

.method public answerAndEndActive(Ljava/lang/String;)V
    .locals 1
    .parameter "dialString"

    .prologue
    .line 3572
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->answerAndEndActive(Ljava/lang/String;)V

    .line 3573
    return-void
.end method

.method public canConference()Z
    .locals 2

    .prologue
    .line 1078
    const-string v0, "CDMA"

    const-string v1, "canConference: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 2

    .prologue
    .line 765
    const-string v0, "CDMA"

    const-string v1, "canTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method public changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCBFacility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 2685
    return-void
.end method

.method public checkFDNCapability()Z
    .locals 1

    .prologue
    .line 3388
    const/4 v0, 0x0

    return v0
.end method

.method public checkTestIcc()Z
    .locals 1

    .prologue
    .line 2724
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    .line 817
    return-void
.end method

.method public clearVoiceMessageWaiting()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2764
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2767
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/IccRecords;->setVoiceMessageWaiting(II)V

    .line 2787
    :cond_0
    :goto_0
    return-void

    .line 2773
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 2774
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_0

    .line 2775
    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 2776
    .local v1, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-nez v1, :cond_2

    .line 2777
    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 2779
    :cond_2
    if-eqz v1, :cond_0

    .line 2780
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/IccRecords;->setVoiceMessageWaiting(II)V

    goto :goto_0
.end method

.method public conference()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 795
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    .line 796
    .local v0, fgCall:Lcom/android/internal/telephony/cdma/CdmaCall;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 797
    const-string v1, "CDMA"

    const-string v2, "conference: may not be supported in CDMA"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 799
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->switchHoldingAndActive()V

    .line 805
    :goto_0
    return-void

    .line 804
    :cond_0
    const-string v1, "CDMA"

    const-string v2, "conference: not possible in CDMA"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public confirmFirstDataRoaming()V
    .locals 2

    .prologue
    .line 3492
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 3497
    :goto_0
    return-void

    .line 3496
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setRoamingConfirmed(Z)V

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 885
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 890
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Sending UUS information NOT supported in CDMA!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 2639
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->disableLocationUpdates()V

    .line 1426
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 497
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 498
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 499
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNVReady(Landroid/os/Handler;)V

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dispose()V

    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->dispose()V

    .line 528
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_4

    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 534
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dispose()V

    .line 536
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x40

    if-ne v0, v2, :cond_5

    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForMIPFailCause(Landroid/os/Handler;)V

    .line 541
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz v0, :cond_6

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 545
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_7

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 550
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_8

    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 552
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_9

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->dispose()V

    .line 555
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    if-eqz v0, :cond_a

    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->dispose()V

    .line 560
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    if-eqz v0, :cond_b

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->dispose()V

    .line 567
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsSmsInterfaceManager:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    if-eqz v0, :cond_c

    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsSmsInterfaceManager:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->dispose()V

    .line 574
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->dispose()V

    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCcatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_d

    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCcatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 587
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->dispose()V

    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaGpsOne:Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->dispose()V

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcModemLink:Lcom/android/internal/telephony/cdma/HtcModemLink;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcModemLink;->dispose()V

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaProfileSwitch:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dispose()V

    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaTty:Lcom/android/internal/telephony/cdma/HtcCdmaTty;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->dispose()V

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    if-eqz v0, :cond_e

    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->dispose()V

    .line 597
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->clearMessageHandler()V

    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 599
    const-string v0, "CDMA"

    const-string v2, "UNEXPECTED; mWakeLock is held when finalizing."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 604
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;

    if-eqz v0, :cond_10

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;->dispose()V

    .line 607
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    if-eqz v0, :cond_11

    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dispose()V

    .line 611
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    if-eqz v0, :cond_12

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->dispose()V

    .line 621
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAcdbTableChange(Landroid/os/Handler;)V

    .line 629
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportKddiOtasp()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForUimOtaNotify(Landroid/os/Handler;)V

    .line 636
    :cond_13
    monitor-exit v1

    .line 637
    return-void

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredVoicePrivacy(ZLandroid/os/Message;)V

    .line 809
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->enableLocationUpdates()V

    .line 1422
    return-void
.end method

.method public enableMpdp(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 3377
    return-void
.end method

.method public enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3587
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public exitEmergencyCallbackMode()V
    .locals 2

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1738
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 1739
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2

    .prologue
    .line 1583
    const-string v0, "CDMA"

    const-string v1, "explicitCallTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 679
    const-string v0, "CDMA"

    const-string v1, "CDMAPhone finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    const-string v0, "CDMA"

    const-string v1, "UNEXPECTED; mWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 684
    :cond_0
    return-void
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3382
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1413
    const-string v0, "CDMA"

    const-string v1, "getAvailableNetworks: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getBandCapability()I
    .locals 1

    .prologue
    .line 2825
    const/4 v0, 0x0

    return v0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3343
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallBarringOption(ILandroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCBReason"
    .parameter "onComplete"

    .prologue
    .line 2671
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    .prologue
    .line 1578
    const-string v0, "CDMA"

    const-string v1, "getCallForwardingIndicator: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 3
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1556
    const-string v0, "CDMA"

    const-string v1, "getCallForwardingOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "getCallForwardingOption: not possible in CDMA"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1559
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1561
    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    return-object v0
.end method

.method public getCallType()Lcom/android/internal/telephony/Phone$CallType;
    .locals 1

    .prologue
    .line 2628
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1020
    return-void
.end method

.method public getCdmaEriFileVersion()I
    .locals 1

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->getEriFileVersion()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 2483
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 2493
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2501
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v1

    .line 2502
    .local v1, roamInd:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v0

    .line 2503
    .local v0, defRoamInd:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriText(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2259
    const-string v0, "CDMA"

    const-string v1, "[CDMAPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2261
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1089
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 823
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xaa

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x49

    if-ne v1, v2, :cond_2

    .line 828
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    .line 872
    :cond_1
    :goto_0
    return-object v0

    .line 831
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 833
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_1

    .line 838
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcModemLink:Lcom/android/internal/telephony/cdma/HtcModemLink;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcModemLink;->isModemLinkOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 839
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcModemLink:Lcom/android/internal/telephony/cdma/HtcModemLink;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcModemLink;->getDataActivityState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 840
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 843
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 846
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v1, :cond_5

    .line 847
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 851
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 853
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 854
    goto :goto_0

    .line 857
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 858
    goto :goto_0

    .line 861
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 862
    goto :goto_0

    .line 865
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDataCallForwardingStatus()Z
    .locals 1

    .prologue
    .line 2657
    const/4 v0, 0x0

    return v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1430
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 3
    .parameter "apnType"

    .prologue
    .line 1307
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xaa

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x49

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    .line 1313
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    .line 1365
    :goto_0
    return-object v0

    .line 1316
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 1318
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-nez v1, :cond_2

    .line 1322
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 1364
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1323
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1326
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_1

    .line 1328
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v1, :cond_4

    .line 1329
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_1

    .line 1331
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1333
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_1

    .line 1335
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1338
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 1339
    goto :goto_1

    .line 1344
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcIsRingingButHaventReported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1345
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_1

    .line 1348
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1350
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_1

    .line 1352
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 1354
    goto :goto_1

    .line 1359
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_1

    .line 1335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDataConnectionStateTime(Ljava/lang/String;)J
    .locals 2
    .parameter "apnType"

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v0, :cond_1

    .line 3221
    :cond_0
    const-wide/16 v0, 0x0

    .line 3224
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataConnectionStateTime(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1435
    const/4 v0, 0x0

    .line 1437
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 738
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDetailIccStatus()[I
    .locals 1

    .prologue
    .line 2696
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2699
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->getDetailIccStatus()[I

    move-result-object v0

    .line 2704
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getDetailIccStatus()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getDetailIccStatusExt(I)[I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDetailIccStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "^0*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1057
    :cond_0
    const-string v1, "CDMA"

    const-string v2, "getDeviceId(): MEID is not initialized use ESN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    .line 1060
    :cond_1
    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1064
    const-string v0, "CDMA"

    const-string v1, "getDeviceSvn(): return 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v0, "0"

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredVoicePrivacy(Landroid/os/Message;)V

    .line 813
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    return-object v0
.end method

.method public getFdnEnabledStatus()Z
    .locals 3

    .prologue
    .line 3347
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_MECHA_CONFIG:Z

    if-nez v2, :cond_0

    .line 3349
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getFdnEnabledStatus()Z

    move-result v2

    .line 3364
    :goto_0
    return v2

    .line 3355
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 3356
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_1

    .line 3357
    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 3358
    .local v1, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_1

    .line 3359
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getFdnEnabledStatus()Z

    move-result v2

    goto :goto_0

    .line 3364
    .end local v1           #iccRecord:Lcom/android/internal/telephony/IccRecords;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-nez v0, :cond_0

    .line 1099
    const/4 v0, 0x0

    .line 1101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    goto :goto_0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 2

    .prologue
    .line 3562
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 3564
    const-string v0, "CDMA"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    const/4 v0, -0x1

    .line 3567
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getGlobalDataRoamingOption()I

    move-result v0

    goto :goto_0
.end method

.method public getGprsState()I
    .locals 1

    .prologue
    .line 2792
    const/4 v0, 0x0

    return v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 1186
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1189
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    .line 1197
    :goto_0
    return-object v0

    .line 1193
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    goto :goto_0

    .line 1197
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 2203
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2205
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 2209
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 3
    .parameter "appType"

    .prologue
    .line 2215
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2216
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 2217
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_0

    .line 2218
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccCardProxy;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 2219
    .local v1, iccHandler:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v1, :cond_0

    .line 2226
    .end local v0           #iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    .end local v1           #iccHandler:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-object v1

    .line 2223
    .restart local v0       #iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2226
    .end local v0           #iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 2

    .prologue
    .line 2150
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2153
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2155
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;

    .line 2167
    :goto_0
    return-object v1

    .line 2158
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    goto :goto_0

    .line 2163
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 2164
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_3

    .line 2165
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    goto :goto_0

    .line 2167
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .prologue
    .line 1538
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v1

    .line 1549
    :goto_0
    return v1

    .line 1544
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 1545
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_1

    .line 1546
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->getRecordsLoaded()Z

    move-result v1

    goto :goto_0

    .line 1549
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1204
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1205
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVZWIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 1216
    :goto_0
    return-object v1

    .line 1210
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1211
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    goto :goto_0

    .line 1213
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsSmsInterfaceManager:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    if-eqz v0, :cond_0

    .line 2138
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsSmsInterfaceManager:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    .line 2142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1073
    const-string v0, "CDMA"

    const-string v1, "IMEI is not available in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKddiUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3612
    const-string v0, ""

    .line 3613
    .local v0, ret:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportKddiOtasp()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3614
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v1, :cond_0

    .line 3615
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v1, Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mKddiUserAgent:Ljava/lang/String;

    .line 3626
    :goto_0
    return-object v0

    .line 3617
    :cond_0
    const-string v1, "CDMA"

    const-string v2, "kddi mIccRecords is null or not RuimRecords"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3620
    :cond_1
    const-string v1, "CDMA"

    const-string v2, "not support kddi otasp"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1587
    const-string v0, "CDMA"

    const-string v1, "getLine1AlphaTag: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 5

    .prologue
    .line 961
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    if-eqz v2, :cond_1

    .line 964
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getHtcDeviceSlotType()[Ljava/lang/String;

    move-result-object v1

    .line 965
    .local v1, slotType:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "RUIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 971
    const/4 v0, 0x0

    .line 972
    .local v0, line1:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-eqz v2, :cond_0

    .line 974
    const-string v2, "CDMA"

    const-string v3, "line1 is null always return mSST.getMdnNumber()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v0

    .line 977
    :cond_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=>getLine1Number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    .end local v0           #line1:Ljava/lang/String;
    .end local v1           #slotType:[Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1033
    const-string v1, "00000000000000"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1034
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEID value--> 000000(6 digitals) + ESN(8 digitals) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string v1, "gsm.cdma.meid.workaround"

    const-string v2, "empty"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, strWorkaround:Ljava/lang/String;
    const-string v1, "CDMA"

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

    .line 1039
    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    .line 1050
    .end local v0           #strWorkaround:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessageWaitingIndicatorEnhanced()I
    .locals 1

    .prologue
    .line 2644
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1295
    if-eqz p1, :cond_0

    .line 1296
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1298
    .local v0, ce:Lcom/android/internal/telephony/CommandException;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1299
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1301
    .end local v0           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public getOperatorInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2735
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getOperatorInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 1573
    const-string v0, "CDMA"

    const-string v1, "getOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    return-void
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPRIVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPRIVersions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3500
    const/4 v0, 0x0

    .line 3516
    .local v0, priVers:[Ljava/lang/String;
    return-object v0
.end method

.method public getPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

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
    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    const-string v0, "CDMA"

    return-object v0
.end method

.method public getPhoneServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 3596
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x2

    return v0
.end method

.method public getPreferredOnly()I
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPreferredOnly()I

    move-result v0

    return v0
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2744
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x49

    if-ne v1, v2, :cond_1

    .line 2747
    :cond_0
    const/16 v1, 0x6e

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2750
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 2759
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 2754
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getRingingCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-nez v0, :cond_0

    .line 778
    const/4 v0, 0x0

    .line 780
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    goto :goto_0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->combineVoiceDataServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "account"

    .prologue
    .line 3407
    if-eqz p1, :cond_4

    .line 3408
    const-string v4, "CDMA-ICC"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3409
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3410
    const-string v3, ""

    .line 3411
    .local v3, imsi:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v1

    .line 3412
    .local v1, iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v1, :cond_1

    .line 3414
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x61

    if-ne v4, v5, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x49

    if-eq v4, v5, :cond_2

    .line 3416
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 3420
    .local v0, appType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    .line 3421
    .local v2, iccRec:Lcom/android/internal/telephony/IccRecords;
    if-eqz v2, :cond_1

    .line 3422
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    .line 3425
    .end local v0           #appType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v2           #iccRec:Lcom/android/internal/telephony/IccRecords;
    :cond_1
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IccCard imsi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    .end local v1           #iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    .end local v3           #imsi:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 3418
    .restart local v1       #iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    .restart local v3       #imsi:Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #appType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_0

    .line 3429
    .end local v0           #appType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v1           #iccCardProxy:Lcom/android/internal/telephony/IccCardProxy;
    .end local v3           #imsi:Ljava/lang/String;
    :cond_3
    const-string v4, "CDMA"

    const-string v5, "Not icc card proxy case"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 3433
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 1
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 2832
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2835
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2836
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->getSubsidyLock(ILandroid/os/Message;)V

    .line 2844
    :cond_0
    :goto_0
    return-void

    .line 2841
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccCard;->getSubsidyLock(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public getVZWIccSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1224
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 1225
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_0

    .line 1226
    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 1227
    .local v1, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_0

    .line 1228
    iget-object v2, v1, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 1231
    .end local v1           #iccRecord:Lcom/android/internal/telephony/IccRecords;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVoiceCallForwardingStatus()Z
    .locals 1

    .prologue
    .line 2651
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1521
    const-string v0, ""

    .line 1525
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1526
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1530
    .end local v0           #ret:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1466
    const/4 v0, 0x0

    .line 1467
    .local v0, number:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getHtcDeviceSlotType()[Ljava/lang/String;

    move-result-object v2

    .line 1468
    .local v2, slotType:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, "RUIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1470
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 1471
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1473
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSIMRecords.getVoiceMailNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1496
    .end local v0           #number:Ljava/lang/String;
    .local v1, number:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1477
    .end local v1           #number:Ljava/lang/String;
    .restart local v0       #number:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1478
    .local v3, sp:Landroid/content/SharedPreferences;
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_1

    .line 1488
    const-string v4, "vm_number_key_cdma"

    const-string v5, "*86"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1495
    :goto_1
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SharedPreferences, getVoiceMailNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1496
    .end local v0           #number:Ljava/lang/String;
    .restart local v1       #number:Ljava/lang/String;
    goto :goto_0

    .line 1493
    .end local v1           #number:Ljava/lang/String;
    .restart local v0       #number:Ljava/lang/String;
    :cond_1
    const-string v4, "vm_number_key_cdma"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getVoiceMessageCount()I
    .locals 4

    .prologue
    .line 1510
    iget v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->countVoiceMessages:I

    .line 1512
    .local v1, voicemailCount:I
    if-nez v1, :cond_0

    .line 1513
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1514
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "vm_count_key_cdma"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1516
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method public getVoiceServiceState()Landroid/telephony/ServiceState;
    .locals 4

    .prologue
    .line 689
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-eqz v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v1

    .line 692
    .local v1, roamInd:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v0

    .line 694
    .local v0, defRoamInd:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 695
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 696
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 700
    .end local v0           #defRoamInd:I
    .end local v1           #roamInd:I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"

    .prologue
    .line 917
    const-string v0, "CDMA"

    const-string v1, "method handleInCallMmiCommands is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 1838
    sget-boolean v18, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v18, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v18

    if-eqz v18, :cond_2

    :cond_0
    sget-boolean v18, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v18, :cond_2

    .line 1839
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " CDMAPhone drop event "

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

    .line 2121
    :cond_1
    :goto_0
    return-void

    .line 1846
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 2118
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1848
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto :goto_0

    .line 1855
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1857
    .local v5, ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 1861
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Baseband version: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const-string v19, "gsm.version.baseband"

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1867
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1869
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 1872
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/String;

    .line 1873
    .local v16, respId:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v16, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    .line 1874
    const/16 v18, 0x1

    aget-object v18, v16, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImeiSv:Ljava/lang/String;

    .line 1875
    const/16 v18, 0x2

    aget-object v18, v16, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    .line 1876
    const/16 v18, 0x3

    aget-object v18, v16, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    .line 1879
    const-string v18, "CDMAPhone"

    const-string v19, "EVENT_GET_DEVICE_IDENTITY_DONE"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const-string v18, "gsm.cdma.meid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1888
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v16           #respId:[Ljava/lang/String;
    :sswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleEnterEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1893
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1898
    :sswitch_5
    const-string v18, "CDMA"

    const-string v19, "Event EVENT_RUIM_RECORDS_LOADED Received"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider()Z

    goto/16 :goto_0

    .line 1904
    :sswitch_6
    const-string v18, "CDMA"

    const-string v19, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1909
    :sswitch_7
    const-string v18, "CDMA"

    const-string v19, "Event EVENT_RADIO_ON Received"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_0

    .line 1918
    :sswitch_8
    const-string v18, "CDMA"

    const-string v19, "Event EVENT_SSN Received"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1923
    :sswitch_9
    const-string v18, "CDMA"

    const-string v19, "Event EVENT_REGISTERED_TO_NETWORK Received"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1928
    :sswitch_a
    const-string v18, "CDMA"

    const-string v19, "Event EVENT_NV_READY Received"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1931
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    .line 1933
    sget-boolean v18, Lcom/android/internal/telephony/cdma/CDMAPhone;->OTARequested:Z

    if-nez v18, :cond_4

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0xa8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1935
    :cond_3
    const/16 v18, 0x65

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    .line 1936
    .local v11, msgOTA:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/CommandsInterface;->requestOTAProvisionStatus(Landroid/os/Message;)V

    .line 1940
    .end local v11           #msgOTA:Landroid/os/Message;
    :cond_4
    const-string v18, "C826401F00"

    const/16 v19, 0x66

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 1941
    sget-boolean v18, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDetectVMbyCarrierIdFromNV:Z

    if-nez v18, :cond_1

    .line 1942
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dealMccVMByCarrierId(I)V

    goto/16 :goto_0

    .line 1949
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1950
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 1952
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1953
    .local v8, command:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0xa

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x8

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 1954
    .local v7, carrierId:I
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierId:I

    .line 1955
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "carrierId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    sget-boolean v18, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDetectVMbyCarrierIdFromNV:Z

    if-eqz v18, :cond_5

    .line 1957
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dealMccVMByCarrierId(I)V

    .line 1958
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setupIccByCarrierId(I)V

    .line 1961
    :cond_5
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0xa8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1962
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setupIccByCarrierId(I)V

    .line 1964
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaProfileSwitch:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaProfileSwitch:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->setupCarrierId(I)V

    goto/16 :goto_0

    .line 1973
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v7           #carrierId:I
    .end local v8           #command:Ljava/lang/String;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1974
    .restart local v5       #ar:Landroid/os/AsyncResult;
    const-class v18, Lcom/android/internal/telephony/IccException;

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1976
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1978
    :cond_7
    iget-object v12, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Message;

    .line 1979
    .local v12, onComplete:Landroid/os/Message;
    if-eqz v12, :cond_1

    .line 1980
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1981
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1987
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v12           #onComplete:Landroid/os/Message;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1988
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v12, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Message;

    .line 1989
    .restart local v12       #onComplete:Landroid/os/Message;
    if-eqz v12, :cond_1

    .line 1990
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 1991
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1995
    :goto_1
    if-eqz v12, :cond_1

    .line 1996
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1993
    :cond_8
    const/16 v18, 0x0

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1

    .line 2002
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v12           #onComplete:Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2003
    .restart local v5       #ar:Landroid/os/AsyncResult;
    const-string v18, "CDMA"

    const-string v19, "ota_status"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 2005
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    check-cast v18, [I

    const/16 v19, 0x0

    aget v14, v18, v19

    .line 2006
    .local v14, otaStatus:I
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request ota status: ar.result[0]:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/internal/telephony/cdma/CDMAPhone;->OTARequested:Z

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "ota_required"

    const/16 v20, -0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 2009
    .local v15, ota_req:I
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(settings) ota_req:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v14, v0, :cond_9

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "ota_required"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 2027
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "ota_required"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 2036
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v14           #otaStatus:I
    .end local v15           #ota_req:I
    :sswitch_f
    const-string v4, "update_nel_table=on"

    .line 2037
    .local v4, acdbTableChangedParameter:Ljava/lang/String;
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EVENT_ACDB_TABLE_CHANGED: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "audio"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 2040
    .local v6, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v6, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2046
    .end local v4           #acdbTableChangedParameter:Ljava/lang/String;
    .end local v6           #audioManager:Landroid/media/AudioManager;
    :sswitch_10
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x61

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x49

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 2049
    :cond_a
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2050
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v12, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Message;

    .line 2051
    .restart local v12       #onComplete:Landroid/os/Message;
    if-eqz v12, :cond_1

    .line 2052
    const/16 v17, 0x0

    .line 2054
    .local v17, resultString:[Ljava/lang/String;
    :try_start_0
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/RegStateResponse;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/RegStateResponse;->getRecord(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    .line 2056
    :goto_2
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2057
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2067
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v12           #onComplete:Landroid/os/Message;
    .end local v17           #resultString:[Ljava/lang/String;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2068
    .restart local v5       #ar:Landroid/os/AsyncResult;
    if-eqz v5, :cond_d

    .line 2069
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 2070
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    check-cast v18, [I

    const/16 v19, 0x0

    aget v13, v18, v19

    .line 2074
    .local v13, otaReq:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_b

    .line 2076
    :try_start_1
    const-string v18, "CDMA"

    const-string v19, "launch otasp Activity"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    new-instance v10, Landroid/content/Intent;

    const-string v18, "com.htc.android.uim.otasp.start"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2078
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "android.permission.MODIFY_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2081
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/internal/telephony/cdma/CDMAPhone;->isKddiOtaspProvision:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2084
    .end local v10           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 2085
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2090
    .end local v9           #e:Ljava/lang/Exception;
    :cond_b
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/internal/telephony/cdma/CDMAPhone;->isKddiOtaspProvision:Z

    goto/16 :goto_0

    .line 2093
    .end local v13           #otaReq:I
    :cond_c
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "receive EVENT_KDDI_OTASP exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2096
    :cond_d
    const-string v18, "CDMA"

    const-string v19, "receive EVENT_KDDI_OTASP null result"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2103
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2104
    .restart local v5       #ar:Landroid/os/AsyncResult;
    if-eqz v5, :cond_e

    .line 2105
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2110
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "receive EVENT_KDDI_SET_OTASP_STATUS_DONE exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2113
    :cond_e
    const-string v18, "CDMA"

    const-string v19, "receive EVENT_KDDI_SET_OTASP_STATUS_DONE null result"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2055
    .restart local v12       #onComplete:Landroid/os/Message;
    .restart local v17       #resultString:[Ljava/lang/String;
    :catch_1
    move-exception v18

    goto/16 :goto_2

    .line 1846
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_8
        0x5 -> :sswitch_7
        0x6 -> :sswitch_1
        0x8 -> :sswitch_6
        0x13 -> :sswitch_9
        0x14 -> :sswitch_c
        0x15 -> :sswitch_2
        0x16 -> :sswitch_5
        0x17 -> :sswitch_a
        0x19 -> :sswitch_3
        0x1a -> :sswitch_4
        0x64 -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_b
        0x6e -> :sswitch_10
        0x6f -> :sswitch_f
        0x71 -> :sswitch_11
        0x72 -> :sswitch_12
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1115
    invoke-static {p1, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object v0

    .line 1117
    .local v0, mmi:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    if-nez v0, :cond_0

    .line 1118
    const-string v2, "CDMA"

    const-string v3, "Mmi is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :goto_0
    return v1

    .line 1120
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinCommand()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1121
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1123
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->processCode()V

    .line 1124
    const/4 v1, 0x1

    goto :goto_0

    .line 1126
    :cond_1
    const-string v2, "CDMA"

    const-string v3, "Unrecognized mmi!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleTimerInEmergencyCallbackMode(I)V
    .locals 5
    .parameter "action"

    .prologue
    .line 1804
    packed-switch p1, :pswitch_data_0

    .line 1816
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :goto_0
    return-void

    .line 1806
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1807
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 1810
    :pswitch_1
    const-string v2, "ro.cdma.ecmexittimer"

    const-wide/32 v3, 0x493e0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1812
    .local v0, delayInMillis:J
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1813
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 1804
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 2

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestExitPowerSaveMode(Landroid/os/Message;)V

    .line 3169
    return-void
.end method

.method public htcGetCdmaEriCallGuard()I
    .locals 2

    .prologue
    .line 3232
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 3233
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->htcVZWGetCdmaEriCallGuard()I

    move-result v0

    .line 3239
    :goto_0
    return v0

    .line 3235
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    if-eqz v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_1

    .line 3237
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingType()I

    move-result v0

    goto :goto_0

    .line 3239
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public htcGetCdmaEriDistinctiveRinger()I
    .locals 3

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    if-eqz v0, :cond_0

    .line 3253
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call htcGetCdmaEriCallGuard function."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/EriManager;->htcGetCdmaEriDistinctiveRinger()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->htcGetCdmaEriDistinctiveRinger()I

    move-result v0

    .line 3256
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public htcModemLinkOn()Z
    .locals 1

    .prologue
    .line 3173
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcModemLink:Lcom/android/internal/telephony/cdma/HtcModemLink;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcModemLink;->isModemLinkOn()Z

    move-result v0

    return v0
.end method

.method public htcNotifyDataConnectionDisconnect(Z)Z
    .locals 1
    .parameter "dis"

    .prologue
    .line 3337
    const/4 v0, 0x0

    return v0
.end method

.method protected init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 9
    .parameter "context"
    .parameter "notifier"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 342
    new-instance v4, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 343
    new-instance v4, Lcom/android/internal/telephony/cdma/EriManager;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 349
    new-instance v4, Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/HtcRadio;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    .line 350
    new-instance v4, Lcom/android/internal/telephony/cdma/HtcModemLink;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/HtcModemLink;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcModemLink:Lcom/android/internal/telephony/cdma/HtcModemLink;

    .line 351
    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaProfileSwitch:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;

    .line 352
    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaTty;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaTty;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaTty:Lcom/android/internal/telephony/cdma/HtcCdmaTty;

    .line 353
    new-instance v4, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    .line 356
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 357
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v4, :cond_0

    .line 358
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v5, 0x16

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 359
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x8

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 360
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x5

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 361
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v5, 0x13

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 363
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x17

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 364
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x19

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 366
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportKddiOtasp()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 370
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x71

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForUimOtaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 373
    :cond_1
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 375
    .local v3, pm:Landroid/os/PowerManager;
    const-string v4, "CDMA"

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 378
    const-string v4, "gsm.current.phone-type"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v4, "ril.cdma.inecmmode"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, inEcm:Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 384
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v4, :cond_2

    .line 386
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x1a

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 390
    :cond_2
    const-string v4, "ro.cdma.otaspnumschema"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    .line 394
    sget-boolean v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDetectVMbyCarrierIdFromNV:Z

    if-nez v4, :cond_4

    .line 397
    const-string v4, "ro.cdma.home.operator.alpha"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, operatorAlpha:Ljava/lang/String;
    const-string v4, "gsm.sim.operator.alpha"

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, operatorNumeric:Ljava/lang/String;
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xad

    if-eq v4, v5, :cond_3

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x64

    if-eq v4, v5, :cond_3

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x1d

    if-eq v4, v5, :cond_3

    .line 412
    const-string v4, "gsm.sim.operator.numeric"

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 423
    .end local v1           #operatorAlpha:Ljava/lang/String;
    .end local v2           #operatorNumeric:Ljava/lang/String;
    :cond_4
    invoke-interface {p2, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 424
    return-void
.end method

.method public initSpecificDialNumbers()V
    .locals 0

    .prologue
    .line 2868
    return-void
.end method

.method protected initSstIcc()V
    .locals 3

    .prologue
    .line 335
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 336
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimCard;

    const-string v1, "CDMA"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimCard;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 337
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 338
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    .line 339
    return-void
.end method

.method public isConcurrentVoiceAndData()Z
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1143
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1145
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 1146
    .local v0, state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v3, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_3

    .line 1160
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_2
    :goto_0
    return v1

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_3
    move v1, v2

    .line 1146
    goto :goto_0

    .line 1156
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_4
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v3, :cond_5

    .line 1157
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v1, Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDataConnectivityPossible()Z

    move-result v1

    goto :goto_0

    .line 1160
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public isDefaultTypeStillActive()Z
    .locals 1

    .prologue
    .line 3478
    const/4 v0, 0x0

    return v0
.end method

.method public isEriFileLoaded()Z
    .locals 1

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    return v0
.end method

.method public isIMSIReady()Z
    .locals 1

    .prologue
    .line 3393
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-nez v0, :cond_0

    .line 3394
    const/4 v0, 0x0

    .line 3396
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isIMSIReady()Z

    move-result v0

    goto :goto_0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 923
    .local v1, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 924
    .local v0, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getRingingCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 926
    .local v2, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    .prologue
    .line 1660
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isInEmergencyCall()Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isNetworkSelectionEnabled()Z
    .locals 1

    .prologue
    .line 2730
    const/4 v0, 0x0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialStr"

    .prologue
    .line 2469
    const/4 v1, 0x0

    .line 2470
    .local v1, isOtaSpNum:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2471
    .local v0, dialableStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2472
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isIs683OtaSpDialStr(Ljava/lang/String;)Z

    move-result v1

    .line 2473
    if-nez v1, :cond_0

    .line 2474
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isCarrierOtaSpNum(Ljava/lang/String;)Z

    move-result v1

    .line 2477
    :cond_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOtaSpNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    return v1
.end method

.method public isReportImsiFromCdma()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 3602
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2620
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 3

    .prologue
    .line 2279
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    .line 2282
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kddi needsOtaServiceProvisioning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->isKddiOtaspProvision:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->isKddiOtaspProvision:Z

    .line 2286
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getOtasp()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 2

    .prologue
    .line 3306
    const-string v0, "CDMA"

    const-string v1, "no need to notifyCallForwardingIndicator in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 6
    .parameter "cn"

    .prologue
    .line 1637
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1639
    const-string v3, "ril.cdma.inecmmode"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1640
    .local v2, inEcm:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 1641
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v3, :cond_0

    .line 1642
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1643
    const-string v3, "CDMA"

    const-string v4, "start to ecm timer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    const-string v3, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1646
    .local v0, delayInMillis:J
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1649
    .end local v0           #delayInMillis:J
    :cond_0
    return-void
.end method

.method public notifyIMSIReady()V
    .locals 1

    .prologue
    .line 3399
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    if-eqz v0, :cond_1

    .line 3401
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->notifyIMSIchange()V

    .line 3403
    :cond_1
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 1629
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 1633
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 1634
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 1596
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 1604
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 1605
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "ss"

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const/4 v1, 0x0

    const-string v2, "NormalSS"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromDataServiceState(ZLjava/lang/String;)V

    .line 1613
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 1614
    return-void
.end method

.method notifyServiceStateChangedSeparately()V
    .locals 3

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    if-eqz v0, :cond_0

    .line 1620
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const/4 v1, 0x0

    const-string v2, "DataSS"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromDataServiceState(ZLjava/lang/String;)V

    .line 1623
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedSeparatelyP()V

    .line 1624
    return-void
.end method

.method notifySignalStrength()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 880
    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1653
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 1175
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1178
    :cond_0
    return-void
.end method

.method public prepareEri()V
    .locals 1

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    .line 2603
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2605
    const-string v0, "ERI read, notify registrants"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 2606
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2608
    :cond_0
    return-void
.end method

.method public processPendingRadioPowerOffAfterDataOff()V
    .locals 2

    .prologue
    .line 3521
    const-string v0, "CDMA"

    const-string v1, "processPendingRadioPowerOffAfterDataOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    .line 3523
    return-void
.end method

.method public reEnableDataRoamingGuardDialog()V
    .locals 2

    .prologue
    .line 3204
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->reEnableGuardDialog(Z)V

    .line 3205
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1279
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1255
    return-void
.end method

.method public registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->registerForNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3210
    return-void
.end method

.method public registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3315
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1828
    return-void
.end method

.method public registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2182
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2183
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2184
    return-void
.end method

.method public registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2977
    return-void
.end method

.method public registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2928
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2930
    return-void
.end method

.method public registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3071
    const-string v0, "CDMA"

    const-string v1, "registerForNBPCDInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3074
    return-void
.end method

.method public registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2908
    return-void
.end method

.method public registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3325
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3326
    return-void
.end method

.method public registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3467
    return-void
.end method

.method public registerForNvLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2173
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2174
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2175
    return-void
.end method

.method public registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2954
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1263
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 909
    const-string v0, "CDMA"

    const-string v1, "method registerForSuppServiceNotification is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-void
.end method

.method public registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3004
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3006
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3453
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3455
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3441
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3443
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
    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->rejectCall()V

    .line 947
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 641
    const-string v0, "removeReferences"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 642
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 643
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 644
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    .line 645
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 646
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 647
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 648
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 649
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 650
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 651
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 652
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 653
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 656
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    .line 657
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaGpsOne:Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;

    .line 658
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcModemLink:Lcom/android/internal/telephony/cdma/HtcModemLink;

    .line 659
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaProfileSwitch:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;

    .line 660
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaTty:Lcom/android/internal/telephony/cdma/HtcCdmaTty;

    .line 661
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    .line 664
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;

    .line 665
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    .line 666
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    .line 669
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCcatService:Lcom/android/internal/telephony/cat/CatService;

    .line 670
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 673
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsSmsInterfaceManager:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    .line 675
    return-void
.end method

.method public requestGetNBPCD(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3058
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetNBPCD(Landroid/os/Message;)V

    .line 3060
    return-void
.end method

.method public requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "command"
    .parameter "response"

    .prologue
    .line 2807
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2809
    const-string v0, "CDMA"

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

    .line 2810
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 2818
    return-void

    .line 2815
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid input - command with String type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestHtcGetDDTMMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetDDTM(Landroid/os/Message;)V

    .line 3034
    return-void
.end method

.method public requestHtcGetGPSOneMode(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetGPSOneMode(Landroid/os/Message;)V

    .line 2895
    const-string v0, "CDMA"

    const-string v1, "requestHtcGetGPSOneMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    return-void
.end method

.method public requestHtcSetDDTMMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "selectDDTM"
    .parameter "response"

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetDDTM(ILandroid/os/Message;)V

    .line 3044
    return-void
.end method

.method public requestHtcSetGPSOneMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "gpsOneMode"
    .parameter "response"

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetGPSOneMode(ILandroid/os/Message;)V

    .line 2885
    return-void
.end method

.method public requestOTAProvisionStatus(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3154
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestOTAProvisionStatus(Landroid/os/Message;)V

    .line 3155
    return-void
.end method

.method public requestReleaseAllVoiceCalls(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcRequestReleaseAllVoiceCalls(Landroid/os/Message;)V

    .line 2879
    return-void
.end method

.method public requestSetLBSNTFY(I)V
    .locals 2
    .parameter "lbsvalue"

    .prologue
    .line 3549
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetLBSNTFY(ILandroid/os/Message;)V

    .line 3550
    return-void
.end method

.method public requestSetVoiceRoamingMode(IILandroid/os/Message;)V
    .locals 1
    .parameter "domestic"
    .parameter "international"
    .parameter "response"

    .prologue
    .line 3543
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->requestSetVoiceRoamingMode(IILandroid/os/Message;)V

    .line 3544
    return-void
.end method

.method public requesthTcGetHybridMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3132
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetHybridMode(Landroid/os/Message;)V

    .line 3133
    return-void
.end method

.method public requesthTcGetSystemNAM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetNAM(Landroid/os/Message;)V

    .line 3108
    return-void
.end method

.method public requesthTcSetHybridMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "hybridMode"
    .parameter "response"

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetHybridMode(ILandroid/os/Message;)V

    .line 3142
    return-void
.end method

.method public requesthTcSetSystemNAM(ILandroid/os/Message;)V
    .locals 1
    .parameter "numAssignModule"
    .parameter "response"

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetNAM(ILandroid/os/Message;)V

    .line 3118
    return-void
.end method

.method public resetMDNvoiceMailNumber()V
    .locals 4

    .prologue
    .line 3281
    iget v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierId:I

    const/16 v3, 0x66

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-ne v2, v3, :cond_2

    .line 3285
    :cond_0
    const-string v2, "CDMA"

    const-string v3, "resetMDNvoiceMailNumber, don\'t reset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    :cond_1
    :goto_0
    return-void

    .line 3288
    :cond_2
    const-string v2, "CDMA"

    const-string v3, "resetMDNvoiceMailNumber"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3290
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3291
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    .line 3292
    const-string v2, "vm_number_key_cdma"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3293
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 2
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1107
    const-string v0, "CDMA"

    const-string v1, "selectNetworkManually: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 1398
    const/4 v0, 0x1

    .line 1399
    .local v0, check:Z
    const/4 v1, 0x0

    .local v1, itr:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1400
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1401
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDtmf called with invalid character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/4 v0, 0x0

    .line 1407
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 1408
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1410
    :cond_1
    return-void

    .line 1399
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1374
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1375
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method sendEmergencyCallbackModeChange()V
    .locals 3

    .prologue
    .line 1665
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1666
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phoneinECMState"

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1668
    const-string v1, "ecmType"

    const-string v2, "1xRTT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1671
    const-string v1, "CDMA"

    const-string v2, "sendEmergencyCallbackModeChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    return-void
.end method

.method public sendKddiSmsDeliver([BLandroid/os/Message;)V
    .locals 3
    .parameter "data"
    .parameter "response"

    .prologue
    .line 3646
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportKddiOtasp()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3647
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 3649
    .local v0, hexString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 3653
    .end local v0           #hexString:Ljava/lang/String;
    :goto_0
    return-void

    .line 3651
    :cond_0
    const-string v1, "CDMA"

    const-string v2, "not support kddi otasp"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 2
    .parameter "ussdMessge"

    .prologue
    .line 1370
    const-string v0, "CDMA"

    const-string v1, "sendUssdResponse: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 0
    .parameter "msgId"
    .parameter "onComplete"

    .prologue
    .line 2713
    return-void
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 1
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    .line 3370
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCBFacility"
    .parameter "lockState"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 2678
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 1568
    const-string v0, "CDMA"

    const-string v1, "setCallForwardingOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 1237
    const-string v0, "CDMA"

    const-string v1, "method setCallWaiting is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 3177
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    if-eqz v0, :cond_0

    .line 3178
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 3183
    :goto_0
    return-void

    .line 3181
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 2269
    const-string v0, "CDMA"

    const-string v1, "[CDMAPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2271
    return-void
.end method

.method public setDataCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 2663
    const-string v0, "CDMA"

    const-string v1, "setDataCallForwardingOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    return-void
.end method

.method public setDataNationalRoamingMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2691
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v0, :cond_0

    .line 1251
    :goto_0
    return-void

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    goto :goto_0
.end method

.method public setDataRoamingGuardResponse(ZZ)V
    .locals 1
    .parameter "accept"
    .parameter "remember"

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->setUserDialogResponse(ZZ)V

    .line 3200
    return-void
.end method

.method public setDataRoamingGuardSetting(I)V
    .locals 2
    .parameter "setting"

    .prologue
    .line 3192
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->DataRoamingGuardSettingMapping:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 3193
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->DataRoamingGuardSettingMapping:[I

    aget v0, v1, p1

    .line 3194
    .local v0, drgSetting:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->setSettingTo(I)V

    .line 3196
    .end local v0           #drgSetting:I
    :cond_0
    return-void
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 2
    .parameter "roamingOption"

    .prologue
    .line 3555
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v0, :cond_0

    .line 3556
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setGlobalDataRoamingOption(I)V

    .line 3559
    :goto_0
    return-void

    .line 3558
    :cond_0
    const-string v0, "CDMA"

    const-string v1, "mDataConnectionTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setKddiOtaStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 3634
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportKddiOtasp()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3635
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setUimOtaStatus(ILandroid/os/Message;)V

    .line 3639
    :goto_0
    return-void

    .line 3637
    :cond_0
    const-string v0, "CDMA"

    const-string v1, "not support kddi otasp"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 1181
    const-string v0, "CDMA"

    const-string v1, "setLine1Number: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-void
.end method

.method public setMDN2VoiceMailNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "mdn"

    .prologue
    .line 3263
    const-string v0, "CDMA"

    const-string v1, "setMDN2VoiceMailNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    if-nez p1, :cond_0

    .line 3277
    :goto_0
    return-void

    .line 3268
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDetectVMbyCarrierIdFromNV:Z

    if-eqz v0, :cond_1

    .line 3270
    const-string v0, "C826401F00"

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 3274
    :cond_1
    const-string v0, "CDMA"

    const-string v1, "dealMccVMByCarrierId(0)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dealMccVMByCarrierId(I)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    .line 785
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 932
    const-string v0, "CDMA"

    const-string v1, "method setNetworkSelectionModeAutomatic is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1270
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    .line 1271
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1111
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 1112
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 1417
    const-string v0, "CDMA"

    const-string v1, "setOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setRadioPower(Z)V

    .line 1025
    return-void
.end method

.method public setRadioPowerExt(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setRadioPowerExt(Z)V

    .line 3486
    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "response"

    .prologue
    .line 2850
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2853
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2854
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2862
    :cond_0
    :goto_0
    return-void

    .line 2859
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public final setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "property"
    .parameter "value"

    .prologue
    .line 2195
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    return-void
.end method

.method public setTestIcc(Ljava/lang/String;Z)V
    .locals 0
    .parameter "plmn"
    .parameter "ef_ad"

    .prologue
    .line 2719
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 1444
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    .line 1445
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVoiceMailNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getHtcDeviceSlotType()[Ljava/lang/String;

    move-result-object v1

    .line 1448
    .local v1, slotType:[Ljava/lang/String;
    aget-object v2, v1, v5

    const-string v3, "RUIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isUICC()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1450
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v2, :cond_1

    .line 1452
    const/16 v2, 0x14

    invoke-virtual {p0, v2, v5, v5, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1453
    .local v0, resp:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v0}, Lcom/android/internal/telephony/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1463
    .end local v0           #resp:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1457
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1458
    if-eqz p3, :cond_0

    .line 1460
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1461
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1385
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1386
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :goto_0
    return-void

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1395
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
    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 955
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 957
    return-void
.end method

.method public turnOnRadioDueToECC()V
    .locals 0

    .prologue
    .line 2799
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1283
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 1259
    return-void
.end method

.method public unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->unregisterForNotification(Landroid/os/Handler;)V

    .line 3215
    return-void
.end method

.method public unregisterForERIInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3318
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForERIInfo(Landroid/os/Handler;)V

    .line 3320
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1832
    return-void
.end method

.method public unregisterForEriFileLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2188
    return-void
.end method

.method public unregisterForLoopBackMode(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2986
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLoopBackMode(Landroid/os/Handler;)V

    .line 2987
    return-void
.end method

.method public unregisterForMIPFailCause(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMIPFailCause(Landroid/os/Handler;)V

    .line 2941
    return-void
.end method

.method public unregisterForNBPCDInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3083
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNBPCDInfo(Landroid/os/Handler;)V

    .line 3085
    return-void
.end method

.method public unregisterForNetworkBusy(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2912
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkBusy(Landroid/os/Handler;)V

    .line 2914
    return-void
.end method

.method public unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3330
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    .line 3332
    return-void
.end method

.method public unregisterForNoDunDataPlan(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 3473
    return-void
.end method

.method public unregisterForNvLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2179
    return-void
.end method

.method public unregisterForSignalFade(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSignalFade(Landroid/os/Handler;)V

    .line 2965
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 1267
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 936
    const-string v0, "CDMA"

    const-string v1, "method unregisterForSuppServiceNotification is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void
.end method

.method public unregisterForToneSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForToneSignalInfo(Landroid/os/Handler;)V

    .line 3017
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3459
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 3461
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3447
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 3449
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1275
    return-void
.end method

.method updateCurrentCarrierInProvider()Z
    .locals 1

    .prologue
    .line 2598
    const/4 v0, 0x1

    return v0
.end method

.method updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 8
    .parameter "operatorNumeric"

    .prologue
    .line 2557
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2561
    const/high16 v6, -0x8000

    :try_start_0
    sget v7, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v6, v7}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v3

    .line 2563
    .local v3, isWPhone_cap:Z
    const/high16 v6, 0x4000

    sget v7, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v6, v7}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v2

    .line 2565
    .local v2, isDModePhone_cap:Z
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 2567
    .local v0, current_uri:Landroid/net/Uri;
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 2569
    :cond_0
    const-string v6, "updateCurrentCarrierInProvider update Telephony.CdmaCarriers.CONTENT_URI"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 2570
    sget-object v0, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 2572
    :cond_1
    const-string v6, "current"

    invoke-static {v0, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2575
    .local v5, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2576
    .local v4, map:Landroid/content/ContentValues;
    const-string v6, "numeric"

    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCurrentCarrierInProvider from system: numeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 2578
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2581
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2583
    const/4 v6, 0x1

    .line 2588
    .end local v0           #current_uri:Landroid/net/Uri;
    .end local v2           #isDModePhone_cap:Z
    .end local v3           #isWPhone_cap:Z
    .end local v4           #map:Landroid/content/ContentValues;
    .end local v5           #uri:Landroid/net/Uri;
    :goto_0
    return v6

    .line 2584
    :catch_0
    move-exception v1

    .line 2585
    .local v1, e:Landroid/database/SQLException;
    const-string v6, "CDMA"

    const-string v7, "Can\'t store current operator"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2588
    .end local v1           #e:Landroid/database/SQLException;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public updateMessageWaitingIndicator(I)V
    .locals 6
    .parameter "mwi"

    .prologue
    .line 1700
    move v2, p1

    .line 1701
    .local v2, voicemailCount:I
    if-gez v2, :cond_1

    .line 1702
    const/4 v2, -0x1

    .line 1708
    :cond_0
    :goto_0
    iput v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->countVoiceMessages:I

    .line 1714
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1716
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1717
    .local v1, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "vm_count_key_cdma"

    iget v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->countVoiceMessages:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1718
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1719
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVMCountToPreference count voiceMessages:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->countVoiceMessages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyMessageWaitingIndicator()V

    .line 1723
    return-void

    .line 1703
    .end local v0           #sp:Landroid/content/SharedPreferences;
    .end local v1           #spEditor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/16 v3, 0x63

    if-le v2, v3, :cond_0

    .line 1706
    const/16 v2, 0x63

    goto :goto_0
.end method

.method updateMessageWaitingIndicator(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 1683
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateMessageWaitingIndicator(I)V

    .line 1685
    return-void

    .line 1683
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMessageWaitingIndicator(ZI)V
    .locals 0
    .parameter "mwi"
    .parameter "count"

    .prologue
    .line 1728
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateMessageWaitingIndicator(I)V

    .line 1729
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->enableSingleLocationUpdate()V

    .line 1242
    return-void
.end method
