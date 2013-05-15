.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$TrafficMonitorMessageReceiverClass;,
        Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;,
        Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;,
        Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    }
.end annotation


# static fields
.field public static final CDMA_SMS_Dispatcher:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final COMPILE_OPTION_OMA_SUPPORT:Z = false

.field private static final DEFAULT_SMS_TIMEOUT:I = 0x1770

.field private static final DESTINATION_PORT_COLUMN:I = 0x2

.field public static final DispatcherTypeInIntent:Ljava/lang/String; = "SmsMessageType"

.field protected static final EVENT_ADD_REQUEST_IN_QUEUE:I = 0x19

.field protected static final EVENT_ALERT_TIMEOUT:I = 0x9

.field protected static final EVENT_CHECK_TRACKER_IN_QUEUE:I = 0x1a

.field protected static final EVENT_DISPATCH_MESSAGE:I = 0x17

.field static final EVENT_ECM_CALLBACK_MODE_CHANGE:I = 0x16

.field static final EVENT_GET_CSCB_COMPLETE:I = 0xf

.field protected static final EVENT_GET_RADIO_TECH_VERIZON:I = 0x21

.field private static final EVENT_GET_SMSC:I = 0x66

.field private static final EVENT_GET_TPMR:I = 0x15

.field static final EVENT_HTC_EXTENDED_OFFSET:I = 0x64

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x1e

.field protected static final EVENT_IMS_STATE_DONE:I = 0x1f

.field private static final EVENT_MT_WRITE_TO_UICC:I = 0x68

.field static final EVENT_NEW_CB:I = 0xd

.field protected static final EVENT_NEW_SMS:I = 0x1

.field protected static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x5

.field protected static final EVENT_OTAPA_DIALOG:I = 0x20

.field protected static final EVENT_POST_ALERT:I = 0x7

.field protected static final EVENT_RADIO_ON:I = 0xc

.field public static final EVENT_RTT_EVDO_ERROR_CODE_DISPATCH:I = 0x11

.field protected static final EVENT_SEND_CONFIRMED_SMS:I = 0x8

.field private static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field static final EVENT_SET_CB_ENTRY:I = 0x10

.field static final EVENT_SET_CSCB_COMPLETE:I = 0xe

.field private static final EVENT_SET_SMSC:I = 0x67

.field protected static final EVENT_SHOW_SPRINT_ROAM_DLG:I = 0x18

.field protected static final EVENT_STOP_SENDING:I = 0xa

.field public static final EVENT_WAIT_ACK_TIMEOUT:I = 0x12

.field public static final GSM_SMS_Dispatcher:I = 0x1

