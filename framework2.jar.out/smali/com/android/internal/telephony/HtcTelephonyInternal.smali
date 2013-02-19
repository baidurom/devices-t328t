.class public Lcom/android/internal/telephony/HtcTelephonyInternal;
.super Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcTelephonyInternal$1;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$ECaveResult;
    }
.end annotation


# static fields
.field private static final CMD_CLOSE_CHANNEL:I = 0x81

.field private static final CMD_EXCHANGE_APDU:I = 0x7d

.field private static final CMD_HTC_CW_QUERY_CAVE:I = 0x66

.field private static final CMD_HTC_CW_QUERY_CAVE_RESULT:I = 0x67

.field private static final CMD_HTC_CW_QUERY_MD5:I = 0x6a

.field private static final CMD_HTC_CW_QUERY_MD5_RESULT:I = 0x6b

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE:I = 0x72

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE_RESULT:I = 0x73

.field private static final CMD_HTC_CW_QUERY_UIMAUTH:I = 0x76

.field private static final CMD_HTC_CW_QUERY_UIMAUTH_RESULT:I = 0x77

.field private static final CMD_HTC_CW_QUERY_VPM:I = 0x6e

.field private static final CMD_HTC_CW_QUERY_VPM_RESULT:I = 0x6f

.field private static final CMD_HTC_CW_REQUEST_CAVE:I = 0x64

.field private static final CMD_HTC_CW_REQUEST_CAVE_RESULT:I = 0x65

.field private static final CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES:I = 0x7b

.field private static final CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES_RESULT:I = 0x7c

.field private static final CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE:I = 0x78

.field private static final CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE_RESULT:I = 0x79

.field private static final CMD_HTC_CW_REQUEST_MD5:I = 0x68

.field private static final CMD_HTC_CW_REQUEST_MD5_RESULT:I = 0x69

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE:I = 0x70

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM:I = 0x74

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM_RESULT:I = 0x75

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_RESULT:I = 0x71

.field private static final CMD_HTC_CW_REQUEST_VPM:I = 0x6c

.field private static final CMD_HTC_CW_REQUEST_VPM_RESULT:I = 0x6d

.field private static final CMD_HTC_GET_SECTOR_ID:I = 0x83

.field private static final CMD_HTC_GET_SECTOR_ID_DONE:I = 0x84

.field private static final CMD_HTC_PERMANENT_DETACH_LTE:I = 0x88

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_DONE:I = 0x8b

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP2:I = 0x89

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP3:I = 0x8a

.field private static final CMD_HTC_REQUEST_AKA:I = 0x8c

.field private static final CMD_HTC_REQUEST_AKA_DONE:I = 0x8d

.field private static final CMD_HTC_REQUEST_CLEAR_CDMA_SYS_RECORD_CONTENT:I = 0x6b6

.field private static final CMD_HTC_REQUEST_CLEAR_CDMA_SYS_RECORD_CONTENT_RESULT:I = 0x6b7

.field private static final CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB:I = 0x9e

.field private static final CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB_DONE:I = 0x9f

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP:I = 0x8e

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP_DONE:I = 0x8f

.field private static final CMD_HTC_REQUEST_GBA_NAF:I = 0x90

.field private static final CMD_HTC_REQUEST_GBA_NAF_DONE:I = 0x91

.field private static final CMD_HTC_REQUEST_GET_CDMA_SMART_NETWORK_STATUS:I = 0x6b0

.field private static final CMD_HTC_REQUEST_GET_CDMA_SMART_NETWORK_STATUS_RESULT:I = 0x6b1

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_CONTENT:I = 0x6b4

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_CONTENT_RESULT:I = 0x6b5

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_SIZE:I = 0x6b2

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_SIZE_RESULT:I = 0x6b3

.field private static final CMD_HTC_REQUEST_GET_CURRENT_LOC:I = 0x9c

.field private static final CMD_HTC_REQUEST_GET_CURRENT_LOC_DONE:I = 0x9d

.field private static final CMD_HTC_REQUEST_GET_DRX_INFO:I = 0xad

.field private static final CMD_HTC_REQUEST_GET_DRX_INFO_DONE:I = 0xae

.field private static final CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE:I = 0xab

.field private static final CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE_RESULT:I = 0xac

.field private static final CMD_HTC_REQUEST_GET_POWER_INFO:I = 0xb1

.field private static final CMD_HTC_REQUEST_GET_POWER_INFO_DONE:I = 0xb2

.field private static final CMD_HTC_REQUEST_GET_WIMAX_NAI:I = 0xa0

.field private static final CMD_HTC_REQUEST_GET_WIMAX_NAI_DONE:I = 0xa1

.field private static final CMD_HTC_REQUEST_SET_CDMA_SMART_NETWORK:I = 0x6ae

.field private static final CMD_HTC_REQUEST_SET_CDMA_SMART_NETWORK_RESULT:I = 0x6af

.field private static final CMD_HTC_REQUEST_SET_CLEAR_LOC_PROCESS_DB:I = 0x98

.field private static final CMD_HTC_REQUEST_SET_CLEAR_LOC_PROCESS_DB_DONE:I = 0x99

.field private static final CMD_HTC_REQUEST_SET_LOC_PROCESS_DB:I = 0x9a

.field private static final CMD_HTC_REQUEST_SET_LOC_PROCESS_DB_DONE:I = 0x9b

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION:I = 0x85

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE:I = 0x86

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM:I = 0x92

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM_DONE:I = 0x93

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL:I = 0x94

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT:I = 0x95

.field private static final CMD_HTC_USIM_AKA_AUTH:I = 0xaf

.field private static final CMD_HTC_USIM_AKA_AUTH_DONE:I = 0xb0

.field private static final CMD_OPEN_CHANNEL:I = 0x7f

.field private static final CMD_SIM_IO:I = 0x96

.field private static final DBG:Z = false

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x82

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x7e

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x80

.field private static final EVENT_SIM_IO_DONE:I = 0x97

.field private static final HTC_CW_AUTHEN_AKACAVE_SUPPORTED:I = 0x4

.field private static final HTC_CW_AUTHEN_CAVE_SUPPORTED:I = 0x1

.field private static final HTC_CW_AUTHEN_MD5_SUPPORTED:I = 0x2

.field private static final INTER_DBG:Z = false

.field public static final METHOD_NAME_CLEAR_CDMA_SYS_RECORD_CONTENT:Ljava/lang/String; = "clearCdmaSysRecordContent"

.field public static final METHOD_NAME_GET_CDMA_SMART_NETWORK_STATUS:Ljava/lang/String; = "getCdmaSmartNetworkStatus"

.field public static final METHOD_NAME_GET_CDMA_SYS_RECORD_CONTENT:Ljava/lang/String; = "getCdmaSysRecordContent"

.field public static final METHOD_NAME_GET_CDMA_SYS_RECORD_SIZE:Ljava/lang/String; = "getCdmaSysRecordSize"

.field public static final METHOD_NAME_GET_LTE_LAST_ERROR_CODE:Ljava/lang/String; = "getLTELastErrorCode"

.field public static final METHOD_NAME_SET_CDMA_SMART_NETWORK:Ljava/lang/String; = "setCdmaSmartNetwork"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final RESULT_HTC_CW_AUTHEN_FAIL:I = 0x2

.field private static final RESULT_HTC_CW_AUTHEN_SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "HtcTelephonyInternal"

.field public static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_BSID:Ljava/lang/String; = "getCdmaSysRecordContent_bsid"

.field public static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_NID:Ljava/lang/String; = "getCdmaSysRecordContent_nid"

.field public static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_SID:Ljava/lang/String; = "getCdmaSysRecordContent_sid"

.field public static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_SIZE:Ljava/lang/String; = "getCdmaSysRecordContent_size"


# instance fields
.field private lastError:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

.field private mOldNV_10:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mTeleMgr:Landroid/telephony/TelephonyManager;

.field methodMap:Ljava/util/HashMap;