.field private static final HTC_SEND_RETRY_DELAY:[I = null

.field public static final IMS_SMS_Dispatcher:I = 0x3

.field static final MAIL_SEND_SMS:I = 0x1

.field private static final MAX_SEND_RETRIES:I = 0x6

.field private static final MAX_SEND_RETRIES_OF_VERIZON_LTE:I = 0x5

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final MSG_FILTER_CONCATE_FAIL:I = 0x2

.field private static final MSG_FILTER_CONCATE_RETRY:I = 0x1

.field private static final MSG_FILTER_CONCATE_SENT:I = 0x0

.field private static final MSG_SPRINT_ROAMING_GUIDE:I = 0x1

.field private static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String; = null

.field protected static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String; = null

.field public static final RADIO_TECH_3GPP:I = 0x1

.field public static final RADIO_TECH_3GPP2:I = 0x2

.field public static final RADIO_TECH_NONE:I = 0x0

.field public static final RECEIVE_EMERGENCY_BROADCAST_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"

.field public static final RECEIVE_SMS_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_SMS"

.field private static final ROAM_GUIDE_TAG:Ljava/lang/String; = "RoamingGuide"

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x3a98

.field private static final SEQUENCE_COLUMN:I = 0x1

.field private static final SINGLE_PART_SMS:I = 0x1

.field static final TAG:Ljava/lang/String; = "SMS"

.field public static final TELESERVICE_CHARi__DATA:B = 0x7t

.field public static final TELESERVICE_CHARi__PORT_DESTINATION_HI:B = 0x5t

.field public static final TELESERVICE_CHARi__PORT_DESTINATION_LOW:B = 0x6t

.field public static final TELESERVICE_CHARi__PORT_SOURCE_HI:B = 0x3t

.field public static final TELESERVICE_CHARi__PORT_SOURCE_LOW:B = 0x4t

.field public static final UNKOWN_SMS_Dispatcher:I = 0x0

.field private static final VZW_DIRECTED_SMS_INTENT:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field public static final WAIT_ACK_TIME:I = 0x1770

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field public static WSD_ERROR_CODE_NO_SERVICE:I

.field protected static mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

.field protected static mImsRadioTech:I

.field protected static final mRawUri:Landroid/net/Uri;

.field private static mSmsMessage:Landroid/telephony/SmsMessage;

.field private static mSmsMessageBase:Lcom/android/internal/telephony/SmsMessageBase;

.field public static final mWaitRoamDialog:Ljava/lang/Object;

.field public static final mWaitSendObj:Ljava/lang/Object;

.field private static sConcatenatedRef:I

.field private static sRadioTechImsVerizon:Z


# instance fields
.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mAckWaitMessageId:I

.field private mAlertDialogs:Ljava/util/ArrayList;

.field protected mCdmaCmasQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private mConcateHandler:Landroid/os/Handler;

.field private mConcateThread:Landroid/os/HandlerThread;

.field protected mContext:Landroid/content/Context;

.field private mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field protected mRemainingMessages:I

.field protected mResolver:Landroid/content/ContentResolver;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamGuideHandler:Landroid/os/Handler;

.field private mRoamGuideThread:Landroid/os/HandlerThread;

.field private mSMSdispatcherType:I

.field private mSTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mSmsCapable:Z

.field protected mSmsReceiveDisabled:Z

.field protected mSmsSendDisabled:Z

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mSubmitPduBase:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

.field protected mTpMrForRetry:Ljava/util/ArrayList;

.field private mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

.field private m_bIsRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "pdu"

    aput-object v3, v2, v1

    sput-object v2, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    .line 125
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pdu"

    aput-object v3, v2, v1

    const-string v3, "sequence"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string v4, "destination_port"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "date"

    aput-object v4, v2, v3

    sput-object v2, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 232
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "raw"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    .line 244
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/internal/telephony/SMSDispatcher;->HTC_SEND_RETRY_DELAY:[I

    .line 257
    const/16 v2, 0x14b

    sput v2, Lcom/android/internal/telephony/SMSDispatcher;->WSD_ERROR_CODE_NO_SERVICE:I

    .line 264
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sput v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 279
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mWaitSendObj:Ljava/lang/Object;

    .line 306
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcOMADMFlag:Z

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->COMPILE_OPTION_OMA_SUPPORT:Z

    .line 319
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    .line 339
    sput v1, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    .line 345
    sput-boolean v1, Lcom/android/internal/telephony/SMSDispatcher;->sRadioTechImsVerizon:Z

    return-void

    :cond_0
    move v0, v1

    .line 306
    goto :goto_0

    .line 244
    nop

    :array_0
    .array-data 0x4
        0xd0t 0x7t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 6
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 437
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    .line 291
    iput v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAckWaitMessageId:I

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 309
    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    .line 310
    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    .line 320
    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    .line 321
    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    .line 332
    iput v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    .line 342
    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCdmaCmasQueue:Ljava/util/ArrayList;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 2697
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$6;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2847
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$7;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2861
    iput-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    .line 2863
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$8;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$8;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 439
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->init_SMSDispatcher(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.baidu.trafficmonitor.star.receive.message"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TrafficMonitorMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 440
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V
    .locals 4
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"
    .parameter "type"
    .parameter "wapPush"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 443
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    .line 291
    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAckWaitMessageId:I

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 309
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    .line 310
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    .line 320
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    .line 321
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    .line 332
    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    .line 342
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCdmaCmasQueue:Ljava/util/ArrayList;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 2697
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$6;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2847
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$7;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2861
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    .line 2863
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$8;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$8;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 444
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/SMSDispatcher;->init_SMSDispatcher(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.baidu.trafficmonitor.star.receive.message"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TrafficMonitorMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 445
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SMSDispatcher;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->isNotInService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SMSDispatcher;)Lcom/android/internal/telephony/SmsUsageMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SMSDispatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SMSDispatcher;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 105
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/SMSDispatcher;->sendDatamanageIntent(Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SMSDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleAllPendingSmsTracker()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->showRoamingGuideDialogAndWait(Ljava/lang/Object;II)V

    return-void
.end method

.method private checkQueueSmsTracker()V
    .locals 17

    .prologue
    .line 2449
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/SmsSegmentsController;->getRemainingMsgInRIL()I

    move-result v10

    .line 2450
    .local v10, remaining:I
    const-string v14, "SMS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkQueueSmsTracker> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    if-lez v10, :cond_1

    .line 2486
    :cond_0
    :goto_0
    return-void

    .line 2452
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getServiceState()I

    move-result v12

    .line 2453
    .local v12, ss:I
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v2

    .line 2454
    .local v2, controller:Lcom/android/internal/telephony/SmsSegmentsController;
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsSegmentsController;->getRequestQueueSize()I

    move-result v11

    .line 2455
    .local v11, segCnt:I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->isNotInService(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2456
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v11, :cond_2

    .line 2457
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SmsSegmentsController;->getRequest(I)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v13

    .line 2458
    .local v13, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-static {v12, v13}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 2456
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2460
    .end local v13           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsSegmentsController;->clearRequest()V

    goto :goto_0

    .line 2462
    .end local v3           #i:I
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/SmsSegmentsController;->getRequestQueueSize()I

    move-result v9

    .line 2463
    .local v9, qSize:I
    const/4 v14, 0x7

    if-ge v14, v9, :cond_4

    const/4 v5, 0x7

    .line 2465
    .local v5, max:I
    :goto_2
    const/4 v4, 0x0

    .line 2466
    .local v4, index:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isNeedShowRoamingGuard()Z

    move-result v1

    .line 2468
    .local v1, bShowRoaming:Z
    :goto_3
    if-ge v4, v5, :cond_0

    .line 2469
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/SmsSegmentsController;->removeRequest(I)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v13

    .line 2471
    .restart local v13       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v1, :cond_7

    .line 2472
    iget-boolean v14, v13, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    if-eqz v14, :cond_5

    const/4 v7, 0x1

    .line 2473
    .local v7, org1:I
    :goto_4
    iget-boolean v14, v13, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    if-eqz v14, :cond_6

    const/4 v8, 0x1

    .line 2474
    .local v8, org2:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v7, v8, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2476
    .local v6, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    invoke-virtual {v14, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2483
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #org1:I
    .end local v8           #org2:I
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 2484
    goto :goto_3

    .end local v1           #bShowRoaming:Z
    .end local v4           #index:I
    .end local v5           #max:I
    .end local v13           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    move v5, v9

    .line 2463
    goto :goto_2

    .line 2472
    .restart local v1       #bShowRoaming:Z
    .restart local v4       #index:I
    .restart local v5       #max:I
    .restart local v13       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 2473
    .restart local v7       #org1:I
    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    .line 2481
    .end local v7           #org1:I
    :cond_7
    iget-boolean v14, v13, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    iget-boolean v15, v13, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto :goto_6
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1132
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1133
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1134
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1135
    return-void
.end method

.method protected static getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 2608
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2609
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x10403fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getEasAllowSms()Z
    .locals 1

    .prologue
    .line 3435
    invoke-static {}, Lcom/android/internal/telephony/SmsStorageMonitor;->getEasAllowSms()Z

    move-result v0

    return v0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 412
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 413
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method private handleAllPendingSmsTracker()Z
    .locals 6

    .prologue
    const/16 v5, 0x1a

    const/4 v1, 0x0

    .line 2507
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsSegmentsController;->getRemainingMsgInRIL()I

    move-result v2

    if-gtz v2, :cond_0

    .line 2508
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsSegmentsController;->getRequestQueueSize()I

    move-result v0

    .line 2509
    .local v0, queueMsg:I
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle request queue:size> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    if-lez v0, :cond_1

    .line 2512
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(I)V

    .line 2513
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendEmptyMessage(I)Z

    .line 2519
    .end local v0           #queueMsg:I
    :cond_0
    :goto_0
    return v1

    .line 2516
    .restart local v0       #queueMsg:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private handleGetCSCBComplete(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    .line 3102
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 3104
    const-string v4, "SMS"

    const-string v5, "Get CSCB info complete."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 3107
    .local v0, Result:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v3, v0, v4

    .line 3108
    .local v3, mode:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v2, v0, v4

    .line 3109
    .local v2, mMsgId:Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v1, v0, v4

    .line 3111
    .local v1, mDcs:Ljava/lang/String;
    const-string v4, "SMS"

    const-string v5, "Get CSCB info complete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get CSCB info complete-mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get CSCB info complete-Msgid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get CSCB info complete-DCS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    .end local v0           #Result:[Ljava/lang/String;
    .end local v1           #mDcs:Ljava/lang/String;
    .end local v2           #mMsgId:Ljava/lang/String;
    .end local v3           #mode:Ljava/lang/String;
    :goto_0
    return-void

    .line 3120
    :cond_0
    const-string v4, "SMS"

    const-string v5, "Get CSCB info failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleIccFull()V
    .locals 4

    .prologue
    .line 1164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1165
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1166
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1167
    return-void
.end method

.method private handleNewMessage(Landroid/telephony/SmsMessage;)V
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1117
    :try_start_0
    iget-object v4, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2

    .line 1118
    .local v2, result:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1121
    if-ne v2, v1, :cond_1

    .line 1122
    .local v1, handled:Z
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    .end local v1           #handled:Z
    .end local v2           #result:I
    :cond_0
    :goto_1
    return-void

    .restart local v2       #result:I
    :cond_1
    move v1, v3

    .line 1121
    goto :goto_0

    .line 1124
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 1125
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "SMS"

    const-string v5, "Exception dispatching message"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1126
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_1
.end method

.method protected static handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .parameter "ss"
    .parameter "tracker"

    .prologue
    .line 1558
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1560
    :try_start_0
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNotInService, message send fail ss : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 1562
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V

    .line 1568
    :cond_0
    :goto_0
    return-void

    .line 1564
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1566
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private init_SMSDispatcher(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V
    .locals 6
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"
    .parameter "dispatcherType"
    .parameter "wapPush"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 450
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 452
    iput p4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    .line 453
    if-nez p5, :cond_6

    .line 455
    new-instance v1, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v1, p1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 462
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 463
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 464
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 465
    new-instance v1, Lcom/android/internal/telephony/ConcatedUtil;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/ConcatedUtil;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v1, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    .line 466
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 467
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 469
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 471
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1110024

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 473
    const-string v1, "telephony.sms.receive"

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    .line 475
    const-string v1, "telephony.sms.send"

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    move v3, v2

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 477
    const-string v1, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSmsReceiveDisabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSmsSendDisabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x5

    invoke-interface {v1, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xd

    invoke-interface {v1, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCB(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x15

    invoke-interface {v1, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForTPMR(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 502
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 509
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 510
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    const-string v1, "android.intent.action.ACTION_UPDATE_RADIO_TECH_VERIZON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 520
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    .line 525
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 533
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    if-nez v1, :cond_3

    .line 534
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ConcateThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    .line 535
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 536
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    .line 540
    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v1, v2, :cond_4

    .line 542
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    if-nez v1, :cond_4

    .line 544
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RoamGuideThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    .line 545
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 546
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    .line 553
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 563
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->registerReceiver(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher;)Lcom/android/internal/telephony/test/FakeSmsReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 565
    return-void

    .line 459
    :cond_6
    iput-object p5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 473
    goto/16 :goto_1
.end method

.method public static isCdmaMo()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    const-string v3, "gsm.volte.ims.emulate.gsm_mode"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v1, :cond_0

    .line 407
    .local v0, smsformat:Ljava/lang/String;
    :goto_0
    return v2

    .line 392
    .end local v0           #smsformat:Ljava/lang/String;
    :cond_0
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCdmaMo>mImsRadioTech: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget v3, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    if-nez v3, :cond_2

    .line 395
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 400
    :cond_2
    const-string v1, "gsm.vzw.sms.format"

    const-string v3, "3gpp2"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .restart local v0       #smsformat:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    const-string v1, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PROPERTY_VZW_MO_SMS_FORMAT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    :cond_3
    const-string v1, "3gpp2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isImsAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 356
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_1

    .line 357
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->sRadioTechImsVerizon:Z

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 362
    const-string v2, "gsm.volte.ims.registered"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v0, :cond_2

    .line 363
    .local v0, isImsAvailable:Z
    :goto_1
    goto :goto_0

    .end local v0           #isImsAvailable:Z
    :cond_2
    move v0, v1

    .line 362
    goto :goto_1

    .line 366
    :cond_3
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isImsAvailable():mImsRadioTech> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 369
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 372
    :cond_4
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isNeedShowRoamingGuard()Z
    .locals 7

    .prologue
    .line 3404
    const/4 v0, 0x0

    .line 3406
    .local v0, bNeedShow:Z
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    move v1, v0

    .line 3427
    .end local v0           #bNeedShow:Z
    .local v1, bNeedShow:I
    :goto_0
    return v1

    .line 3409
    .end local v1           #bNeedShow:I
    .restart local v0       #bNeedShow:Z
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    move v1, v0

    .line 3410
    .restart local v1       #bNeedShow:I
    goto :goto_0

    .line 3412
    .end local v1           #bNeedShow:I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 3415
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 3416
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3417
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v4, "international"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->isSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 3418
    const-string v4, "RoamingGuide"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDMA sms guard >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, v0

    .line 3427
    .restart local v1       #bNeedShow:I
    goto :goto_0

    .line 3421
    .end local v1           #bNeedShow:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3422
    .restart local v2       #cr:Landroid/content/ContentResolver;
    const-string v4, "gsm"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->isSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 3423
    const-string v4, "RoamingGuide"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSM sms guard >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isNotInService(I)Z
    .locals 3
    .parameter "ss"

    .prologue
    .line 2526
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2527
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->kddiLteIsNotInService(I)Z

    move-result v1

    .line 2537
    :goto_0
    return v1

    .line 2534
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsAvailable()Z

    move-result v0

    .line 2537
    .local v0, isImsAvailable:Z
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOutOfService(II)Z
    .locals 3
    .parameter "ss"
    .parameter "errorCode"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3557
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3558
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3568
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3558
    goto :goto_0

    .line 3561
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3562
    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    if-ne v2, v0, :cond_3

    .line 3563
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsAvailable()Z

    move-result v0

    goto :goto_0

    .line 3564
    :cond_3
    if-nez p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 3568
    :cond_4
    if-nez p1, :cond_5

    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->WSD_ERROR_CODE_NO_SERVICE:I

    if-ne p2, v2, :cond_6

    :cond_5
    move v1, v0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private isUnderSendRetry(Lcom/android/internal/telephony/CommandException;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 6
    .parameter "ce"
    .parameter "tracker"

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3574
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3579
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    :cond_0
    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-eqz v3, :cond_1

    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    .line 3595
    :cond_4
    :goto_0
    return v2

    .line 3585
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3586
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_7

    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v3, v5, :cond_7

    move v0, v2

    .line 3589
    .local v0, needRetry:Z
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    if-ne v3, v2, :cond_8

    .line 3590
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsAvailable()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_6
    move v2, v1

    goto :goto_0

    .end local v0           #needRetry:Z
    :cond_7
    move v0, v1

    .line 3586
    goto :goto_1

    .restart local v0       #needRetry:Z
    :cond_8
    move v2, v0

    .line 3591
    goto :goto_0

    .line 3595
    .end local v0           #needRetry:Z
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_a

    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lt v3, v5, :cond_4

    :cond_a
    move v2, v1

    goto :goto_0
.end method

.method private kddiLteIsNotInService(I)Z
    .locals 5
    .parameter "ss"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2543
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kddiLteIsNotInService> dispatcher type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    if-ne v2, v0, :cond_2

    .line 2545
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kddiLteIsNotInService> IMS radio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    if-eq v2, v0, :cond_1

    .line 2549
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2546
    goto :goto_0

    .line 2548
    :cond_2
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kddiLteIsNotInService> ss: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    if-nez p1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private processCBMessagePart(Lcom/android/internal/telephony/gsm/CBMessage;III)V
    .locals 21
    .parameter "cb"
    .parameter "referenceNumber"
    .parameter "sequence"
    .parameter "count"

    .prologue
    .line 2956
    const-string v2, "SMS"

    const-string v3, "processCBMessagePart()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v2, "reference_number ="

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2960
    .local v20, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2964
    .local v11, cursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 2965
    .local v12, cursorCount:I
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCBMessagePart()-cursorCount-total page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    add-int/lit8 v2, p4, -0x1

    if-eq v12, v2, :cond_0

    .line 2968
    invoke-interface {v11}, Landroid/database/Cursor;->deactivate()V

    .line 2969
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCBMessagePart()-save msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 2971
    .local v19, values:Landroid/content/ContentValues;
    const-string v2, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    const-string v2, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2973
    const-string v2, "count"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2974
    const-string v2, "sequence"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3019
    .end local v19           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 2981
    :cond_0
    const-string v2, "pdu"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 2982
    .local v16, pduColumn:I
    const-string v2, "sequence"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 2984
    .local v17, sequenceColumn:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2985
    .local v9, body:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v12, :cond_1

    .line 2986
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 2987
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v13, v2

    .line 2988
    .local v13, cursorSequence:I
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2989
    .local v18, temp:Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCBMessagePart()-get msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2985
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2993
    .end local v13           #cursorSequence:I
    .end local v18           #temp:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2994
    invoke-interface {v11}, Landroid/database/Cursor;->deactivate()V

    .line 2997
    const/4 v2, 0x1

    new-array v10, v2, [[B

    .line 2998
    .local v10, cbpdu:[[B
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getRowData()[B

    move-result-object v3

    aput-object v3, v10, v2

    .line 3002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3003
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3004
    .local v8, LocationBody:Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCBMessagePart()-msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.intent.action.CB_RECEIVED"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3007
    .local v15, intent:Landroid/content/Intent;
    const-string v2, "cbPdu"

    invoke-virtual {v15, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3008
    const-string v2, "cmas"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMsg_id()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/CmasMessage;->isGsmCmas(I)Z

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3009
    const-string v2, "isCdma"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3011
    const-string v2, "pdus"

    invoke-virtual {v15, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3012
    const-string v2, "gs"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getGs()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3013
    const-string v2, "upnum"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getUpdatenum()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3014
    const-string v2, "mId"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMsg_id()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3015
    const-string v2, "dcs"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getDcs()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v15, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sendDatamanageIntent(Ljava/lang/String;JJ)V
    .locals 5
    .parameter "number"
    .parameter "timestamp"
    .parameter "size"

    .prologue
    .line 1185
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.datamanager.ADD_MESSAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v0, it:Landroid/content/Intent;
    const-string v1, "SMS_MO"

    .line 1187
    .local v1, type:Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "framework sent intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/number/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    const-string v2, "remote_number"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    const-string v2, "timestamp"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1192
    const-string v2, "size"

    invoke-virtual {v0, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1194
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1195
    return-void
.end method

.method private shouldWeDiscardSMS(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x7

    .line 3439
    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3479
    :cond_0
    :goto_0
    return v3

    .line 3442
    :cond_1
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 3444
    .local v2, msgs:[Landroid/telephony/SmsMessage;
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_0

    .line 3445
    if-eqz v2, :cond_0

    aget-object v5, v2, v3

    if-eqz v5, :cond_0

    .line 3446
    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 3448
    .local v1, firstMessage:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3449
    const-string v5, "VZWPIN:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_2

    .line 3450
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3451
    .local v0, bintent:Landroid/content/Intent;
    const-string v3, "com.android.mms.transaction.pin_notification"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3452
    const-string v3, "PIN_NOTIFICATION"

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3453
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.VZW_HUX"

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v3, v4

    .line 3454
    goto :goto_0

    .line 3455
    .end local v0           #bintent:Landroid/content/Intent;
    :cond_2
    const-string v5, "VZWNMN:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_3

    .line 3456
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3457
    .restart local v0       #bintent:Landroid/content/Intent;
    const-string v3, "com.android.mms.transaction.new_mail_notification"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3458
    const-string v3, "NEW_MAIL_NOTIFICATION"

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3459
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.VZW_HUX"

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v3, v4

    .line 3460
    goto :goto_0

    .line 3461
    .end local v0           #bintent:Landroid/content/Intent;
    :cond_3
    const-string v5, "VZWUEP:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_4

    .line 3462
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3463
    .restart local v0       #bintent:Landroid/content/Intent;
    const-string v3, "com.android.mms.transaction.account_notification"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3464
    const-string v3, "ACCOUNT_CHANGE_NOTIFICATION"

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3465
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.VZW_HUX"

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v3, v4

    .line 3466
    goto/16 :goto_0

    .line 3467
    .end local v0           #bintent:Landroid/content/Intent;
    :cond_4
    const-string v5, "VZWRSC:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_0

    move v3, v4

    .line 3474
    goto/16 :goto_0
.end method

.method private showRoamingGuideDialogAndWait(Ljava/lang/Object;II)V
    .locals 5
    .parameter "tracker"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 3379
    const-string v2, "RoamingGuide"

    const-string v3, "show dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3383
    .local v1, msg:Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 3384
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 3385
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3387
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3391
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3392
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 3393
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3400
    :goto_0
    const-string v2, "RoamingGuide"

    const-string v3, "leave wait"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    return-void

    .line 3393
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3395
    :catch_0
    move-exception v0

    .line 3396
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "RoamingGuide"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait dialog exception >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final updateCallState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2706
    if-nez p1, :cond_1

    .line 2717
    :cond_0
    return-void

    .line 2708
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2709
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dialog/HtcAlertDialog;

    .line 2710
    .local v0, d:Lcom/htc/dialog/HtcAlertDialog;
    if-eqz v0, :cond_1

    .line 2711
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2712
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method protected KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "intent"
    .parameter "permission"

    .prologue
    .line 3618
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3619
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3620
    return-void
.end method

.method MsgIdCbsFilter(II)Z
    .locals 1
    .parameter "msgID"
    .parameter "msgDcs"

    .prologue
    .line 3068
    const/4 v0, 0x0

    return v0
.end method

.method protected SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 1
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 2844
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method public abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
.end method

.method protected checkInSegmentToRIL(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .parameter "tracker"

    .prologue
    .line 2493
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInSegmentToRIL> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RetryCnt> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2495
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-nez v0, :cond_0

    .line 2496
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsSegmentsController;->checkInSegment()Z

    .line 2499
    :cond_0
    return-void
.end method

.method public checkVZWDirectedSMS(Ljava/lang/String;)Z
    .locals 13
    .parameter "bodystr"

    .prologue
    const/4 v11, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3495
    const/4 v6, 0x0

    .line 3496
    .local v6, prefixstr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3498
    .local v4, parameterstr:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3499
    .local v0, bodylen:I
    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3501
    .local v2, colonidx:I
    if-gt v2, v11, :cond_1

    .line 3536
    :cond_0
    :goto_0
    return v8

    .line 3505
    :cond_1
    add-int/lit8 v10, v0, -0x1

    if-eq v2, v10, :cond_0

    .line 3508
    invoke-virtual {p1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 3509
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SMSDispatcher prefix str is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3512
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parameter is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManager;->getDirectedSmsReceivers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3517
    .local v7, strarray:[Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 3521
    aget-object v5, v7, v8

    .line 3522
    .local v5, pkgstr:Ljava/lang/String;
    aget-object v1, v7, v9

    .line 3523
    .local v1, classstr:Ljava/lang/String;
    const-string v8, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DirectedSMS mapping pkg/class are: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    new-instance v3, Landroid/content/Intent;

    const-string v8, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3526
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3527
    const-string v8, "parameters"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3528
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v8, v9

    .line 3529
    goto/16 :goto_0

    .line 3531
    .end local v1           #classstr:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #pkgstr:Ljava/lang/String;
    :cond_2
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not got mapping of prefixstr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 1146
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->shouldWeDiscardSMS(Landroid/content/Intent;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1147
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1156
    :goto_0
    return-void

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected dispatchBroadcastPdus([[BZ)V
    .locals 4
    .parameter "pdus"
    .parameter "isEmergencyMessage"

    .prologue
    .line 2934
    if-eqz p2, :cond_0

    .line 2935
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2936
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2937
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " emergency SMS CB pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2945
    :goto_0
    return-void

    .line 2940
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2941
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2942
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SMS CB pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method dispatchCBMessage(Lcom/android/internal/telephony/gsm/CBMessage;)V
    .locals 8
    .parameter "cb"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3027
    const/4 v2, 0x0

    .line 3029
    .local v2, mText:Ljava/lang/String;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2-dispatchCBMessage()-page:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getPage()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getRowData()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcMessageHelper;->check3gppBCSMSDuplication(Landroid/content/Context;[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3065
    :cond_0
    :goto_0
    return-void

    .line 3037
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getPages()I

    move-result v3

    if-le v3, v7, :cond_2

    .line 3039
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getSn()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getPage()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getPages()I

    move-result v5

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->processCBMessagePart(Lcom/android/internal/telephony/gsm/CBMessage;III)V

    goto :goto_0

    .line 3042
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 3043
    if-eqz v2, :cond_0

    .line 3046
    new-array v0, v7, [[B

    .line 3047
    .local v0, cbPdu:[[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getRowData()[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 3050
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CB_RECEIVED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3052
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "cbPdu"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3053
    const-string v3, "cmas"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMsg_id()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/CmasMessage;->isGsmCmas(I)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3054
    const-string v3, "isCdma"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3056
    const-string v3, "pdus"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3057
    const-string v3, "gs"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getGs()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3058
    const-string v3, "upnum"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getUpdatenum()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3059
    const-string v3, "mId"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMsg_id()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3060
    const-string v3, "dcs"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getDcs()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3061
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchFakeMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3129
    const/4 v2, 0x0

    .line 3131
    .local v2, result:I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2

    .line 3132
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 3135
    if-ne v2, v1, :cond_1

    .line 3136
    .local v1, handled:Z
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3143
    .end local v1           #handled:Z
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 3135
    goto :goto_0

    .line 3138
    :catch_0
    move-exception v0

    .line 3139
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "SMS"

    const-string v5, "Exception dispatching message"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3140
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_1
.end method

.method public abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchPdus(I[[B)V
    .locals 3
    .parameter "nSimSmsRecordIndex"
    .parameter "pdus"

    .prologue
    .line 2057
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2058
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2059
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2060
    const-string v1, "SimSmsRecordIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2062
    const-string v1, "SmsMessageType"

    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2064
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2065
    return-void
.end method

.method protected dispatchPdus(I[[BZ)V
    .locals 3
    .parameter "nSimSmsRecordIndex"
    .parameter "pdus"
    .parameter "isLBS"

    .prologue
    .line 1992
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1993
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 1994
    const-string v1, "com.android.mms.transaction.LBSMESSAGE_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1998
    :goto_0
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1999
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2000
    const-string v1, "SimSmsRecordIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2001
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2002
    return-void

    .line 1996
    :cond_0
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected dispatchPdus(I[[BZZ)V
    .locals 3
    .parameter "nSimSmsRecordIndex"
    .parameter "pdus"
    .parameter "isLBS"
    .parameter "isEVDO"

    .prologue
    .line 2037
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2038
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 2039
    const-string v1, "com.android.mms.transaction.LBSMESSAGE_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2043
    :goto_0
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2044
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2045
    const-string v1, "SimSmsRecordIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2046
    const-string v1, "EVDOSms"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2047
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2048
    return-void

    .line 2041
    :cond_0
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected dispatchPdus(Landroid/content/Intent;[[B)V
    .locals 4
    .parameter "intent"
    .parameter "pdus"

    .prologue
    const/4 v0, 0x0

    .line 2018
    const-string v2, "lbs"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2019
    .local v1, isLBS:Z
    const-string v2, "is_cbm"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 2023
    .local v0, isCBM:Z
    :cond_0
    if-eqz v1, :cond_1

    .line 2024
    const-string v2, "com.android.mms.transaction.LBSMESSAGE_RECEIVE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2030
    :goto_0
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2031
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2032
    return-void

    .line 2025
    :cond_1
    if-eqz v0, :cond_2

    .line 2026
    const-string v2, "android.intent.action.CB_RECEIVED"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2028
    :cond_2
    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected dispatchPdus([[B)V
    .locals 3
    .parameter "pdus"

    .prologue
    .line 1980
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1981
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1982
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1983
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1984
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 4
    .parameter "pdus"
    .parameter "port"

    .prologue
    .line 2074
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2075
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2076
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2077
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2078
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2079
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForTPMR(Landroid/os/Handler;)V

    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCB(Landroid/os/Handler;)V

    .line 587
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 590
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 592
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 602
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 603
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 610
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 612
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 623
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-eqz v0, :cond_4

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dispose()V

    .line 625
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 628
    :cond_4
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 648
    const-string v0, "SMS"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void
.end method

.method getCSCB()V
    .locals 2

    .prologue
    .line 3090
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3091
    .local v0, reply:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getATCSCB(Landroid/os/Message;)V

    .line 3092
    return-void
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method public getMStorageAvailable()Z
    .locals 1

    .prologue
    .line 3627
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v0

    return v0
.end method

.method public getSMSCenter(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 2558
    const/16 v1, 0x66

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2559
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 2560
    return-void
.end method

.method protected getServiceState()I
    .locals 4

    .prologue
    .line 2435
    const/4 v0, 0x1

    .line 2436
    .local v0, ss:I
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2437
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 2442
    :goto_0
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceState> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    return v0

    .line 2440
    :cond_0
    const-string v1, "SMS"

    const-string v2, "mPhone or gerServiceState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleCmasInEcmCallbackMode(Z)V
    .locals 0
    .parameter "isECM"

    .prologue
    .line 3148
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 35
    .parameter "msg"

    .prologue
    .line 673
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "handleMessage > "

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 678
    :sswitch_0
    const-string v3, "SMS"

    const-string v4, "New SMS Message has been stored."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 683
    .local v11, ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/telephony/SmsMessage;

    .line 685
    .local v30, sms:Landroid/telephony/SmsMessage;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 687
    :try_start_0
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v32, v0

    .line 688
    .local v32, values:[I
    if-eqz v32, :cond_1

    move-object/from16 v0, v32

    array-length v3, v0

    if-lez v3, :cond_1

    .line 689
    const/4 v3, 0x0

    aget v3, v32, v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/telephony/SmsMessage;->setIndexOnIcc(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v32           #values:[I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleNewMessage(Landroid/telephony/SmsMessage;)V

    goto :goto_0

    .line 691
    :catch_0
    move-exception v15

    .line 692
    .local v15, e:Ljava/lang/Exception;
    const-string v3, "SMS"

    const-string v4, "Failed to get indexOnUicc!"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 696
    .end local v15           #e:Ljava/lang/Exception;
    :cond_2
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Can not write MT SMS to UICC!"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 706
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v30           #sms:Landroid/telephony/SmsMessage;
    :sswitch_1
    const-string v3, "SMS"

    const-string v4, "New SMS Message Received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 714
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 715
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Exception processing incoming SMS. Exception:"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 719
    :cond_3
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/telephony/SmsMessage;

    .line 721
    .restart local v30       #sms:Landroid/telephony/SmsMessage;
    :try_start_1
    move-object/from16 v0, v30

    iget-object v3, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v27

    .line 722
    .local v27, result:I
    const/4 v3, -0x1

    move/from16 v0, v27

    if-eq v0, v3, :cond_0

    .line 725
    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_4

    const/16 v18, 0x1

    .line 726
    .local v18, handled:Z
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 728
    .end local v18           #handled:Z
    .end local v27           #result:I
    :catch_1
    move-exception v17

    .line 729
    .local v17, ex:Ljava/lang/RuntimeException;
    const-string v3, "SMS"

    const-string v4, "Exception dispatching message"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 725
    .end local v17           #ex:Ljava/lang/RuntimeException;
    .restart local v27       #result:I
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 737
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v27           #result:I
    .end local v30           #sms:Landroid/telephony/SmsMessage;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 741
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-boolean v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    move/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto/16 :goto_0

    .line 745
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 749
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 753
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/htc/dialog/HtcAlertDialog;

    check-cast v3, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 754
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 757
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 758
    .local v29, sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const-string v3, "SMS"

    const-string v4, "EVENT_ALERT_TIMEOUT, message send fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    .line 765
    .end local v29           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_5
    :goto_3
    const-string v3, "SMS"

    const-string v4, "EVENT_ALERT_TIMEOUT, message stop sending"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 760
    :catch_2
    move-exception v17

    .line 761
    .local v17, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "SMS"

    const-string v4, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 770
    .end local v17           #ex:Landroid/app/PendingIntent$CanceledException;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 772
    .restart local v29       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 773
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 777
    :goto_4
    const/16 v3, 0x9

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 775
    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto :goto_4

    .line 782
    .end local v29           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 785
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 786
    .restart local v29       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const-string v3, "SMS"

    const-string v4, "EVENT_STOP_SENDING, message send fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_3

    .line 791
    .end local v29           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_5
    const/16 v3, 0x9

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 788
    :catch_3
    move-exception v17

    .line 789
    .restart local v17       #ex:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "SMS"

    const-string v4, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 799
    .end local v17           #ex:Landroid/app/PendingIntent$CanceledException;
    :sswitch_9
    const-string v3, "SMS"

    const-string v4, "1-New Cell broadcast Message Received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 808
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    .line 809
    const-string v3, "SMS"

    const-string v4, "Exception processing incoming CB message"

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 814
    :cond_7
    iget-object v13, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/gsm/CBMessage;

    .line 817
    .local v13, cb:Lcom/android/internal/telephony/gsm/CBMessage;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchCBMessage(Lcom/android/internal/telephony/gsm/CBMessage;)V

    goto/16 :goto_0

    .line 823
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #cb:Lcom/android/internal/telephony/gsm/CBMessage;
    :sswitch_a
    const-string v3, "SMS"

    const-string v4, "Set Cell broadcast channels complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 829
    :sswitch_b
    const-string v3, "SMS"

    const-string v4, "Get Cell broadcast channels complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleGetCSCBComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 838
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 840
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 841
    const-string v3, "SMS"

    const-string v4, "Callback with GET SMSC successful."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 844
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8

    .line 845
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 848
    :cond_8
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 854
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 856
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 857
    const-string v3, "SMS"

    const-string v4, "Callback with GET SUBSIDY LOCK successful."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 860
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 865
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 866
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v9, v3

    check-cast v9, [I

    .line 867
    .local v9, MIPData:[I
    if-nez v9, :cond_9

    .line 868
    const-string v3, "SMS"

    const-string v4, "MIP without parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 872
    :cond_9
    const/4 v3, 0x0

    aget v24, v9, v3

    .line 873
    .local v24, msg_id:I
    const/4 v3, 0x1

    aget v16, v9, v3

    .line 876
    .local v16, errorCode:I
    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.RTT_EVDO_error"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    .local v20, intent:Landroid/content/Intent;
    const-string v3, "msg_id"

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 878
    const-string v3, "errorCode"

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 887
    .end local v9           #MIPData:[I
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v16           #errorCode:I
    .end local v20           #intent:Landroid/content/Intent;
    .end local v24           #msg_id:I
    :sswitch_f
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_0

    .line 889
    :try_start_4
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mWaitSendObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 890
    :try_start_5
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitSendObj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 891
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 893
    :catch_4
    move-exception v15

    .line 894
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "wait sent exception >"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 904
    .end local v15           #e:Ljava/lang/Exception;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 905
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 906
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v28, v3

    check-cast v28, [I

    .line 907
    .local v28, results:[I
    move-object/from16 v12, v28

    .local v12, arr$:[I
    array-length v0, v12

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_6
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget v31, v12, v19

    .line 908
    .local v31, tpmr:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v31

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 914
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v12           #arr$:[I
    .end local v19           #i$:I
    .end local v21           #len$:I
    .end local v28           #results:[I
    .end local v31           #tpmr:I
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 915
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleCmasInEcmCallbackMode(Z)V

    goto/16 :goto_0

    .line 919
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 920
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    goto/16 :goto_0

    .line 927
    :sswitch_13
    new-instance v23, Lcom/android/internal/telephony/HtcRoamingGuideDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/HtcRoamingGuideDialog;-><init>(Landroid/content/Context;)V

    .line 929
    .local v23, mShowRoamGuideDialogView:Lcom/android/internal/telephony/HtcRoamingGuideDialog;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 930
    .local v6, mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_a

    const/4 v7, 0x1

    .line 931
    .local v7, bFirstofAll:Z
    :goto_7
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-lez v3, :cond_b

    const/4 v8, 0x1

    .line 933
    .local v8, bLastofAll:Z
    :goto_8
    if-eqz v23, :cond_d

    .line 934
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v26

    .line 935
    .local v26, r:Landroid/content/res/Resources;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->getListView()Landroid/widget/ListView;

    move-result-object v22

    .line 936
    .local v22, list:Landroid/widget/ListView;
    const v3, 0x1040545

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->setMsgText(Ljava/lang/String;)V

    .line 938
    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040544

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v33, Lcom/android/internal/telephony/SMSDispatcher$1;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    move-object/from16 v0, v33

    invoke-virtual {v3, v4, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->getLayout()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v5

    .line 977
    .local v5, mRoamGuideDlg:Lcom/htc/dialog/HtcAlertDialog;
    if-eqz v22, :cond_c

    .line 978
    new-instance v10, Lcom/android/internal/telephony/RoamingGuideListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v10, v3}, Lcom/android/internal/telephony/RoamingGuideListAdapter;-><init>(Landroid/content/Context;)V

    .line 979
    .local v10, adapter:Lcom/android/internal/telephony/RoamingGuideListAdapter;
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 980
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 981
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 982
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/htc/dialog/HtcAlertDialog;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1053
    .end local v10           #adapter:Lcom/android/internal/telephony/RoamingGuideListAdapter;
    :goto_9
    invoke-virtual {v5}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1054
    invoke-virtual {v5}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 930
    .end local v5           #mRoamGuideDlg:Lcom/htc/dialog/HtcAlertDialog;
    .end local v7           #bFirstofAll:Z
    .end local v8           #bLastofAll:Z
    .end local v22           #list:Landroid/widget/ListView;
    .end local v26           #r:Landroid/content/res/Resources;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 931
    .restart local v7       #bFirstofAll:Z
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 1045
    .restart local v5       #mRoamGuideDlg:Lcom/htc/dialog/HtcAlertDialog;
    .restart local v8       #bLastofAll:Z
    .restart local v22       #list:Landroid/widget/ListView;
    .restart local v26       #r:Landroid/content/res/Resources;
    :cond_c
    :try_start_7
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    monitor-enter v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1046
    :try_start_8
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1047
    monitor-exit v4

    goto :goto_9

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1048
    :catch_5
    move-exception v3

    goto :goto_9

    .line 1058
    .end local v5           #mRoamGuideDlg:Lcom/htc/dialog/HtcAlertDialog;
    .end local v22           #list:Landroid/widget/ListView;
    .end local v26           #r:Landroid/content/res/Resources;
    :cond_d
    :try_start_a
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    monitor-enter v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1059
    :try_start_b
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1060
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 1061
    :catch_6
    move-exception v3

    goto/16 :goto_0

    .line 1069
    .end local v6           #mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v7           #bFirstofAll:Z
    .end local v8           #bLastofAll:Z
    .end local v23           #mShowRoamGuideDialogView:Lcom/android/internal/telephony/HtcRoamingGuideDialog;
    :sswitch_14
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SmsSegmentsController;->addRequestInQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1070
    const/16 v3, 0x1a

    const-wide/16 v33, 0x1f4

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1073
    :sswitch_15
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->checkQueueSmsTracker()V

    goto/16 :goto_0

    .line 1079
    :sswitch_16
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v26

    .line 1080
    .restart local v26       #r:Landroid/content/res/Resources;
    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040572

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040573

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v33, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v3, v4, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v25

    .line 1086
    .local v25, otapaDialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1087
    invoke-virtual/range {v25 .. v25}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 1093
    .end local v25           #otapaDialog:Lcom/htc/dialog/HtcAlertDialog;
    .end local v26           #r:Landroid/content/res/Resources;
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1094
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_10

    .line 1095
    iget-object v14, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 1096
    .local v14, code:Ljava/lang/String;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "EVENT_GET_RADIO_TECH_VERIZON : "

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_e

    .line 1099
    const-string v3, "01"

    const/16 v4, 0x8

    const/16 v33, 0xa

    move/from16 v0, v33

    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 1100
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->sRadioTechImsVerizon:Z

    .line 1105
    :cond_e
    :goto_a
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sRadioTechImsVerizon change to : "

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v33, Lcom/android/internal/telephony/SMSDispatcher;->sRadioTechImsVerizon:Z

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1102
    :cond_f
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->sRadioTechImsVerizon:Z

    goto :goto_a

    .line 1107
    .end local v14           #code:Ljava/lang/String;
    :cond_10
    const-string v3, "SMS"

    const-string v4, "Cannot get radio tech for Verizon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 674
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x11 -> :sswitch_e
        0x12 -> :sswitch_f
        0x15 -> :sswitch_10
        0x16 -> :sswitch_11
        0x17 -> :sswitch_12
        0x18 -> :sswitch_13
        0x19 -> :sswitch_14
        0x1a -> :sswitch_15
        0x20 -> :sswitch_16
        0x21 -> :sswitch_17
        0x66 -> :sswitch_c
        0x67 -> :sswitch_d
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    const/4 v5, 0x5

    .line 2577
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 2580
    :try_start_0
    const-string v4, "SMS"

    const-string v5, "handleReachSentLimit, send message fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2605
    :goto_0
    return-void

    .line 2582
    :catch_0
    move-exception v2

    .line 2583
    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMS"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2588
    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 2590
    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v4}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 2592
    .local v0, appName:Ljava/lang/String;
    new-instance v4, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x10403fc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x10403fd

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x10403fe

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x10403ff

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 2599
    .local v1, d:Lcom/htc/dialog/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2600
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2602
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2603
    const/16 v4, 0x9

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1770

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 36
    .parameter "ar"

    .prologue
    .line 1207
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1208
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v6, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1210
    .local v6, sentIntent:Landroid/app/PendingIntent;
    const/4 v14, 0x1

    .line 1213
    .local v14, bRemoveWait:Z
    iget v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatRef:I

    move/from16 v25, v0

    .line 1214
    .local v25, nConcateRef:I
    iget v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCount:I

    move/from16 v24, v0

    .line 1215
    .local v24, nConcateCount:I
    iget v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSequence:I

    move/from16 v27, v0

    .line 1216
    .local v27, nSequence:I
    iget-object v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatDest:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1217
    .local v23, nConcatDestAddr:Ljava/lang/String;
    iget v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDate:I

    move/from16 v26, v0

    .line 1223
    .local v26, nDate:I
    const/16 v28, 0x0

    .line 1224
    .local v28, pregeterrorCode:I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1225
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/SmsResponse;

    .line 1226
    .local v33, sr:Lcom/android/internal/telephony/SmsResponse;
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    move/from16 v28, v0

    .line 1227
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pre error Code: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "msgRef> "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    iget v12, v0, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", trytpmr> "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    .end local v33           #sr:Lcom/android/internal/telephony/SmsResponse;
    :cond_0
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "send complete: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    .line 1235
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SMS send complete. Broadcasting intent: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_1

    .line 1241
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    iget v0, v4, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    move/from16 v22, v0

    .line 1242
    .local v22, messageRef:I
    move/from16 v0, v22

    iput v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 1243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isPendingMsgRepoEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/internal/telephony/HtcMessageHelper;->addMsgRef2PendingList(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Landroid/net/Uri;

    move-result-object v29

    .line 1247
    .local v29, retUri:Landroid/net/Uri;
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add msg ref to pending list: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    .end local v22           #messageRef:I
    .end local v29           #retUri:Landroid/net/Uri;
    :cond_1
    if-eqz v6, :cond_3

    .line 1254
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1255
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsSegmentsController;->checkOutSegment()V

    .line 1266
    :cond_2
    if-eqz v24, :cond_5

    .line 1267
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    .line 1268
    .local v3, msgobj:Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1541
    .end local v3           #msgobj:Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    :cond_3
    :goto_0
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_4

    if-eqz v14, :cond_4

    .line 1542
    const/16 v4, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1546
    :cond_4
    :goto_1
    return-void

    .line 1273
    :cond_5
    const/16 v31, 0x0

    .line 1274
    .local v31, sendNext:Landroid/content/Intent;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1275
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleAllPendingSmsTracker()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1276
    new-instance v32, Landroid/content/Intent;

    invoke-direct/range {v32 .. v32}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    .end local v31           #sendNext:Landroid/content/Intent;
    .local v32, sendNext:Landroid/content/Intent;
    :try_start_1
    const-string v4, "SendNextMsg"

    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v31, v32

    .line 1280
    .end local v32           #sendNext:Landroid/content/Intent;
    .restart local v31       #sendNext:Landroid/content/Intent;
    :cond_6
    if-nez v31, :cond_7

    .line 1281
    const/4 v4, -0x1

    :try_start_2
    invoke-virtual {v6, v4}, Landroid/app/PendingIntent;->send(I)V

    .line 1288
    :goto_2
    iget-object v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object/from16 v21, v0

    .line 1289
    .local v21, map:Ljava/util/HashMap;
    const-string v4, "destaddr"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1290
    .local v9, str:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1291
    .local v10, time:J
    const-wide/16 v12, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendDatamanageIntent(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 1293
    .end local v9           #str:Ljava/lang/String;
    .end local v10           #time:J
    .end local v21           #map:Ljava/util/HashMap;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1283
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v6, v4, v5, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1298
    .end local v31           #sendNext:Landroid/content/Intent;
    :cond_8
    const-string v4, "SMS"

    const-string v5, "SMS send failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 1304
    .local v35, tpmr:Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    .line 1305
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "assign trytpmr> "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    .end local v35           #tpmr:Ljava/lang/Integer;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getServiceState()I

    move-result v34

    .line 1310
    .local v34, ss:I
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retry count: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", ss: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const/16 v18, 0x0

    .line 1315
    .local v18, extraError:I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_b

    .line 1316
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v16

    .line 1317
    .local v16, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_FDN:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v16

    if-ne v0, v4, :cond_a

    .line 1318
    const/16 v18, 0x100

    .line 1319
    const-string v4, "SMS"

    const-string v5, "Command Error FDN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_a
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    .end local v16           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->isOutOfService(II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1332
    const-string v4, "SMS"

    const-string v5, "phone state not in service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    move/from16 v0, v34

    invoke-static {v0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1335
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1336
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsSegmentsController;->checkOutSegment()V

    .line 1338
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleAllPendingSmsTracker()Z

    goto/16 :goto_0

    .line 1346
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/android/internal/telephony/SMSDispatcher;->isUnderSendRetry(Lcom/android/internal/telephony/CommandException;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1357
    iget v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1358
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_12

    .line 1360
    const/16 v4, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(I)V

    .line 1361
    const/4 v14, 0x0

    .line 1365
    const/high16 v8, 0x2

    .line 1366
    .local v8, errorCode:I
    if-eqz v18, :cond_d

    .line 1367
    move/from16 v0, v18

    add-int/lit16 v4, v0, 0x7d0

    or-int/2addr v8, v4

    .line 1380
    :goto_3
    iget-object v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object/from16 v21, v0

    .line 1381
    .restart local v21       #map:Ljava/util/HashMap;
    const-string v4, "destaddr"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1386
    .local v15, dststr:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1388
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v15}, Lcom/android/internal/telephony/SMSDispatcher;->showRetryMessageDialog(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1371
    .end local v15           #dststr:Ljava/lang/String;
    .end local v21           #map:Ljava/util/HashMap;
    :cond_d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_e

    .line 1372
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    iget v4, v4, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    add-int/lit16 v4, v4, 0x7d0

    or-int/2addr v8, v4

    goto :goto_3

    .line 1375
    :cond_e
    const/4 v8, 0x1

    goto :goto_3

    .line 1390
    .restart local v15       #dststr:Ljava/lang/String;
    .restart local v21       #map:Ljava/util/HashMap;
    :cond_f
    iget v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_10

    iget v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_11

    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsAvailable()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 1392
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1394
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v15}, Lcom/android/internal/telephony/SMSDispatcher;->showRetryMessageDialog(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1401
    .end local v8           #errorCode:I
    .end local v15           #dststr:Ljava/lang/String;
    .end local v21           #map:Ljava/util/HashMap;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->HTC_SEND_RETRY_DELAY:[I

    iget v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v12, v12, -0x1

    aget v5, v5, v12

    add-int/lit16 v5, v5, 0x3e8

    int-to-long v12, v5

    invoke-virtual {v4, v12, v13}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1404
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "send retry, acquire wake lock "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v12, Lcom/android/internal/telephony/SMSDispatcher;->HTC_SEND_RETRY_DELAY:[I

    iget v13, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v13, v13, -0x1

    aget v12, v12, v13

    add-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " secs"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    .line 1409
    .local v30, retryMsg:Landroid/os/Message;
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->HTC_SEND_RETRY_DELAY:[I

    iget v5, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    int-to-long v4, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1412
    const/high16 v8, 0x2

    .line 1413
    .restart local v8       #errorCode:I
    if-eqz v18, :cond_13

    .line 1414
    move/from16 v0, v18

    add-int/lit16 v4, v0, 0x7d0

    or-int/2addr v8, v4

    .line 1430
    :goto_4
    :try_start_3
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SMS send failed error: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 1436
    .local v20, informationIntent:Landroid/content/Intent;
    if-eqz v24, :cond_15

    .line 1437
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    .line 1438
    .restart local v3       #msgobj:Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v5, v12, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1453
    .end local v3           #msgobj:Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    .end local v20           #informationIntent:Landroid/content/Intent;
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 1420
    :cond_13
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_14

    .line 1421
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    iget v4, v4, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    add-int/lit16 v4, v4, 0x7d0

    or-int/2addr v8, v4

    goto :goto_4

    .line 1424
    :cond_14
    const/4 v8, 0x1

    goto :goto_4

    .line 1445
    .restart local v20       #informationIntent:Landroid/content/Intent;
    :cond_15
    const-string v4, "under_retry"

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1447
    const-string v4, "retry_count"

    iget v5, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1449
    iget-object v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_3

    .line 1450
    iget-object v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v8, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1458
    .end local v8           #errorCode:I
    .end local v20           #informationIntent:Landroid/content/Intent;
    .end local v30           #retryMsg:Landroid/os/Message;
    :cond_16
    iget-object v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_3

    .line 1460
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportKddiMoPacketSms()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1462
    const/16 v17, 0x1

    .line 1464
    .local v17, error:I
    :try_start_4
    iget-object v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 1465
    :catch_2
    move-exception v4

    goto/16 :goto_1

    .line 1471
    .end local v17           #error:I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1472
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsSegmentsController;->checkOutSegment()V

    .line 1489
    :cond_18
    const/4 v8, 0x0

    .line 1490
    .restart local v8       #errorCode:I
    if-eqz v18, :cond_1a

    .line 1491
    move/from16 v0, v18

    add-int/lit16 v8, v0, 0x7d0

    .line 1507
    :goto_5
    :try_start_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_19

    .line 1508
    const/high16 v4, 0x2

    or-int/2addr v8, v4

    .line 1512
    :cond_19
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SMS send failed error: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    if-eqz v24, :cond_1c

    .line 1518
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    .line 1519
    .restart local v3       #msgobj:Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v5, v12, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1536
    .end local v3           #msgobj:Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    :catch_3
    move-exception v4

    goto/16 :goto_0

    .line 1497
    :cond_1a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1b

    .line 1498
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    iget v4, v4, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    add-int/lit16 v8, v4, 0x7d0

    goto :goto_5

    .line 1501
    :cond_1b
    const/4 v8, 0x1

    goto :goto_5

    .line 1524
    :cond_1c
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 1525
    .local v19, fillIn:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1526
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleAllPendingSmsTracker()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1527
    const-string v4, "SendNextMsg"

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1530
    :cond_1d
    const-string v4, "under_retry"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1531
    const-string v4, "retry_count"

    iget v5, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1532
    iget-object v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v8, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1293
    .end local v8           #errorCode:I
    .end local v18           #extraError:I
    .end local v19           #fillIn:Landroid/content/Intent;
    .end local v34           #ss:I
    .restart local v32       #sendNext:Landroid/content/Intent;
    :catch_4
    move-exception v4

    move-object/from16 v31, v32

    .end local v32           #sendNext:Landroid/content/Intent;
    .restart local v31       #sendNext:Landroid/content/Intent;
    goto/16 :goto_0
.end method

.method public abstract handleStatusReport(Landroid/os/AsyncResult;)V
.end method

.method protected isImproveSmsSending()Z
    .locals 2

    .prologue
    .line 3606
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 2762
    if-nez p1, :cond_0

    .line 2764
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2765
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2766
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2767
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2769
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 2770
    return-void
.end method

.method protected packagePdus(Landroid/content/Intent;Lcom/android/internal/telephony/SmsMessageBase;[[B[I)Landroid/content/Intent;
    .locals 2
    .parameter "it"
    .parameter "smsb"
    .parameter "pdus"
    .parameter "idxonsims"

    .prologue
    .line 2007
    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    .end local p1
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2008
    .restart local p1
    :cond_0
    const-string v0, "SimSmsRecordIndex"

    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2009
    const-string v0, "pdus"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2010
    const-string v0, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2011
    const-string v0, "idxonsims"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2012
    return-object p1
.end method

.method protected processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I
    .locals 33
    .parameter "sms"
    .parameter "concatRef"
    .parameter "portAddrs"

    .prologue
    .line 1635
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v5, "reference_number ="

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1636
    .local v32, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1637
    const-string v5, " AND address = ?"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    const-string v5, " AND count = ?"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1647
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND date = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    :cond_0
    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    const/4 v5, 0x1

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    .line 1653
    .local v9, whereArgs:[Ljava/lang/String;
    const/16 v27, 0x0

    check-cast v27, [[B

    .line 1655
    .local v27, pdus:[[B
    const/16 v21, 0x0

    .line 1658
    .local v21, idxonsimarray:[I
    const/4 v13, 0x0

    .line 1660
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1661
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 1664
    .local v14, cursorCount:I
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processMessagePart(): ref_num: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", seq_num: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,max_num: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const-string v5, "sequence"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1667
    .local v29, sequenceColumn:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v14, :cond_4

    .line 1668
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 1671
    move/from16 v0, v29

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1672
    .local v16, cursorseq:I
    const/16 v5, 0xff

    move/from16 v0, v16

    if-le v0, v5, :cond_1

    .line 1673
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 1675
    :cond_1
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v0, v16

    if-ne v0, v5, :cond_3

    .line 1677
    const-string v5, "SMS"

    const-string v6, "Duplcated SMS is received!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    const/4 v5, 0x1

    .line 1751
    if-eqz v13, :cond_2

    .end local v14           #cursorCount:I
    .end local v16           #cursorseq:I
    .end local v20           #i:I
    .end local v29           #sequenceColumn:I
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1819
    :cond_2
    :goto_2
    return v5

    .line 1667
    .restart local v14       #cursorCount:I
    .restart local v16       #cursorseq:I
    .restart local v20       #i:I
    .restart local v29       #sequenceColumn:I
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 1685
    .end local v16           #cursorseq:I
    :cond_4
    const/4 v5, -0x1

    :try_start_1
    invoke-interface {v13, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1688
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    add-int/lit8 v5, v5, -0x1

    if-eq v14, v5, :cond_7

    .line 1690
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 1691
    .local v31, values:Landroid/content/ContentValues;
    const-string v5, "date"

    new-instance v6, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1692
    const-string v5, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const-string v5, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v5

    if-lez v5, :cond_5

    .line 1699
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v5

    shl-int/lit8 v19, v5, 0x10

    .line 1700
    .local v19, highshort:I
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processmessagepart, highshort/oldRef is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int v5, v5, v19

    move-object/from16 v0, p2

    iput v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1705
    .end local v19           #highshort:I
    :cond_5
    const-string v5, "reference_number"

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1706
    const-string v5, "count"

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1707
    const-string v5, "sequence"

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1708
    if-eqz p3, :cond_6

    .line 1709
    const-string v5, "destination_port"

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1711
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1712
    const/4 v5, 0x1

    .line 1751
    if-eqz v13, :cond_2

    goto/16 :goto_1

    .line 1716
    .end local v31           #values:Landroid/content/ContentValues;
    :cond_7
    const-string v5, "pdu"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 1721
    .local v26, pduColumn:I
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    new-array v0, v5, [[B

    move-object/from16 v27, v0

    .line 1722
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    new-array v0, v5, [I

    move-object/from16 v21, v0

    .line 1723
    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v0, v14, :cond_9

    .line 1724
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 1725
    move/from16 v0, v29

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    long-to-int v15, v5

    .line 1727
    .local v15, cursorSequence:I
    const/16 v22, -0x1

    .line 1728
    .local v22, indexonsim:I
    const/16 v28, 0x0

    .line 1729
    .local v28, realseq:I
    const/16 v5, 0xff

    if-le v15, v5, :cond_8

    .line 1730
    and-int/lit16 v0, v15, 0xff

    move/from16 v28, v0

    .line 1731
    shr-int/lit8 v22, v15, 0x10

    .line 1732
    move/from16 v15, v28

    .line 1735
    :cond_8
    add-int/lit8 v5, v15, -0x1

    move/from16 v0, v26

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v27, v5

    .line 1737
    add-int/lit8 v5, v15, -0x1

    aput v22, v21, v5

    .line 1723
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 1741
    .end local v15           #cursorSequence:I
    .end local v22           #indexonsim:I
    .end local v28           #realseq:I
    :cond_9
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v6

    aput-object v6, v27, v5

    .line 1742
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v6

    aput v6, v21, v5

    .line 1745
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1751
    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1764
    :cond_a
    if-eqz p3, :cond_e

    .line 1765
    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v6, 0xb84

    if-ne v5, v6, :cond_d

    .line 1767
    new-instance v25, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v25 .. v25}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1768
    .local v25, output:Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x0

    :goto_4
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move/from16 v0, v20

    if-ge v0, v5, :cond_c

    .line 1769
    aget-object v5, v27, v20

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v24

    .line 1770
    .local v24, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v17

    .line 1771
    .local v17, data:[B
    const/4 v5, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1768
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 1746
    .end local v14           #cursorCount:I
    .end local v17           #data:[B
    .end local v20           #i:I
    .end local v24           #msg:Landroid/telephony/SmsMessage;
    .end local v25           #output:Ljava/io/ByteArrayOutputStream;
    .end local v26           #pduColumn:I
    .end local v29           #sequenceColumn:I
    :catch_0
    move-exception v18

    .line 1747
    .local v18, e:Landroid/database/SQLException;
    :try_start_2
    const-string v5, "SMS"

    const-string v6, "Can\'t access multipart SMS database"

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1749
    const/4 v5, 0x2

    .line 1751
    if-eqz v13, :cond_2

    goto/16 :goto_1

    .end local v18           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v13, :cond_b

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v5

    .line 1774
    .restart local v14       #cursorCount:I
    .restart local v20       #i:I
    .restart local v25       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v26       #pduColumn:I
    .restart local v29       #sequenceColumn:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v25 .. v25}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v5

    goto/16 :goto_2

    .line 1777
    .end local v25           #output:Ljava/io/ByteArrayOutputStream;
    :cond_d
    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1819
    :goto_5
    const/4 v5, -0x1

    goto/16 :goto_2

    .line 1785
    :cond_e
    const/4 v11, 0x0

    .line 1786
    .local v11, bLBS:Z
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_11

    .line 1788
    new-instance v25, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v25 .. v25}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1789
    .restart local v25       #output:Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x0

    :goto_6
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move/from16 v0, v20

    if-ge v0, v5, :cond_f

    .line 1790
    aget-object v5, v27, v20

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v24

    .line 1791
    .restart local v24       #msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v17

    .line 1792
    .restart local v17       #data:[B
    const/4 v5, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1789
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 1794
    .end local v17           #data:[B
    .end local v24           #msg:Landroid/telephony/SmsMessage;
    :cond_f
    invoke-virtual/range {v25 .. v25}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 1795
    .local v12, ba:[B
    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v30

    .line 1797
    .local v30, str:Ljava/lang/String;
    if-eqz v30, :cond_11

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_11

    const-string v5, "//VZW"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "//VZW"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_11

    .line 1800
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->checkVZWDirectedSMS(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 1801
    const-string v5, "SMS"

    const-string v6, "VZW GSM Directed SMS true, return handled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    const/4 v5, -0x1

    goto/16 :goto_2

    .line 1804
    :cond_10
    const/4 v11, 0x1

    .line 1805
    const-string v5, "SMS"

    const-string v6, "SMSdispatch/ isLBSMessage"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    .end local v12           #ba:[B
    .end local v25           #output:Ljava/io/ByteArrayOutputStream;
    .end local v30           #str:Ljava/lang/String;
    :cond_11
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 1812
    .local v23, it:Landroid/content/Intent;
    const/4 v5, 0x1

    if-ne v11, v5, :cond_12

    .line 1813
    const-string v5, "lbs"

    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1814
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->prehandleMsg([B[[B)Z

    move-result v3

    if-eqz v3, :cond_9528

    .line 671
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 674
    :cond_9528
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    move-object/from16 v3, v27

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->packagePdus(Landroid/content/Intent;Lcom/android/internal/telephony/SmsMessageBase;[[B[I)Landroid/content/Intent;

    .line 1815
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus(Landroid/content/Intent;[[B)V

    goto/16 :goto_5
.end method

.method protected processMessagePart([BLjava/lang/String;IIIJIZ)I
    .locals 24
    .parameter "pdu"
    .parameter "address"
    .parameter "referenceNumber"
    .parameter "sequenceNumber"
    .parameter "messageCount"
    .parameter "timestamp"
    .parameter "destPort"
    .parameter "isCdmaWapPush"

    .prologue
    .line 1845
    const/16 v20, 0x0

    check-cast v20, [[B

    .line 1846
    .local v20, pdus:[[B
    const/4 v9, 0x0

    .line 1849
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 1850
    .local v21, refNumber:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 1853
    .local v22, seqNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v6, "address=? AND reference_number=? AND sequence=?"

    const/4 v8, 0x3

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v21, v7, v8

    const/4 v8, 0x2

    aput-object v22, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1858
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1859
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding duplicate message segment from address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1862
    .local v18, oldPduString:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v17

    .line 1863
    .local v17, oldPdu:[B
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1864
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: dup message segment PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is different from existing PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1867
    :cond_0
    const/4 v3, 0x1

    .line 1925
    if-eqz v9, :cond_1

    .end local v17           #oldPdu:[B
    .end local v18           #oldPduString:Ljava/lang/String;
    .end local v21           #refNumber:Ljava/lang/String;
    .end local v22           #seqNumber:Ljava/lang/String;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1971
    :cond_1
    :goto_1
    return v3

    .line 1869
    .restart local v21       #refNumber:Ljava/lang/String;
    .restart local v22       #seqNumber:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1872
    const-string v6, "address=? AND reference_number=?"

    .line 1873
    .local v6, where:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v7, v3

    const/4 v3, 0x1

    aput-object v21, v7, v3

    .line 1874
    .local v7, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1876
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1877
    .local v10, cursorCount:I
    add-int/lit8 v3, p5, -0x1

    if-eq v10, v3, :cond_4

    .line 1879
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1880
    .local v23, values:Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1881
    const-string v3, "pdu"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const-string v3, "address"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    const-string v3, "reference_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1884
    const-string v3, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1885
    const-string v3, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1886
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_3

    .line 1887
    const-string v3, "destination_port"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1889
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1890
    const/4 v3, 0x1

    .line 1925
    if-eqz v9, :cond_1

    goto/16 :goto_0

    .line 1894
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_4
    move/from16 v0, p5

    new-array v0, v0, [[B

    move-object/from16 v20, v0

    .line 1895
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    if-ge v15, v10, :cond_7

    .line 1896
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1897
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1899
    .local v11, cursorSequence:I
    if-nez p9, :cond_5

    .line 1900
    add-int/lit8 v11, v11, -0x1

    .line 1902
    :cond_5
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v20, v11

    .line 1907
    if-nez v11, :cond_6

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1908
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p8

    .line 1895
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1913
    .end local v11           #cursorSequence:I
    :cond_7
    if-eqz p9, :cond_9

    .line 1914
    aput-object p1, v20, p4

    .line 1920
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1925
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1929
    :cond_8
    if-eqz p9, :cond_d

    .line 1931
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1932
    .local v19, output:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    :goto_4
    move/from16 v0, p5

    if-ge v15, v0, :cond_b

    .line 1934
    aget-object v3, v20, v15

    const/4 v4, 0x0

    aget-object v5, v20, v15

    array-length v5, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1932
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1916
    .end local v19           #output:Ljava/io/ByteArrayOutputStream;
    :cond_9
    add-int/lit8 v3, p4, -0x1

    :try_start_2
    aput-object p1, v20, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1921
    .end local v6           #where:Ljava/lang/String;
    .end local v7           #whereArgs:[Ljava/lang/String;
    .end local v10           #cursorCount:I
    .end local v15           #i:I
    .end local v21           #refNumber:Ljava/lang/String;
    .end local v22           #seqNumber:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 1922
    .local v14, e:Landroid/database/SQLException;
    :try_start_3
    const-string v3, "SMS"

    const-string v4, "Can\'t access multipart SMS database"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1923
    const/4 v3, 0x2

    .line 1925
    if-eqz v9, :cond_1

    goto/16 :goto_0

    .end local v14           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    .line 1936
    .restart local v6       #where:Ljava/lang/String;
    .restart local v7       #whereArgs:[Ljava/lang/String;
    .restart local v10       #cursorCount:I
    .restart local v15       #i:I
    .restart local v19       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #refNumber:Ljava/lang/String;
    .restart local v22       #seqNumber:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 1939
    .local v13, datagram:[B
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_c

    .line 1941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v3, v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v3

    goto/16 :goto_1

    .line 1943
    :cond_c
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v20, v0

    .line 1944
    const/4 v3, 0x0

    aput-object v13, v20, v3

    .line 1946
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1947
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 1952
    .end local v13           #datagram:[B
    .end local v19           #output:Ljava/io/ByteArrayOutputStream;
    :cond_d
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_10

    .line 1953
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_f

    .line 1955
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1956
    .restart local v19       #output:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    :goto_5
    move/from16 v0, p5

    if-ge v15, v0, :cond_e

    .line 1957
    aget-object v3, v20, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v16

    .line 1958
    .local v16, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v12

    .line 1959
    .local v12, data:[B
    const/4 v3, 0x0

    array-length v4, v12

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1956
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1962
    .end local v12           #data:[B
    .end local v16           #msg:Landroid/telephony/SmsMessage;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v3

    goto/16 :goto_1

    .line 1965
    .end local v19           #output:Ljava/io/ByteArrayOutputStream;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1971
    :goto_6
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 1969
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_6
.end method

.method public requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "DmString"
    .parameter "response"

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 3486
    return-void
.end method

.method protected resetLastSmsFingerprint()V
    .locals 0

    .prologue
    .line 2948
    return-void
.end method

.method public abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method public abstract sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V
    .locals 9
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "destaddr"

    .prologue
    .line 2270
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 2271
    return-void
.end method

.method protected sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "concatebundle"
    .parameter "destaddr"

    .prologue
    const/4 v6, 0x0

    .line 2361
    const-string v4, "SMS"

    const-string v5, "sendRawPduWithBundle"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v4, :cond_2

    .line 2363
    if-eqz p3, :cond_0

    .line 2365
    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2368
    :cond_0
    :goto_0
    const-string v4, "SMS"

    const-string v5, "Device does not support sending sms."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    :cond_1
    :goto_1
    return-void

    .line 2372
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2373
    invoke-virtual/range {p0 .. p8}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduWithBundle2([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    .line 2377
    :cond_3
    if-nez p2, :cond_4

    .line 2378
    if-eqz p3, :cond_1

    .line 2380
    :try_start_1
    const-string v4, "SMS"

    const-string v5, "sendRawPduWithBundle, send fail due to NULL pdu"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    const/4 v4, 0x3

    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2382
    :catch_0
    move-exception v4

    goto :goto_1

    .line 2387
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2388
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "smsc"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2389
    const-string v4, "pdu"

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2390
    const-string v4, "destaddr"

    invoke-virtual {v1, v4, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2392
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v3, v1, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 2394
    .local v3, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iput-boolean p5, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 2395
    iput-boolean p6, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    .line 2398
    if-eqz p7, :cond_5

    .line 2399
    const-string v4, "REFERENCE_NUMBER"

    invoke-virtual {p7, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatRef:I

    .line 2400
    const-string v4, "COUNT"

    invoke-virtual {p7, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCount:I

    .line 2401
    const-string v4, "SEQUENCE"

    invoke-virtual {p7, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSequence:I

    .line 2402
    const-string v4, "DESTADDR"

    invoke-virtual {p7, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatDest:Ljava/lang/String;

    .line 2403
    const-string v4, "DATE"

    invoke-virtual {p7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDate:I

    .line 2407
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2408
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2409
    const-string v4, "DEST_ADDRESS"

    invoke-virtual {p7, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRecipient:Ljava/lang/String;

    .line 2410
    const-string v4, "3GPP2_RAW_PDU"

    invoke-virtual {p7, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRawPdu:[B

    .line 2416
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getServiceState()I

    move-result v2

    .line 2417
    .local v2, ss:I
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->isNotInService(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2418
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 2420
    :cond_6
    invoke-static {p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 2421
    .local v0, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2423
    const/16 v4, 0x1a

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(I)V

    .line 2424
    const/16 v4, 0x19

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2428
    :cond_7
    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2366
    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #ss:I
    .end local v3           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method protected sendRawPduWithBundle2([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 10
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "concatebundle"
    .parameter "destaddr"

    .prologue
    .line 2295
    if-nez p2, :cond_1

    .line 2296
    if-eqz p3, :cond_0

    .line 2298
    :try_start_0
    const-string v8, "SMS"

    const-string v9, "sendRawPduWithBundle2, send fail due to NULL pdu"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    const/4 v8, 0x3

    invoke-virtual {p3, v8}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2356
    :cond_0
    :goto_0
    return-void

    .line 2305
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2306
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "smsc"

    invoke-virtual {v2, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2307
    const-string v8, "pdu"

    invoke-virtual {v2, v8, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    const-string v8, "destaddr"

    move-object/from16 v0, p8

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    new-instance v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v7, v2, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 2312
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iput-boolean p5, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 2313
    move/from16 v0, p6

    iput-boolean v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    .line 2315
    if-eqz p7, :cond_2

    .line 2316
    const-string v8, "REFERENCE_NUMBER"

    const/4 v9, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatRef:I

    .line 2317
    const-string v8, "COUNT"

    const/4 v9, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCount:I

    .line 2318
    const-string v8, "SEQUENCE"

    const/4 v9, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSequence:I

    .line 2319
    const-string v8, "DESTADDR"

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatDest:Ljava/lang/String;

    .line 2320
    const-string v8, "DATE"

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDate:I

    .line 2323
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2324
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2325
    const-string v8, "DEST_ADDRESS"

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRecipient:Ljava/lang/String;

    .line 2326
    const-string v8, "3GPP2_RAW_PDU"

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRawPdu:[B

    .line 2331
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 2333
    .local v6, ss:I
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->isNotInService(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2334
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 2336
    :cond_3
    invoke-static {p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    .line 2337
    .local v1, appName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2340
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isNeedShowRoamingGuard()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2341
    if-eqz p5, :cond_4

    const/4 v4, 0x1

    .line 2342
    .local v4, org1:I
    :goto_1
    if-eqz p6, :cond_5

    const/4 v5, 0x1

    .line 2343
    .local v5, org2:I
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v4, v5, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2347
    .local v3, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2341
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #org1:I
    .end local v5           #org2:I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 2342
    .restart local v4       #org1:I
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 2351
    .end local v4           #org1:I
    :cond_6
    move/from16 v0, p6

    invoke-virtual {p0, v7, p5, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto/16 :goto_0

    .line 2353
    :cond_7
    const/4 v8, 0x7

    invoke-virtual {p0, v8, v7}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2300
    .end local v1           #appName:Ljava/lang/String;
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #ss:I
    .end local v7           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method public abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V
.end method

.method public abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
.end method

.method setCBEntry(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 3072
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3074
    .local v0, reply:Landroid/os/Message;
    return-void
.end method

.method setCSCB(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "mode"
    .parameter "mMsgId"
    .parameter "mDsc"

    .prologue
    .line 3083
    const-string v1, "SMS"

    const-string v2, "setCSCB()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3086
    .local v0, reply:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setATCSCB(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3087
    return-void
.end method

.method public setSMSCenter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "smscAddress"
    .parameter "onComplete"

    .prologue
    .line 2566
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2567
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 2569
    return-void
.end method

.method protected showRetryMessageDialog(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ILjava/lang/String;)V
    .locals 6
    .parameter "smstracker"
    .parameter "error"
    .parameter "dstaddr"

    .prologue
    .line 2622
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.mms.hfm.speakSentFail"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2623
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "address"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2624
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2627
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 2628
    .local v2, r:Landroid/content/res/Resources;
    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040507

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x10403fe

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$5;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$5;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x10403ff

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$4;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$4;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$3;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 2687
    .local v1, d:Lcom/htc/dialog/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 2688
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2690
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2695
    return-void
.end method

.method public updateRadiotechForVerizon()V
    .locals 2

    .prologue
    .line 3633
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3634
    .local v0, response:Landroid/os/Message;
    const-string v1, "C8EC000D"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 3635
    return-void
.end method

.method private prehandleMsg(Lcom/android/internal/telephony/SmsMessageBase;[[B)Z
    .locals 3
    .parameter "sms"
    .parameter "pdus"

    .prologue
    const/4 v0, 0x1

    .line 1130
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/baidu/internal/telephony/SMSPlugin;->baiduPrehandleMsg(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1131
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/baidu/internal/telephony/SMSPlugin;->dispatchDisturbSmsPdu(Landroid/content/Context;[[BLjava/lang/String;)V

    .line 1143
    :cond_0
    :goto_0
    return v0

    .line 1136
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/baidu/internal/telephony/SMSPlugin;->shouldFilterForTrafficMonitor(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1137
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/baidu/internal/telephony/SMSPlugin;->dispatchTrafficMonitorSmsPdu(Landroid/content/Context;[[BLjava/lang/String;)V

    .line 1138
    sget-boolean v1, Lcom/baidu/internal/telephony/SMSPlugin;->discard:Z

    if-nez v1, :cond_0

    .line 1143
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prehandleMsg([B[[B)Z
    .locals 2
    .parameter "pdu"
    .parameter "pdus"

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    iget-object v0, v1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 1125
    .local v0, sms:Lcom/android/internal/telephony/SmsMessageBase;
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/SMSDispatcher;->prehandleMsg(Lcom/android/internal/telephony/SmsMessageBase;[[B)Z

    move-result v1

    return v1
.end method