.field private rejectAll:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .parameter "phone"
    .parameter "ci"

    .prologue
    .line 1365
    invoke-direct {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;-><init>()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->rejectAll:Z

    .line 1382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    .line 1366
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1367
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    .line 1368
    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/HtcTelephonyInternal$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    .line 1369
    iput-object p2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1376
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiUtils;->init(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1378
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->InitMethodMap()V

    .line 1380
    return-void
.end method

.method private InitMethodMap()V
    .locals 3

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getLTELastErrorCode"

    const/16 v2, 0xab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setCdmaSmartNetwork"

    const/16 v2, 0x6ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCdmaSmartNetworkStatus"

    const/16 v2, 0x6b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCdmaSysRecordSize"

    const/16 v2, 0x6b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCdmaSysRecordContent"

    const/16 v2, 0x6b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "clearCdmaSysRecordContent"

    const/16 v2, 0x6b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;

    return-object p1
.end method

.method private appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 3
    .parameter "os"
    .parameter "data"

    .prologue
    .line 1950
    array-length v0, p2

    .line 1953
    .local v0, len:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 1954
    const/16 v0, 0xff

    .line 1955
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "Too long value in GBA Bootstrapping parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1959
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1960
    return-void
.end method

.method private exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1617
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 1618
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1619
    :cond_0
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const/16 v11, 0x7d

    new-instance v1, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v11, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IccIoResult;

    .line 1623
    .local v9, response:Lcom/android/internal/telephony/IccIoResult;
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iget v1, v9, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    shl-int/lit8 v1, v1, 0x8

    iget v2, v9, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    add-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1626
    .local v10, s:Ljava/lang/String;
    iget-object v1, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    if-eqz v1, :cond_1

    .line 1627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1629
    :cond_1
    return-object v10
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 1333
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1334
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1337
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 1338
    .local v1, request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1339
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1342
    monitor-enter v1

    .line 1343
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1345
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1346
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1350
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1351
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 1350
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .parameter "command"

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 1362
    return-void
.end method


# virtual methods
.method public akaAuthentication([B[B)Landroid/os/Bundle;
    .locals 5
    .parameter "rand"
    .parameter "autn"

    .prologue
    .line 2010
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2011
    :cond_0
    const-string v2, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inavlid data: rand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", autn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    const/4 v1, 0x0

    .line 2020
    :goto_0
    return-object v1

    .line 2014
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2015
    .local v0, argument:Landroid/os/Bundle;
    const-string v2, "rand"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2016
    const-string v2, "autn"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2018
    const/16 v2, 0xaf

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2020
    .local v1, result:Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #result:Ljava/lang/Object;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public calculateAkaResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 1880
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1881
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "calculateAkaResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    :goto_0
    return-object v1

    .line 1885
    :cond_0
    const/16 v2, 0x8c

    new-instance v3, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1887
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0           #result:Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 1897
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1898
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "calculateGbaBootstrappingResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :goto_0
    return-object v1

    .line 1902
    :cond_0
    const/16 v2, 0x8e

    new-instance v3, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1904
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0           #result:Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateNafExternalKey([B)[B
    .locals 4
    .parameter "nafId"

    .prologue
    const/4 v1, 0x0

    .line 1914
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1915
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :goto_0
    return-object v1

    .line 1919
    :cond_0
    const/16 v2, 0x90

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1921
    .local v0, result:Ljava/lang/Object;
    if-eqz v0, :cond_1

    check-cast v0, [B

    .end local v0           #result:Ljava/lang/Object;
    check-cast v0, [B

    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 1672
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 1673
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1674
    :cond_0
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> closeIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const/16 v1, 0x81

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1677
    .local v0, err:Ljava/lang/Integer;
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< closeIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 1679
    const/4 v1, 0x1

    .line 1681
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 1398
    return-void
.end method

.method public enablePS_W2G_Handover(I)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2679
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->enablePS_W2G_Handover(ILandroid/os/Message;)V

    .line 2681
    :cond_0
    return-void
.end method

.method public enableRegistrationState_wifi_call(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2492
    const-string v0, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRegistrationState_wifi_call: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->enableRegistrationState_wifi_call(ILandroid/os/Message;)V

    .line 2495
    if-eqz p1, :cond_0

    .line 2496
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->wifi2GRetry()V

    .line 2500
    :cond_0
    return-void

    .line 2493
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 1403
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    :goto_0
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "PhoneSubInfo finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    return-void

    .line 1404
    :catch_0
    move-exception v0

    .line 1405
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .parameter "methodName"
    .parameter "bundle"

    .prologue
    .line 2593
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2594
    .local v1, mapResult:Ljava/lang/Integer;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2595
    .local v0, bundleResult:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 2597
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2607
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2613
    :goto_0
    return-object v2

    .line 2603
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bundleResult:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .restart local v0       #bundleResult:Landroid/os/Bundle;
    move-object v2, v0

    .line 2610
    goto :goto_0

    .line 2613
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 2597
    :sswitch_data_0
    .sparse-switch
        0xab -> :sswitch_0
        0x6b0 -> :sswitch_0
        0x6b2 -> :sswitch_0
        0x6b4 -> :sswitch_0
    .end sparse-switch
.end method

.method public generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .parameter "methodName"
    .parameter "bundle"

    .prologue
    .line 2618
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2619
    .local v1, mapResult:Ljava/lang/Integer;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2620
    .local v0, bundleResult:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 2622
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2630
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2636
    :goto_0
    return-object v2

    .line 2626
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bundleResult:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .restart local v0       #bundleResult:Landroid/os/Bundle;
    move-object v2, v0

    .line 2633
    goto :goto_0

    .line 2636
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 2622
    :sswitch_data_0
    .sparse-switch
        0x6ae -> :sswitch_0
        0x6b6 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCallStateExtInternal(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2521
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailIccStatusExt(I)[I
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDetailIccStatusExt(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getDrxInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2685
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    const/16 v2, 0xad

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2688
    .local v0, returnResult:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 2691
    .end local v0           #returnResult:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #returnResult:Ljava/lang/Object;
    :cond_0
    check-cast v0, [I

    .end local v0           #returnResult:Ljava/lang/Object;
    check-cast v0, [I

    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 3

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGlobalDataRoamingOption()I

    move-result v0

    .line 2045
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcServiceStateExtInternal(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2531
    const/4 v0, 0x0

    return v0
.end method

.method public getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    .line 2182
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2184
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 1691
    iget v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I

    return v0
.end method

.method public getNetworkTypeExtInternal(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2511
    const/4 v0, 0x0

    return v0
.end method

.method public getPowerInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2699
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    const/16 v2, 0xb1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2702
    .local v0, returnResult:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 2705
    .end local v0           #returnResult:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #returnResult:Ljava/lang/Object;
    :cond_0
    check-cast v0, [I

    .end local v0           #returnResult:Ljava/lang/Object;
    check-cast v0, [I

    goto :goto_0
.end method

.method public getRejectAllCalls()Z
    .locals 3

    .prologue
    .line 2288
    const-string v0, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NFC] getRejectAllCalls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->rejectAll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->rejectAll:Z

    return v0
.end method

.method public getScreenBusyState()Z
    .locals 2

    .prologue
    .line 2397
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2398
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2399
    invoke-interface {v0}, Lcom/android/internal/telephony/cat/AppInterface;->getScreenBusyState()Z

    move-result v1

    .line 2401
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSectorId(I)Ljava/lang/String;
    .locals 5
    .parameter "requestedNetworkType"

    .prologue
    const/4 v1, 0x0

    .line 1860
    if-ltz p1, :cond_0

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 1861
    :cond_0
    const-string v2, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSectorId(): Invalid requestedNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1867
    :goto_0
    return-object v0

    .line 1865
    :cond_1
    const/16 v2, 0x83

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1867
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public hello_getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCatServiceReady()Z
    .locals 2

    .prologue
    .line 2456
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2457
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2458
    const/4 v1, 0x1

    .line 2460
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launchCallForwardingSettings()V
    .locals 3

    .prologue
    .line 2298
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "[NFC] launchCallForwardingSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2303
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2304
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2305
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2307
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public notifyKeyEvent(I)V
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 2385
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2386
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2388
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cat/AppInterface;->notifyUserActivity(I)V

    .line 2390
    :cond_0
    return-void
.end method

.method public notifyScreenBusy(Z)V
    .locals 1
    .parameter "busy"

    .prologue
    .line 2365
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2366
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2368
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cat/AppInterface;->updateIdleScreenState(Z)V

    .line 2370
    :cond_0
    return-void
.end method

.method public onCmdResponse(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 2409
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const-string v2, "CMD_DETATIL"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 2410
    .local v1, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string v2, "RES_CODE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/cat/ResultCode;->fromInt(I)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 2411
    const-string v2, "MENU_SELECT"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setMenuSelection(I)V

    .line 2412
    const-string v2, "INPUT"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setInput(Ljava/lang/String;)V

    .line 2413
    const-string v2, "YES_NO"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setYesNo(Z)V

    .line 2414
    const-string v2, "CONFIRM"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 2417
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2418
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2419
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 2421
    :cond_0
    return-void
.end method

.method public onHandleEventList(IZ)V
    .locals 1
    .parameter "event"
    .parameter "enable"

    .prologue
    .line 2429
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2430
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2431
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/cat/AppInterface;->onHandleEventList(IZ)V

    .line 2433
    :cond_0
    return-void
.end method

.method public onLanguageEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "language"

    .prologue
    .line 2440
    new-instance v1, Lcom/android/internal/telephony/cat/EventResponseMessage;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/EventResponseMessage;-><init>(I)V

    .line 2441
    .local v1, resMsg:Lcom/android/internal/telephony/cat/EventResponseMessage;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/cat/EventResponseMessage;->setLanguage(Ljava/lang/String;)V

    .line 2444
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2445
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2446
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/AppInterface;->sendEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V

    .line 2448
    :cond_0
    return-void
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 4
    .parameter "AID"

    .prologue
    .line 1658
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 1659
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1660
    :cond_0
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> openIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const/16 v1, 0x7f

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1662
    .local v0, channel:Ljava/lang/Integer;
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< openIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public queryCAVE()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1437
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    const/16 v0, 0x66

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryMD5()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1515
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    const/16 v0, 0x6a

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public querySSDUpdate()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1459
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    const/16 v0, 0x72

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryUIMAUTH()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1526
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const/16 v0, 0x76

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryVPM()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    const/16 v0, 0x6e

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "randu"

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestConfigLocProcessDB(IIII)Z
    .locals 6
    .parameter "enable"
    .parameter "num_neighbor_pilot"
    .parameter "num_record"
    .parameter "time"

    .prologue
    const/4 v2, 0x0

    .line 2575
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "HtcTelephonyInternal"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Integer;

    .line 2580
    .local v0, para:[Ljava/lang/Integer;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2581
    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2582
    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2583
    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2584
    const/16 v3, 0x9e

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2585
    .local v1, result:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #result:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    return v2
.end method

.method public requestGetBtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1824
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetBtid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetCurrentLoc()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2566
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    const/16 v2, 0x9c

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2570
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, [I

    if-eqz v2, :cond_0

    check-cast v0, [I

    .end local v0           #result:Ljava/lang/Object;
    check-cast v0, [I

    :goto_0
    return-object v0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public requestGetDOMAIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1738
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetDOMAIN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetGID1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetHasISIM()Z
    .locals 1

    .prologue
    .line 1794
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v0

    return v0
.end method

.method public requestGetIMPI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1728
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetIMPI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIMPU()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1748
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetIMPU()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phonetype"

    .prologue
    .line 1769
    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->GetIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIsGBASupported()Z
    .locals 1

    .prologue
    .line 1804
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->isGBASupported()Z

    move-result v0

    return v0
.end method

.method public requestGetKeyLifetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1834
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetKeyLifetime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->GetMobileNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetPCSCF()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1758
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetPCSCF()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "ifc_name"

    .prologue
    .line 1582
    const/16 v1, 0x7b

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1583
    .local v0, returnResult:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 1584
    const/4 v0, 0x0

    .line 1586
    .end local v0           #returnResult:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #returnResult:Ljava/lang/Object;
    :cond_0
    check-cast v0, [Ljava/lang/String;

    .end local v0           #returnResult:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public requestGetRand()[B
    .locals 1

    .prologue
    .line 1814
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetRand()[B

    move-result-object v0

    return-object v0
.end method

.method public requestGetSIMType()I
    .locals 1

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetSIMType()I

    move-result v0

    return v0
.end method

.method public requestGetVolteSipRegFailure()I
    .locals 2

    .prologue
    .line 1572
    const/16 v0, 0x78

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestGetWimaxNai()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2642
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    const/16 v2, 0xa0

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2647
    .local v0, returnResult:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 2650
    .end local v0           #returnResult:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #returnResult:Ljava/lang/Object;
    :cond_0
    check-cast v0, [Ljava/lang/String;

    .end local v0           #returnResult:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 1842
    if-nez p1, :cond_0

    .line 1843
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImsAkaAuthentication(): Invalid data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :goto_0
    return-object v0

    .line 1847
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1848
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1852
    :cond_1
    const/16 v1, 0x85

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1854
    .local v0, result:Ljava/lang/Object;
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #result:Ljava/lang/Object;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2242
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    const-string v4, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_VOLTE_FLAG:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2245
    const/16 v2, 0x88

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2246
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #result:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2248
    :cond_0
    return v1
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"

    .prologue
    .line 1503
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 1505
    .local v0, paraMD5:[Ljava/lang/String;
    const/16 v1, 0x68

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "randssd"

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "authbs"

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const/16 v0, 0x74

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSetFastDormancy(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2263
    const-string v0, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetFastDormancy: module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetFastDormancy(IILandroid/os/Message;)V

    .line 2266
    :cond_0
    return-void
.end method

.method public requestSetLocProcessDB(IIIIII[I)Z
    .locals 5
    .parameter "index"
    .parameter "rat"
    .parameter "sid"
    .parameter "nid"
    .parameter "base_id"
    .parameter "pilot_pn"
    .parameter "neighbor_pilot_list"

    .prologue
    .line 2548
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2553
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2554
    const-string v2, "rat"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2555
    const-string v2, "sid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2556
    const-string v2, "nid"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2557
    const-string v2, "base_id"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2558
    const-string v2, "pilot_pn"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2559
    const-string v2, "neighbor_pilot_list"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2560
    const/16 v2, 0x9a

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2561
    .local v1, result:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #result:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    return v2

    .restart local v1       #result:Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public requestSetMultiRABTrafficThrottling(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2066
    const-string v0, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetMultiRABTrafficThrottling: module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :cond_0
    return-void
.end method

.method public requestVPM()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1481
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    const/16 v0, 0x6c

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requesttClearLocProcessDB()Z
    .locals 4

    .prologue
    .line 2538
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "HtcTelephonyInternal"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    const/16 v1, 0x98

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2542
    .local v0, result:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #result:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .restart local v0       #result:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendAT_PushMail(II)V
    .locals 2
    .parameter "type"
    .parameter "value"

    .prologue
    .line 2667
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2668
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    .line 2670
    :cond_0
    return-void
.end method

.method public setDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"

    .prologue
    .line 1932
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1933
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "setGbaBootstrappingParams(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :goto_0
    return-void

    .line 1936
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 1937
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 1938
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 1940
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1942
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 1943
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 1944
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 1946
    const/16 v1, 0x92

    new-instance v2, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;

    const/16 v3, 0x6fd5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;I[B)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 2052
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setGlobalDataRoamingOption(I)V

    .line 2053
    :cond_0
    return-void
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "activePhone"

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1593
    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setPolicyDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkType_wifi_call(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    .line 2472
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 2473
    const/16 v1, 0x94

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2474
    .local v0, err:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 2475
    const/4 v1, 0x1

    .line 2478
    .end local v0           #err:Ljava/lang/Integer;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRejectAllCalls(Z)V
    .locals 3
    .parameter "reject"

    .prologue
    .line 2277
    const-string v0, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NFC] setRejectAllCalls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->rejectAll:Z

    .line 2279
    return-void
.end method

.method public setUserDataEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUserDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1639
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/HtcTelephonyInternal;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1649
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/HtcTelephonyInternal;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .locals 13
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"

    .prologue
    .line 1697
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 1698
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1699
    :cond_0
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exchange SIM_IO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    const/16 v12, 0x96

    new-instance v1, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    const/4 v4, -0x1

    move v2, p1

    move v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v12, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/IccIoResult;

    .line 1702
    .local v10, response:Lcom/android/internal/telephony/IccIoResult;
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exchange SIM_IO [R]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const/4 v11, 0x0

    .line 1704
    .local v11, result:[B
    const/4 v9, 0x2

    .line 1705
    .local v9, length:I
    iget-object v1, v10, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    if-eqz v1, :cond_1

    .line 1706
    iget-object v1, v10, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    array-length v1, v1

    add-int/lit8 v9, v1, 0x2

    .line 1707
    new-array v11, v9, [B

    .line 1708
    iget-object v1, v10, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v10, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    array-length v4, v4

    invoke-static {v1, v2, v11, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1712
    :goto_0
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    add-int/lit8 v1, v9, -0x1

    iget v2, v10, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    int-to-byte v2, v2

    aput-byte v2, v11, v1

    .line 1714
    add-int/lit8 v1, v9, -0x2

    iget v2, v10, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    int-to-byte v2, v2

    aput-byte v2, v11, v1

    .line 1715
    return-object v11

    .line 1710
    :cond_1
    new-array v11, v9, [B

    goto :goto_0
.end method

.method public updateRegDregState(II)V
    .locals 4
    .parameter "state"
    .parameter "expire"

    .prologue
    .line 1537
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1540
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cw_reg_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1541
    const-string v1, "cw_reg_expire"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1542
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1543
    return-void
.end method

.method public updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "result"
    .parameter "ip"
    .parameter "port"
    .parameter "streamId"

    .prologue
    .line 1552
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const-string v1, "cdma.cw.dataip"

    invoke-static {v1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    const-string v1, "cdma.cw.dataport"

    invoke-static {v1, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    const-string v1, "cdma.cw.streamid"

    invoke-static {v1, p4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CW_SIP_INVITE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1558
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cw_sip_invite_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1559
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1560
    return-void
.end method
