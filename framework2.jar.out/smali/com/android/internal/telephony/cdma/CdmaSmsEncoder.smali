.class public Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;
.super Ljava/lang/Object;
.source "CdmaSmsEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$1;,
        Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;,
        Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CdmaSmsEncoder"

.field static final accepted_TRANSPORT_TYPE_param_list:[[B

.field static final accepted_param_ACKNOWLEDGE:[B

.field static final accepted_param_POINT_TO_POINT:[B

.field static final accepted_subparam_CARD_APPLICATION_TOOLKIT_submit:[B

.field static final accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

.field static final accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

.field static final accepted_subparam_WIRELESS_APPLICATION:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_cancellation:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_submit:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_cancellation:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_submit:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

.field static final accepted_subparam_WIRELESS_PAGING_submit:[B

.field static final accepted_subparam_WIRELESS_PAGING_user_ack:[B

.field static final accepted_subparam_delivery_report:[B

.field private static final ascIItoDtmfDigit:[B

.field private static final bitsMaskLeft:[S

.field private static final bitsMaskRight:[S

.field private static final dtmfDigitToAscII:[B

.field static final required_TRANSPORT_TYPE_param_list:[[B

.field static final required_param_ACKNOWLEDGE:[B

.field static final required_param_POINT_TO_POINT:[B

.field static final required_subparam_CARD_APPLICATION_TOOLKIT_submit:[B

.field static final required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

.field static final required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

.field static final required_subparam_WIRELESS_APPLICATION:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_cancellation:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_submit:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_cancellation:[B

.field static final required_subparam_WIRELESS_MESSAGING_delivery:[B

.field static final required_subparam_WIRELESS_MESSAGING_read_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_submit:[B

.field static final required_subparam_WIRELESS_MESSAGING_user_ack:[B

.field static final required_subparam_WIRELESS_PAGING_submit:[B

.field static final required_subparam_WIRELESS_PAGING_user_ack:[B

.field static final required_subparam_delivery_report:[B


# instance fields
.field TeleserviceMsgType:B

.field TeleserviceParam_absoluteDelivery:[B

.field TeleserviceParam_absoluteValidity:[B

.field TeleserviceParam_alertOnDelivery:B

.field TeleserviceParam_deliveryAckRequest:Z

.field TeleserviceParam_deliveryReportRequest:Z

.field TeleserviceParam_encodingUserData:[[B

.field TeleserviceParam_encodingUserDataEncoding:[B

.field TeleserviceParam_gsmTpFailure:B

.field TeleserviceParam_language:B

.field TeleserviceParam_manualAckRequest:Z

.field TeleserviceParam_messageId:S

.field TeleserviceParam_messageIdInCenter:S

.field TeleserviceParam_priority:B

.field TeleserviceParam_privacy:B

.field TeleserviceParam_readAckRequest:Z

.field TeleserviceParam_relativeDelivery:B

.field TeleserviceParam_relativeValidity:B

.field TeleserviceParam_senderAddr:[B

.field TeleserviceParam_senderAddrPlan:B

.field TeleserviceParam_senderAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_settingResult:[B

.field TeleserviceParam_settingTypeOfService:[S

.field TeleserviceParam_userData:[B

.field TeleserviceParam_userDataEncoding:B

.field TeleserviceParam_userDataEncodingExtended:S

.field TeleserviceParam_userDataHeader:[B

.field TeleserviceParam_userData_string:Ljava/lang/String;

.field TeleserviceParam_userResponseCode:S

.field TeleserviceParameters:[Z

.field TransportParam_bearerData:[B

.field TransportParam_errorClass:B

.field TransportParam_errorDetail:B

.field TransportParam_errorReplySeqNumber:B

.field TransportParam_replySeqNumber:B

.field TransportParam_subAddr:[B

.field TransportParam_subAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TransportParam_teleserviceCategory:I

.field TransportParam_toAddr:[B

.field TransportParam_toAddrPlan:B

.field TransportParam_toAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TransportParam_typeOfService:I

.field TransportParameters:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_param_POINT_TO_POINT:[B

    .line 58
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_param_POINT_TO_POINT:[B

    .line 63
    new-array v0, v5, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_param_ACKNOWLEDGE:[B

    .line 69
    new-array v0, v4, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_param_ACKNOWLEDGE:[B

    .line 74
    new-array v0, v5, [[B

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_param_POINT_TO_POINT:[B

    aput-object v1, v0, v2

    const/4 v1, 0x0

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_param_ACKNOWLEDGE:[B

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_TRANSPORT_TYPE_param_list:[[B

    .line 80
    new-array v0, v5, [[B

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_param_POINT_TO_POINT:[B

    aput-object v1, v0, v2

    const/4 v1, 0x0

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_param_ACKNOWLEDGE:[B

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_TRANSPORT_TYPE_param_list:[[B

    .line 86
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->ascIItoDtmfDigit:[B

    .line 87
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->dtmfDigitToAscII:[B

    .line 89
    const/16 v0, 0x9

    new-array v0, v0, [S

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskLeft:[S

    .line 90
    const/16 v0, 0x9

    new-array v0, v0, [S

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskRight:[S

    .line 94
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_PAGING_submit:[B

    .line 105
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_PAGING_submit:[B

    .line 109
    new-array v0, v6, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_PAGING_user_ack:[B

    .line 117
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_PAGING_user_ack:[B

    .line 121
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_submit:[B

    .line 138
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    .line 156
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_submit:[B

    .line 160
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    .line 164
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_cancellation:[B

    .line 168
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_cancellation:[B

    .line 172
    new-array v0, v6, [B

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

    .line 180
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_user_ack:[B

    .line 184
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

    .line 191
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_read_ack:[B

    .line 195
    new-array v0, v4, [B

    fill-array-data v0, :array_d

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    .line 200
    new-array v0, v4, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_APPLICATION:[B

    .line 205
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_submit:[B

    .line 222
    new-array v0, v4, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_submit:[B

    .line 227
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_cancellation:[B

    .line 231
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_cancellation:[B

    .line 235
    new-array v0, v6, [B

    fill-array-data v0, :array_11

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    .line 243
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    .line 247
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    .line 254
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    .line 258
    new-array v0, v4, [B

    fill-array-data v0, :array_13

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    .line 263
    new-array v0, v4, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    .line 268
    new-array v0, v4, [B

    fill-array-data v0, :array_15

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_submit:[B

    .line 273
    new-array v0, v4, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_CARD_APPLICATION_TOOLKIT_submit:[B

    .line 278
    new-array v0, v5, [B

    fill-array-data v0, :array_17

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    .line 284
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    .line 288
    new-array v0, v6, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_delivery_report:[B

    .line 296
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_delivery_report:[B

    return-void

    .line 47
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x4t
        0x5t
        0x2t
        0x3t
        0x6t
        0x8t
    .end array-data

    .line 63
    :array_1
    .array-data 0x1
        0x4t
        0x5t
        0x7t
    .end array-data

    .line 69
    :array_2
    .array-data 0x1
        0x4t
        0x7t
    .end array-data

    .line 86
    nop

    :array_3
    .array-data 0x1
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x2at
        0x23t
    .end array-data

    .line 87
    :array_4
    .array-data 0x1
        0x0t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x2at
        0x23t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 89
    :array_5
    .array-data 0x2
        0x0t 0x0t
        0x80t 0x0t
        0xc0t 0x0t
        0xe0t 0x0t
        0xf0t 0x0t
        0xf8t 0x0t
        0xfct 0x0t
        0xfet 0x0t
        0xfft 0x0t
    .end array-data

    .line 90
    nop

    :array_6
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x3t 0x0t
        0x7t 0x0t
        0xft 0x0t
        0x1ft 0x0t
        0x3ft 0x0t
        0x7ft 0x0t
        0xfft 0x0t
    .end array-data

    .line 94
    nop

    :array_7
    .array-data 0x1
        0x0t
        0x1t
        0x8t
        0x9t
        0xat
        0xet
        0x10t
        0x11t
    .end array-data

    .line 109
    :array_8
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x10t
        0x11t
    .end array-data

    .line 121
    nop

    :array_9
    .array-data 0x1
        0x0t
        0x1t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xct
        0xdt
        0xet
        0x10t
        0x11t
    .end array-data

    .line 138
    nop

    :array_a
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
    .end array-data

    .line 172
    :array_b
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x10t
        0x11t
    .end array-data

    .line 184
    nop

    :array_c
    .array-data 0x1
        0x0t
        0x1t
        0x10t
        0x11t
    .end array-data

    .line 195
    :array_d
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 200
    nop

    :array_e
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 205
    nop

    :array_f
    .array-data 0x1
        0x0t
        0x1t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xct
        0xdt
        0xet
        0x10t
        0x11t
    .end array-data

    .line 222
    nop

    :array_10
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 235
    nop

    :array_11
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x10t
        0x11t
    .end array-data

    .line 247
    nop

    :array_12
    .array-data 0x1
        0x0t
        0x1t
        0x10t
        0x11t
    .end array-data

    .line 258
    :array_13
    .array-data 0x1
        0x0t
        0x13t
    .end array-data

    .line 263
    nop

    :array_14
    .array-data 0x1
        0x0t
        0x13t
    .end array-data

    .line 268
    nop

    :array_15
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 273
    nop

    :array_16
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 278
    nop

    :array_17
    .array-data 0x1
        0x0t
        0x1t
        0x2t
    .end array-data

    .line 288
    :array_18
    .array-data 0x1
        0x0t
        0x1t
        0xdt
        0x10t
        0x15t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 408
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData_string:Ljava/lang/String;

    .line 409
    const/16 v0, 0x9

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    .line 410
    const/16 v0, 0x18

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    .line 411
    return-void
.end method

.method private encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 9
    .parameter "uData"
    .parameter "udhData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2057
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    .line 2058
    .local v0, payload:[B
    array-length v5, p2

    add-int/lit8 v2, v5, 0x1

    .line 2059
    .local v2, udhBytes:I
    add-int/lit8 v5, v2, 0x1

    div-int/lit8 v3, v5, 0x2

    .line 2060
    .local v3, udhCodeUnits:I
    rem-int/lit8 v4, v2, 0x2

    .line 2061
    .local v4, udhPadding:I
    array-length v5, v0

    div-int/lit8 v1, v5, 0x2

    .line 2062
    .local v1, payloadCodeUnits:I
    const/4 v5, 0x4

    iput v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2063
    iput-boolean v7, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 2064
    add-int v5, v3, v1

    iput v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 2065
    iget v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    iput-object v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2066
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p2

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 2067
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p2

    invoke-static {p2, v8, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2068
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    add-int v6, v2, v4

    array-length v7, v0

    invoke-static {v0, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2069
    return-void
.end method

.method private encode7bitAscii(Ljava/lang/String;Z)[B
    .locals 9
    .parameter "msg"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 2024
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 2025
    .local v4, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2026
    .local v3, msgLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 2027
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2028
    .local v0, charCode:I
    if-ne v0, v8, :cond_1

    .line 2029
    if-eqz p2, :cond_0

    .line 2030
    const/4 v5, 0x7

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2026
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2032
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot ASCII encode ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2039
    .end local v0           #charCode:I
    .end local v2           #i:I
    .end local v3           #msgLen:I
    .end local v4           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v1

    .line 2040
    .local v1, ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v5, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "7bit ASCII encode failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v5

    .line 2035
    .end local v1           #ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    .restart local v0       #charCode:I
    .restart local v2       #i:I
    .restart local v3       #msgLen:I
    .restart local v4       #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :cond_1
    const/4 v5, 0x7

    :try_start_1
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    .line 2038
    .end local v0           #charCode:I
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method private encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .parameter "uData"
    .parameter "udhData"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1978
    array-length v3, p2

    add-int/lit8 v1, v3, 0x1

    .line 1979
    .local v1, udhBytes:I
    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x6

    div-int/lit8 v2, v3, 0x7

    .line 1980
    .local v2, udhSeptets:I
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v3, v2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;

    move-result-object v0

    .line 1981
    .local v0, gcr:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;
    const/16 v3, 0x9

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1982
    iput-boolean v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1983
    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->septets:I

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1984
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->data:[B

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1985
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p2

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 1986
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p2

    invoke-static {p2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1987
    return-void
.end method

.method private encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;
    .locals 7
    .parameter "msg"
    .parameter "septetOffset"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2009
    if-nez p3, :cond_0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, p2, v3, v4, v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v1

    .line 2010
    .local v1, fullData:[B
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;)V

    .line 2011
    .local v2, result:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->data:[B

    .line 2012
    const/4 v3, 0x1

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->data:[B

    const/4 v5, 0x0

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2013
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2014
    return-object v2

    .end local v1           #fullData:[B
    .end local v2           #result:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;
    :cond_0
    move v3, v4

    .line 2009
    goto :goto_0

    .line 2015
    :catch_0
    move-exception v0

    .line 2016
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "7bit GSM encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v3
.end method

.method private encodeBCDoctet(I)B
    .locals 2
    .parameter "decimalValue"

    .prologue
    .line 545
    div-int/lit8 v0, p1, 0xa

    shl-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p1, 0xa

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private encodeBitStream([BIII)I
    .locals 8
    .parameter "dataArray"
    .parameter "startBitIndex"
    .parameter "lengthOfBits"
    .parameter "fillinValue"

    .prologue
    const/16 v7, 0x8

    .line 506
    if-lez p3, :cond_0

    .line 507
    shr-int/lit8 v2, p2, 0x3

    .line 508
    .local v2, bytesOffset:I
    and-int/lit8 v0, p2, 0x7

    .line 510
    .local v0, bitsOffset:I
    add-int v3, v0, p3

    if-gt v3, v7, :cond_1

    .line 511
    aget-byte v3, p1, v2

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskLeft:[S

    aget-short v4, v4, v0

    and-int/2addr v3, v4

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskRight:[S

    aget-short v4, v4, p3

    and-int/2addr v4, p4

    rsub-int/lit8 v5, v0, 0x8

    sub-int/2addr v5, p3

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 530
    .end local v0           #bitsOffset:I
    .end local v2           #bytesOffset:I
    :cond_0
    :goto_0
    add-int v3, p2, p3

    return v3

    .line 516
    .restart local v0       #bitsOffset:I
    .restart local v2       #bytesOffset:I
    :cond_1
    rsub-int/lit8 v3, v0, 0x8

    sub-int v1, p3, v3

    .line 517
    .local v1, bitsRemaining:I
    aget-byte v3, p1, v2

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskLeft:[S

    aget-short v4, v4, v0

    and-int/2addr v3, v4

    ushr-int v4, p4, v1

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskRight:[S

    rsub-int/lit8 v6, v0, 0x8

    aget-short v5, v5, v6

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 519
    add-int/lit8 v2, v2, 0x1

    .line 520
    :goto_1
    if-lt v1, v7, :cond_2

    .line 521
    add-int/lit8 v1, v1, -0x8

    .line 522
    ushr-int v3, p4, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 523
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 525
    :cond_2
    if-lez v1, :cond_0

    .line 526
    rsub-int/lit8 v3, v1, 0x8

    shl-int v3, p4, v3

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->bitsMaskLeft:[S

    aget-short v4, v4, v1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    goto :goto_0
.end method

.method private encodeBytesIntoBitStream([BII[B)I
    .locals 2
    .parameter "dataArray"
    .parameter "startBitIndex"
    .parameter "lengthOfBits"
    .parameter "givenBytesArray"

    .prologue
    .line 536
    const/4 v0, 0x0

    .local v0, copyIndex:I
    :goto_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 537
    aget-byte v1, p4, v0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result p2

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_0
    return p2
.end method

.method private encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 5
    .parameter "uData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    .prologue
    .line 1956
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    .line 1957
    .local v1, headerData:[B
    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v2, :cond_2

    .line 1958
    iget v2, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 1959
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    .line 1973
    :goto_0
    return-void

    .line 1960
    :cond_0
    iget v2, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1961
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0

    .line 1963
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported EMS user data encoding ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v2

    .line 1968
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1969
    :catch_0
    move-exception v0

    .line 1970
    .local v0, ex:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0
.end method

.method private encodeTeleservice(IB)[B
    .locals 6
    .parameter "category"
    .parameter "teleserviceType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1325
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTransportParamTeleserviceCategory(I)V

    .line 1326
    iput-byte p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceMsgType:B

    .line 1328
    new-array v0, v5, [[B

    .line 1329
    .local v0, filtersApplied:[[B
    const/4 v1, 0x0

    .line 1331
    .local v1, smsData:[B
    const/4 v2, 0x7

    if-ne p2, v2, :cond_0

    .line 1332
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_delivery_report:[B

    aput-object v2, v0, v3

    .line 1333
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_delivery_report:[B

    aput-object v2, v0, v4

    .line 1334
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceDeliveryReport([[B)[B

    move-result-object v1

    .line 1467
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTransportParamBearerData([B)V

    .line 1468
    const/4 v1, 0x0

    .line 1469
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransport(B)[B

    move-result-object v2

    return-object v2

    .line 1337
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1463
    :pswitch_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1340
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    .line 1353
    :pswitch_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1343
    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_PAGING_submit:[B

    aput-object v2, v0, v3

    .line 1344
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_PAGING_submit:[B

    aput-object v2, v0, v4

    .line 1355
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceWirelessPaging([[B)[B

    move-result-object v1

    .line 1356
    goto :goto_0

    .line 1348
    :pswitch_4
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_PAGING_user_ack:[B

    aput-object v2, v0, v3

    .line 1349
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_PAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_1

    .line 1359
    :pswitch_5
    packed-switch p2, :pswitch_data_2

    .line 1387
    :pswitch_6
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1362
    :pswitch_7
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_submit:[B

    aput-object v2, v0, v3

    .line 1363
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_submit:[B

    aput-object v2, v0, v4

    .line 1389
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceWirelessMessaging([[B)[B

    move-result-object v1

    .line 1390
    goto :goto_0

    .line 1367
    :pswitch_8
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v3

    .line 1368
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_2

    .line 1372
    :pswitch_9
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_cancellation:[B

    aput-object v2, v0, v3

    .line 1373
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_cancellation:[B

    aput-object v2, v0, v4

    goto :goto_2

    .line 1377
    :pswitch_a
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

    aput-object v2, v0, v3

    .line 1378
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_2

    .line 1382
    :pswitch_b
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

    aput-object v2, v0, v3

    .line 1383
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_MESSAGING_read_ack:[B

    aput-object v2, v0, v4

    goto :goto_2

    .line 1393
    :pswitch_c
    if-ne p2, v5, :cond_1

    .line 1394
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v3

    .line 1395
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v4

    .line 1400
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceWirelessApplication([[B)[B

    move-result-object v1

    .line 1401
    goto :goto_0

    .line 1398
    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1404
    :pswitch_d
    packed-switch p2, :pswitch_data_3

    .line 1427
    :pswitch_e
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1407
    :pswitch_f
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_submit:[B

    aput-object v2, v0, v3

    .line 1408
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_submit:[B

    aput-object v2, v0, v4

    .line 1429
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceWirelessEnhancedMessaging([[B)[B

    move-result-object v1

    .line 1430
    goto/16 :goto_0

    .line 1412
    :pswitch_10
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_cancellation:[B

    aput-object v2, v0, v3

    .line 1413
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_cancellation:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1417
    :pswitch_11
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    aput-object v2, v0, v3

    .line 1418
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1422
    :pswitch_12
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    aput-object v2, v0, v3

    .line 1423
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1433
    :pswitch_13
    if-ne p2, v5, :cond_2

    .line 1434
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    aput-object v2, v0, v3

    .line 1435
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    aput-object v2, v0, v4

    .line 1440
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceServiceCategoryProgramming([[B)[B

    move-result-object v1

    .line 1441
    goto/16 :goto_0

    .line 1438
    :cond_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1444
    :pswitch_14
    packed-switch p2, :pswitch_data_4

    .line 1457
    :pswitch_15
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1447
    :pswitch_16
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_submit:[B

    aput-object v2, v0, v3

    .line 1448
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_CARD_APPLICATION_TOOLKIT_submit:[B

    aput-object v2, v0, v4

    .line 1459
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceCardApplicationToolkit([[B)[B

    move-result-object v1

    .line 1460
    goto/16 :goto_0

    .line 1452
    :pswitch_17
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    aput-object v2, v0, v3

    .line 1453
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_4

    .line 1337
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 1340
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 1359
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 1404
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 1444
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method private encodeTeleserviceCardApplicationToolkit([[B)[B
    .locals 1
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1504
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTeleserviceDeliveryReport([[B)[B
    .locals 1
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1474
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTeleserviceFixedLengthParameter(B[BI)V
    .locals 1
    .parameter "param_id"
    .parameter "smsData"
    .parameter "fillInOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1541
    packed-switch p1, :pswitch_data_0

    .line 1587
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1543
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamMessageID([BI)V

    .line 1589
    :goto_0
    return-void

    .line 1546
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamUserResponseCode([BI)V

    goto :goto_0

    .line 1551
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamAbsoluteValidity([BI)V

    goto :goto_0

    .line 1554
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamRelativeValidity([BI)V

    goto :goto_0

    .line 1557
    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamAbsoluteDelivery([BI)V

    goto :goto_0

    .line 1560
    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamRelativeDelivery([BI)V

    goto :goto_0

    .line 1563
    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamPriority([BI)V

    goto :goto_0

    .line 1566
    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamPrivacy([BI)V

    goto :goto_0

    .line 1569
    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamReplyOption([BI)V

    goto :goto_0

    .line 1574
    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamLanguage([BI)V

    goto :goto_0

    .line 1579
    :pswitch_b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamMessageIdInCenter([BI)V

    goto :goto_0

    .line 1584
    :pswitch_c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamGsmTpFailure([BI)V

    goto :goto_0

    .line 1541
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method private encodeTeleserviceParamAbsoluteDelivery([BI)V
    .locals 3
    .parameter "smsData"
    .parameter "fillInOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_absoluteDelivery:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_absoluteDelivery:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2092
    return-void
.end method

.method private encodeTeleserviceParamAbsoluteValidity([BI)V
    .locals 3
    .parameter "smsData"
    .parameter "fillInOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_absoluteValidity:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_absoluteValidity:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2081
    return-void
.end method

.method private encodeTeleserviceParamAlertOnMessageDelivery([B)[B
    .locals 5
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2140
    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    .line 2141
    .local v1, smsData:[B
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    .line 2142
    .local v0, prefixLength:I
    const/16 v2, 0xc

    aput-byte v2, v1, v0

    .line 2143
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    .line 2144
    add-int/lit8 v2, v0, 0x2

    shl-int/lit8 v2, v2, 0x3

    const/4 v3, 0x2

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_alertOnDelivery:B

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    .line 2145
    return-object v1
.end method

.method private encodeTeleserviceParamBroadcastServiceSettingResult([B)[B
    .locals 9
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 2302
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingResult:[B

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    .line 2303
    .local v0, existedLength:I
    mul-int/lit8 v2, v0, 0x3

    .line 2304
    .local v2, lenData:I
    add-int/lit8 v6, v2, 0x2

    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v4

    .line 2305
    .local v4, smsData:[B
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v3

    .line 2306
    .local v3, prefixLength:I
    const/16 v6, 0x13

    aput-byte v6, v4, v3

    .line 2307
    add-int/lit8 v6, v3, 0x1

    int-to-byte v7, v2

    aput-byte v7, v4, v6

    .line 2309
    add-int/lit8 v6, v3, 0x2

    shl-int/lit8 v5, v6, 0x3

    .line 2311
    .local v5, startBitIndex:I
    const/4 v1, 0x0

    .local v1, indexResult:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2313
    const/16 v6, 0x10

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingTypeOfService:[S

    aget-short v7, v7, v1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v5

    .line 2316
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingResult:[B

    aget-byte v6, v6, v1

    invoke-direct {p0, v4, v5, v8, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v5

    .line 2319
    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v8, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v5

    .line 2311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2322
    :cond_0
    return-object v4
.end method

.method private encodeTeleserviceParamCallBack([B)[B
    .locals 13
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/16 v11, 0x8

    const/4 v10, 0x1

    .line 2155
    const/4 v2, 0x0

    .line 2156
    .local v2, dtmfMode:Z
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne v8, v9, :cond_0

    iget-byte v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddrPlan:B

    if-nez v8, :cond_0

    .line 2158
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddr:[B

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v8

    if-lez v8, :cond_1

    .line 2159
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddr:[B

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->isDtmfAddress([B)Z

    move-result v2

    .line 2166
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddr:[B

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v3

    .line 2167
    .local v3, lenData:I
    const/16 v4, 0x9

    .line 2168
    .local v4, lenDataBits:I
    const/4 v0, 0x0

    .line 2169
    .local v0, addrType:B
    if-ne v2, v10, :cond_2

    .line 2170
    shl-int/lit8 v8, v3, 0x2

    add-int/2addr v4, v8

    .line 2203
    :goto_1
    add-int/lit8 v8, v4, 0x10

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    invoke-direct {p0, p1, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v6

    .line 2204
    .local v6, smsData:[B
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v5

    .line 2205
    .local v5, prefixLength:I
    const/16 v8, 0xe

    aput-byte v8, v6, v5

    .line 2206
    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v9, v4, 0x7

    shr-int/lit8 v9, v9, 0x3

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 2208
    add-int/lit8 v8, v5, 0x2

    shl-int/lit8 v7, v8, 0x3

    .line 2210
    .local v7, startBitIndex:I
    if-ne v2, v10, :cond_3

    .line 2211
    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v10, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    .line 2217
    :goto_2
    if-ne v2, v10, :cond_4

    .line 2219
    invoke-direct {p0, v6, v7, v11, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    .line 2222
    const/4 v1, 0x0

    .local v1, copyIndex:I
    :goto_3
    if-ge v1, v3, :cond_5

    .line 2223
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddr:[B

    aget-byte v8, v8, v1

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->getEncodedDtmf(B)I

    move-result v8

    invoke-direct {p0, v6, v7, v12, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    .line 2222
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2162
    .end local v0           #addrType:B
    .end local v1           #copyIndex:I
    .end local v3           #lenData:I
    .end local v4           #lenDataBits:I
    .end local v5           #prefixLength:I
    .end local v6           #smsData:[B
    .end local v7           #startBitIndex:I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2173
    .restart local v0       #addrType:B
    .restart local v3       #lenData:I
    .restart local v4       #lenDataBits:I
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 2200
    :goto_4
    :pswitch_0
    shl-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x7

    add-int/2addr v4, v8

    goto :goto_1

    .line 2178
    :pswitch_1
    const/4 v0, 0x1

    .line 2179
    goto :goto_4

    .line 2182
    :pswitch_2
    const/4 v0, 0x2

    .line 2183
    goto :goto_4

    .line 2186
    :pswitch_3
    const/4 v0, 0x3

    .line 2187
    goto :goto_4

    .line 2190
    :pswitch_4
    const/4 v0, 0x4

    .line 2191
    goto :goto_4

    .line 2194
    :pswitch_5
    const/4 v0, 0x6

    .line 2195
    goto :goto_4

    .line 2214
    .restart local v5       #prefixLength:I
    .restart local v6       #smsData:[B
    .restart local v7       #startBitIndex:I
    :cond_3
    invoke-direct {p0, v6, v7, v10, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    goto :goto_2

    .line 2229
    :cond_4
    const/4 v8, 0x3

    invoke-direct {p0, v6, v7, v8, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    .line 2231
    iget-byte v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddrPlan:B

    invoke-direct {p0, v6, v7, v12, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    .line 2233
    invoke-direct {p0, v6, v7, v11, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    .line 2235
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddr:[B

    invoke-direct {p0, v6, v7, v11, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBytesIntoBitStream([BII[B)I

    move-result v7

    .line 2238
    :cond_5
    return-object v6

    .line 2173
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private encodeTeleserviceParamGsmTpFailure([BI)V
    .locals 1
    .parameter "smsData"
    .parameter "fillInOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2327
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_gsmTpFailure:B

    aput-byte v0, p1, p2

    .line 2328
    return-void
.end method

.method private encodeTeleserviceParamLanguage([BI)V
    .locals 1
    .parameter "smsData"
    .parameter "fillInOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2150
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_language:B

    aput-byte v0, p1, p2

    .line 2151
    return-void
.end method

.method private encodeTeleserviceParamMessageID([BI)V
    .locals 4
    .parameter "smsData"
    .parameter "fillInOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1617
    shl-int/lit8 v0, p2, 0x3

    .line 1618
    .local v0, startBitIndex:I
    const/4 v1, 0x4

    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceMsgType:B

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    .line 1619
    const/16 v1, 0x10

    iget-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_messageId:S

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    .line 1620
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    aget-boolean v1, v1, v3

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_teleserviceCategory:I

    const/16 v2, 0x1005

    if-ne v1, v2, :cond_0

    .line 1623
    invoke-direct {p0, p1, v0, v3, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    .line 1628
    :goto_0
    return-void

    .line 1626
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    goto :goto_0
.end method

.method private encodeTeleserviceParamMessageIdInCenter([BI)V
    .locals 3
    .parameter "smsData"
    .parameter "fillInOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2297
    shl-int/lit8 v0, p2, 0x3

    const/16 v1, 0x10

    iget-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_messageIdInCenter:S

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    .line 2298
    return-void
.end method

.method private encodeTeleserviceParamMultiEncodingUserData([B)[B
    .locals 11
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    .line 2243
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v1

    .line 2244
    .local v1, existedLength:I
    new-array v0, v1, [I

    .line 2247
    .local v0, bitsPerCharacters:[I
    const/4 v3, 0x0

    .line 2248
    .local v3, lenDataBits:I
    const/4 v2, 0x0

    .local v2, indexEncoding:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2249
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    aget-byte v8, v8, v2

    packed-switch v8, :pswitch_data_0

    .line 2264
    :pswitch_0
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    .line 2256
    :pswitch_1
    aput v10, v0, v2

    .line 2266
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserData:[[B

    aget-object v8, v8, v2

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v8

    aget v9, v0, v2

    mul-int/2addr v8, v9

    add-int/lit8 v8, v8, 0xd

    add-int/2addr v3, v8

    .line 2248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2261
    :pswitch_2
    const/4 v8, 0x7

    aput v8, v0, v2

    goto :goto_1

    .line 2270
    :cond_0
    add-int/lit8 v8, v3, 0x10

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    invoke-direct {p0, p1, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v6

    .line 2271
    .local v6, smsData:[B
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v5

    .line 2272
    .local v5, prefixLength:I
    const/16 v8, 0x10

    aput-byte v8, v6, v5

    .line 2273
    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v9, v3, 0x7

    shr-int/lit8 v9, v9, 0x3

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 2275
    add-int/lit8 v8, v5, 0x2

    shl-int/lit8 v7, v8, 0x3

    .line 2277
    .local v7, startBitIndex:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    .line 2279
    const/4 v8, 0x5

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    aget-byte v9, v9, v2

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    .line 2282
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserData:[[B

    aget-object v8, v8, v2

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v4

    .line 2283
    .local v4, lengthUserData:I
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    aget-byte v8, v8, v2

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 2284
    ushr-int/lit8 v4, v4, 0x1

    .line 2286
    :cond_1
    invoke-direct {p0, v6, v7, v10, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v7

    .line 2288
    aget v8, v0, v2

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserData:[[B

    aget-object v9, v9, v2

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBytesIntoBitStream([BII[B)I

    move-result v7

    .line 2277
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2292
    .end local v4           #lengthUserData:I
    :cond_2
    return-object v6

    .line 2249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private encodeTeleserviceParamPriority([BI)V
    .locals 3
    .parameter "smsData"
    .parameter "fillInOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2101
    shl-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_priority:B

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    .line 2102
    return-void
.end method

.method private encodeTeleserviceParamPrivacy([BI)V
    .locals 3
    .parameter "smsData"
    .parameter "fillInOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2106
    shl-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_privacy:B

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    .line 2107
    return-void
.end method

.method private encodeTeleserviceParamRelativeDelivery([BI)V
    .locals 1
    .parameter "smsData"
    .parameter "fillInOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2096
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_relativeDelivery:B

    aput-byte v0, p1, p2

    .line 2097
    return-void
.end method

.method private encodeTeleserviceParamRelativeValidity([BI)V
    .locals 1
    .parameter "smsData"
    .parameter "fillInOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2085
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_relativeValidity:B

    aput-byte v0, p1, p2

    .line 2086
    return-void
.end method

.method private encodeTeleserviceParamReplyOption([BI)V
    .locals 4
    .parameter "smsData"
    .parameter "fillInOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2111
    shl-int/lit8 v0, p2, 0x3

    .line 2112
    .local v0, startBitIndex:I
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_manualAckRequest:Z

    if-ne v1, v2, :cond_0

    .line 2113
    invoke-direct {p0, p1, v0, v2, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    .line 2118
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_deliveryAckRequest:Z

    if-ne v1, v2, :cond_1

    .line 2119
    invoke-direct {p0, p1, v0, v2, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    .line 2124
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_readAckRequest:Z

    if-ne v1, v2, :cond_2

    .line 2125
    invoke-direct {p0, p1, v0, v2, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    .line 2130
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_deliveryReportRequest:Z

    if-ne v1, v2, :cond_3

    .line 2131
    invoke-direct {p0, p1, v0, v2, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    .line 2136
    :goto_3
    return-void

    .line 2116
    :cond_0
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    goto :goto_0

    .line 2122
    :cond_1
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    goto :goto_1

    .line 2128
    :cond_2
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    goto :goto_2

    .line 2134
    :cond_3
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v0

    goto :goto_3
.end method

.method private encodeTeleserviceParamUserData([B)[B
    .locals 21
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData_string:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1635
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamUserDataEx([B)[B

    move-result-object v17

    .line 1786
    :cond_0
    :goto_0
    return-object v17

    .line 1638
    :cond_1
    const/16 v5, 0x15

    .line 1639
    .local v5, bitsAllocated:I
    const/4 v11, 0x0

    .line 1641
    .local v11, fillInMessageType:Z
    const/16 v7, 0x8

    .line 1642
    .local v7, bitsPerCharacters:I
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1695
    new-instance v19, Ljava/io/IOException;

    invoke-direct/range {v19 .. v19}, Ljava/io/IOException;-><init>()V

    throw v19

    .line 1653
    :pswitch_0
    const/4 v7, 0x7

    .line 1697
    :goto_1
    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_2

    .line 1698
    add-int/lit8 v5, v5, 0x8

    .line 1701
    :cond_2
    add-int/lit8 v5, v5, 0x8

    .line 1703
    const/4 v12, 0x0

    .line 1705
    .local v12, fillInUserDataHeader:Z
    const/4 v8, 0x0

    .line 1707
    .local v8, bitsUserDataHeaderPadding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v14

    .line 1708
    .local v14, lengthUserDataHeader:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_teleserviceCategory:I

    move/from16 v19, v0

    const/16 v20, 0x1005

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    if-lez v14, :cond_3

    .line 1710
    const/4 v12, 0x1

    .line 1712
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_b

    .line 1713
    shl-int/lit8 v19, v14, 0x3

    add-int v5, v5, v19

    .line 1715
    shl-int/lit8 v19, v14, 0x3

    rem-int v8, v19, v7

    .line 1716
    if-lez v8, :cond_4

    .line 1717
    sub-int v19, v7, v8

    add-int v5, v5, v19

    .line 1725
    :cond_4
    :goto_2
    const/4 v9, 0x0

    .line 1726
    .local v9, bitsUserDataPadding:I
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v13

    .line 1728
    .local v13, lengthUserData:I
    mul-int v19, v13, v7

    add-int v5, v5, v19

    .line 1740
    :cond_5
    :goto_3
    add-int/lit8 v19, v5, 0x7

    ushr-int/lit8 v19, v19, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v17

    .line 1741
    .local v17, smsData:[B
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v16

    .line 1743
    .local v16, prefixLength:I
    const/16 v19, 0x1

    aput-byte v19, v17, v16

    .line 1744
    add-int/lit8 v19, v16, 0x1

    add-int/lit8 v20, v5, -0x10

    add-int/lit8 v20, v20, 0x7

    ushr-int/lit8 v20, v20, 0x3

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v17, v19

    .line 1746
    add-int/lit8 v19, v16, 0x2

    shl-int/lit8 v18, v19, 0x3

    .line 1749
    .local v18, startBitIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_teleserviceCategory:I

    move/from16 v19, v0

    const/16 v20, 0x1004

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1750
    const/4 v15, 0x0

    .line 1755
    .local v15, msgEncoding:B
    :goto_4
    const/16 v19, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v18

    .line 1757
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_6

    .line 1758
    const/16 v19, 0x8

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v18

    .line 1761
    :cond_6
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 1762
    ushr-int/lit8 v13, v13, 0x1

    .line 1764
    :cond_7
    const/16 v19, 0x8

    shl-int/lit8 v20, v14, 0x3

    add-int v20, v20, v8

    div-int v20, v20, v7

    add-int v20, v20, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v18

    .line 1768
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_8

    .line 1769
    const/16 v19, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBytesIntoBitStream([BII[B)I

    move-result v18

    .line 1771
    :cond_8
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    .line 1772
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v18

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBytesIntoBitStream([BII[B)I

    move-result v18

    goto/16 :goto_0

    .line 1658
    .end local v8           #bitsUserDataHeaderPadding:I
    .end local v9           #bitsUserDataPadding:I
    .end local v12           #fillInUserDataHeader:Z
    .end local v13           #lengthUserData:I
    .end local v14           #lengthUserDataHeader:I
    .end local v15           #msgEncoding:B
    .end local v16           #prefixLength:I
    .end local v17           #smsData:[B
    .end local v18           #startBitIndex:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    .line 1666
    const/4 v7, 0x6

    .line 1669
    :goto_5
    const/4 v11, 0x1

    .line 1670
    goto/16 :goto_1

    .line 1660
    :pswitch_3
    const/4 v7, 0x4

    .line 1661
    goto :goto_5

    .line 1672
    :pswitch_4
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 1673
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2c

    if-nez v19, :cond_9

    .line 1674
    const/4 v7, 0x7

    .line 1692
    :cond_9
    :goto_6
    const/4 v11, 0x1

    .line 1693
    goto/16 :goto_1

    .line 1678
    :cond_a
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    goto :goto_6

    .line 1681
    :sswitch_0
    const/4 v7, 0x7

    .line 1682
    goto :goto_6

    .line 1684
    :sswitch_1
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-nez v19, :cond_9

    .line 1685
    const/4 v7, 0x7

    goto :goto_6

    .line 1721
    .restart local v8       #bitsUserDataHeaderPadding:I
    .restart local v12       #fillInUserDataHeader:Z
    .restart local v14       #lengthUserDataHeader:I
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1730
    .restart local v9       #bitsUserDataPadding:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-byte v19, v19, v20

    move/from16 v0, v19

    and-int/lit16 v13, v0, 0xff

    .line 1731
    .restart local v13       #lengthUserData:I
    mul-int v19, v13, v7

    add-int v5, v5, v19

    .line 1733
    mul-int v19, v13, v7

    add-int v19, v19, v8

    and-int/lit8 v9, v19, 0x7

    .line 1734
    if-lez v9, :cond_5

    .line 1735
    rsub-int/lit8 v9, v9, 0x8

    .line 1736
    add-int/2addr v5, v9

    goto/16 :goto_3

    .line 1753
    .restart local v16       #prefixLength:I
    .restart local v17       #smsData:[B
    .restart local v18       #startBitIndex:I
    :cond_d
    move-object/from16 v0, p0

    iget-byte v15, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    .restart local v15       #msgEncoding:B
    goto/16 :goto_4

    .line 1776
    :cond_e
    mul-int/lit8 v19, v13, 0x7

    add-int v19, v19, v8

    add-int v6, v19, v9

    .line 1777
    .local v6, bitsFilling:I
    const/4 v10, 0x1

    .line 1778
    .local v10, bytesFilledFrom:I
    :goto_7
    if-lez v6, :cond_0

    .line 1779
    const/16 v19, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v18

    .line 1781
    add-int/lit8 v6, v6, -0x8

    .line 1782
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1642
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1658
    :pswitch_data_1
    .packed-switch 0x84
        :pswitch_3
    .end packed-switch

    .line 1678
    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_0
        0xd0 -> :sswitch_0
        0xf0 -> :sswitch_1
    .end sparse-switch
.end method

.method private encodeTeleserviceParamUserDataEx([B)[B
    .locals 9
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1792
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1793
    .local v4, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData_string:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1794
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1795
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1798
    const/4 v5, 0x0

    .line 1800
    .local v5, userData:[B
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/UserData;)[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1806
    :goto_0
    if-nez v5, :cond_0

    .line 1807
    const-string v6, "encodeTeleserviceParamUserDataEx"

    const-string v7, "user data encode fail!!!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_0
    array-length v6, v5

    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v3

    .line 1811
    .local v3, smsData:[B
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v2

    .line 1813
    .local v2, prefixLength:I
    const/4 v6, 0x0

    array-length v7, v5

    invoke-static {v5, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1815
    return-object v3

    .line 1801
    .end local v2           #prefixLength:I
    .end local v3           #smsData:[B
    :catch_0
    move-exception v0

    .line 1802
    .local v0, ae:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string v6, "encodeTeleserviceParamUserDataEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encode user data fail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1803
    .end local v0           #ae:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :catch_1
    move-exception v1

    .line 1804
    .local v1, ce:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
    const-string v6, "encodeTeleserviceParamUserDataEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encode user data fail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private encodeTeleserviceParamUserResponseCode([BI)V
    .locals 1
    .parameter "smsData"
    .parameter "fillInOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2074
    iget-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userResponseCode:S

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 2075
    return-void
.end method

.method private encodeTeleserviceServiceCategoryProgramming([[B)[B
    .locals 1
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1499
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTeleserviceSubParam([[B)[B
    .locals 10
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 1509
    aget-object v0, p1, v9

    .local v0, arr$:[B
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v5, v0, v1

    .line 1510
    .local v5, required_param:B
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v5

    if-nez v7, :cond_0

    .line 1511
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1509
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1515
    .end local v5           #required_param:B
    :cond_1
    const/4 v4, 0x0

    .line 1517
    .local v4, param_id:B
    const/4 v6, 0x0

    .line 1520
    .local v6, smsData:[B
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v4

    if-ne v7, v9, :cond_3

    .line 1521
    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue;->fixedLengthSubparameter:[B

    aget-byte v3, v7, v4

    .line 1523
    .local v3, lenSubparameter:I
    if-eqz v3, :cond_4

    .line 1524
    add-int/lit8 v7, v3, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v6

    .line 1525
    array-length v7, v6

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x2

    aput-byte v4, v6, v7

    .line 1526
    array-length v7, v6

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    int-to-byte v8, v3

    aput-byte v8, v6, v7

    .line 1527
    array-length v7, v6

    sub-int/2addr v7, v3

    invoke-direct {p0, v4, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceFixedLengthParameter(B[BI)V

    .line 1533
    .end local v3           #lenSubparameter:I
    :cond_3
    :goto_1
    add-int/lit8 v7, v4, 0x1

    int-to-byte v4, v7

    .line 1534
    const/16 v7, 0x18

    if-lt v4, v7, :cond_2

    .line 1536
    return-object v6

    .line 1530
    .restart local v3       #lenSubparameter:I
    :cond_4
    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceVariableLengthParameter(B[B)[B

    move-result-object v6

    goto :goto_1
.end method

.method private encodeTeleserviceVariableLengthParameter(B[B)[B
    .locals 1
    .parameter "param_id"
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1593
    sparse-switch p1, :sswitch_data_0

    .line 1611
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1595
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamUserData([B)[B

    move-result-object v0

    .line 1605
    :goto_0
    return-object v0

    .line 1597
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamAlertOnMessageDelivery([B)[B

    move-result-object v0

    goto :goto_0

    .line 1599
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamCallBack([B)[B

    move-result-object v0

    goto :goto_0

    .line 1601
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamMultiEncodingUserData([B)[B

    move-result-object v0

    goto :goto_0

    .line 1605
    :sswitch_4
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceParamBroadcastServiceSettingResult([B)[B

    move-result-object v0

    goto :goto_0

    .line 1593
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xc -> :sswitch_1
        0xe -> :sswitch_2
        0x10 -> :sswitch_3
        0x13 -> :sswitch_4
    .end sparse-switch
.end method

.method private encodeTeleserviceWirelessApplication([[B)[B
    .locals 1
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1489
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTeleserviceWirelessEnhancedMessaging([[B)[B
    .locals 1
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1494
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTeleserviceWirelessMessaging([[B)[B
    .locals 1
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1484
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTeleserviceWirelessPaging([[B)[B
    .locals 1
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1479
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleserviceSubParam([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private encodeTimeRelative(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;I)B
    .locals 5
    .parameter "typeOfTime"
    .parameter "fixedMinutes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Fixed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->WhenMobileNextActive:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    if-eq p1, v3, :cond_0

    .line 602
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 607
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Fixed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    if-ne p1, v3, :cond_9

    .line 608
    if-gtz p2, :cond_1

    .line 609
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 612
    :cond_1
    rem-int/lit8 v1, p2, 0x5

    .line 613
    .local v1, remainingTime:I
    div-int/lit8 v0, p2, 0x5

    .line 614
    .local v0, closestTime:I
    if-eqz v1, :cond_2

    .line 615
    add-int/lit8 v0, v0, 0x1

    .line 617
    :cond_2
    const/16 v3, 0x90

    if-gt v0, v3, :cond_3

    .line 618
    add-int/lit8 v3, v0, -0x1

    int-to-byte v2, v3

    .line 652
    .end local v0           #closestTime:I
    .end local v1           #remainingTime:I
    .local v2, timeRelative:B
    :goto_0
    return v2

    .line 621
    .end local v2           #timeRelative:B
    .restart local v0       #closestTime:I
    .restart local v1       #remainingTime:I
    :cond_3
    rem-int/lit8 v1, v0, 0x6

    .line 622
    div-int/lit8 v0, v0, 0x6

    .line 623
    if-eqz v1, :cond_4

    .line 624
    add-int/lit8 v0, v0, 0x1

    .line 626
    :cond_4
    const/16 v3, 0x30

    if-gt v0, v3, :cond_5

    .line 627
    add-int/lit8 v3, v0, 0x77

    int-to-byte v2, v3

    .restart local v2       #timeRelative:B
    goto :goto_0

    .line 630
    .end local v2           #timeRelative:B
    :cond_5
    rem-int/lit8 v1, v0, 0x30

    .line 631
    div-int/lit8 v0, v0, 0x30

    .line 632
    if-eqz v1, :cond_6

    .line 633
    add-int/lit8 v0, v0, 0x1

    .line 635
    :cond_6
    const/16 v3, 0x1e

    if-gt v0, v3, :cond_7

    .line 636
    add-int/lit16 v3, v0, 0xa6

    int-to-byte v2, v3

    .restart local v2       #timeRelative:B
    goto :goto_0

    .line 639
    .end local v2           #timeRelative:B
    :cond_7
    rem-int/lit8 v1, v0, 0x7

    .line 640
    div-int/lit8 v0, v0, 0x7

    .line 641
    if-eqz v1, :cond_8

    .line 642
    add-int/lit8 v0, v0, 0x1

    .line 644
    :cond_8
    const/16 v3, 0xf4

    add-int/lit16 v4, v0, 0xc0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-byte v2, v3

    .restart local v2       #timeRelative:B
    goto :goto_0

    .line 650
    .end local v0           #closestTime:I
    .end local v1           #remainingTime:I
    .end local v2           #timeRelative:B
    :cond_9
    const/16 v2, -0x9

    .restart local v2       #timeRelative:B
    goto :goto_0
.end method

.method private encodeTimeStamp([S)[B
    .locals 8
    .parameter "absoluteTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 550
    const/4 v1, 0x6

    new-array v0, v1, [B

    .line 552
    .local v0, timeStamp:[B
    aget-short v1, p1, v3

    const/16 v2, 0x7cc

    if-lt v1, v2, :cond_0

    aget-short v1, p1, v3

    const/16 v2, 0x82f

    if-le v1, v2, :cond_1

    .line 554
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 556
    :cond_1
    aget-short v1, p1, v3

    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_3

    .line 557
    aget-short v1, p1, v3

    add-int/lit16 v1, v1, -0x76c

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v1

    aput-byte v1, v0, v3

    .line 564
    :goto_0
    aget-short v1, p1, v4

    if-lt v1, v4, :cond_2

    aget-short v1, p1, v4

    const/16 v2, 0xc

    if-le v1, v2, :cond_4

    .line 566
    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 561
    :cond_3
    aget-short v1, p1, v3

    add-int/lit16 v1, v1, -0x7d0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v1

    aput-byte v1, v0, v3

    goto :goto_0

    .line 568
    :cond_4
    aget-short v1, p1, v4

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v1

    aput-byte v1, v0, v4

    .line 570
    aget-short v1, p1, v5

    if-lt v1, v4, :cond_5

    aget-short v1, p1, v5

    const/16 v2, 0x1f

    if-le v1, v2, :cond_6

    .line 572
    :cond_5
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 574
    :cond_6
    aget-short v1, p1, v5

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v1

    aput-byte v1, v0, v5

    .line 576
    aget-short v1, p1, v6

    if-ltz v1, :cond_7

    aget-short v1, p1, v6

    const/16 v2, 0x17

    if-le v1, v2, :cond_8

    .line 578
    :cond_7
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 580
    :cond_8
    aget-short v1, p1, v6

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v1

    aput-byte v1, v0, v6

    .line 582
    aget-short v1, p1, v7

    if-ltz v1, :cond_9

    aget-short v1, p1, v7

    const/16 v2, 0x3b

    if-le v1, v2, :cond_a

    .line 584
    :cond_9
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 586
    :cond_a
    aget-short v1, p1, v7

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v1

    aput-byte v1, v0, v7

    .line 588
    const/4 v1, 0x5

    aget-short v1, p1, v1

    if-ltz v1, :cond_b

    const/4 v1, 0x5

    aget-short v1, p1, v1

    const/16 v2, 0x3b

    if-le v1, v2, :cond_c

    .line 590
    :cond_b
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 592
    :cond_c
    const/4 v1, 0x5

    const/4 v2, 0x5

    aget-short v2, p1, v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBCDoctet(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 595
    return-object v0
.end method

.method private encodeTransport(B)[B
    .locals 11
    .parameter "transportType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 746
    if-eqz p1, :cond_0

    const/4 v8, 0x2

    if-eq p1, v8, :cond_0

    .line 748
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    .line 751
    :cond_0
    sget-object v8, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->required_TRANSPORT_TYPE_param_list:[[B

    aget-object v6, v8, p1

    .line 752
    .local v6, param_required:[B
    move-object v0, v6

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-byte v4, v0, v2

    .line 753
    .local v4, paramIndex:B
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    aget-boolean v8, v8, v4

    if-nez v8, :cond_1

    .line 754
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    .line 752
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 758
    .end local v4           #paramIndex:B
    :cond_2
    new-array v7, v9, [B

    .line 759
    .local v7, smsData:[B
    aput-byte p1, v7, v10

    .line 761
    sget-object v8, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->accepted_TRANSPORT_TYPE_param_list:[[B

    aget-object v5, v8, p1

    .line 762
    .local v5, param_accepted:[B
    const/4 v1, 0x0

    .line 763
    .local v1, filledIndex:B
    :goto_1
    const/16 v8, 0x9

    if-ge v1, v8, :cond_4

    .line 764
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    aget-boolean v8, v8, v1

    if-ne v8, v9, :cond_3

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->existInGivenList(B[B)Z

    move-result v8

    if-ne v8, v9, :cond_3

    .line 766
    packed-switch v1, :pswitch_data_0

    .line 798
    :cond_3
    :goto_2
    add-int/lit8 v8, v1, 0x1

    int-to-byte v1, v8

    goto :goto_1

    .line 768
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamTeleserviceId([B)[B

    move-result-object v7

    .line 769
    goto :goto_2

    .line 771
    :pswitch_1
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamServiceCategory([B)[B

    move-result-object v7

    .line 772
    goto :goto_2

    .line 774
    :pswitch_2
    invoke-direct {p0, v9, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamAddress(Z[B)[B

    move-result-object v7

    .line 775
    goto :goto_2

    .line 777
    :pswitch_3
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamSubAddress([B)[B

    move-result-object v7

    .line 778
    goto :goto_2

    .line 780
    :pswitch_4
    invoke-direct {p0, v10, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamAddress(Z[B)[B

    move-result-object v7

    .line 781
    goto :goto_2

    .line 783
    :pswitch_5
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamSubAddress([B)[B

    move-result-object v7

    .line 784
    goto :goto_2

    .line 786
    :pswitch_6
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamBearerReplyOption([B)[B

    move-result-object v7

    .line 787
    goto :goto_2

    .line 789
    :pswitch_7
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamCauseCodes([B)[B

    move-result-object v7

    .line 790
    goto :goto_2

    .line 792
    :pswitch_8
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTransportParamBearerData([B)[B

    move-result-object v7

    .line 793
    goto :goto_2

    .line 800
    :cond_4
    return-object v7

    .line 766
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private encodeTransportParamAddress(Z[B)[B
    .locals 17
    .parameter "isMo"
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    const/4 v5, 0x0

    .line 829
    .local v5, dtmfMode:Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    .line 830
    .local v7, encodeAddress:[B
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 831
    .local v6, encodeAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    sget-object v14, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    sget-object v14, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne v13, v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    array-length v13, v13

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    const/16 v14, 0x2b

    if-ne v13, v14, :cond_1

    .line 836
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    new-array v7, v13, [B

    .line 837
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v13, v14, v7, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 838
    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 841
    :cond_1
    sget-object v13, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-eq v6, v13, :cond_2

    sget-object v13, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-eq v6, v13, :cond_2

    sget-object v13, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN_DATA_NETWORK:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne v6, v13, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-byte v13, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrPlan:B

    if-nez v13, :cond_3

    .line 845
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v13

    if-lez v13, :cond_4

    .line 846
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->isDtmfAddress([B)Z

    move-result v5

    .line 853
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v8

    .line 854
    .local v8, lenData:I
    const/16 v9, 0xa

    .line 856
    .local v9, lenDataBits:I
    const/4 v2, 0x0

    .line 857
    .local v2, addrType:B
    const/4 v13, 0x1

    if-ne v5, v13, :cond_6

    .line 858
    shl-int/lit8 v13, v8, 0x2

    add-int/2addr v9, v13

    .line 859
    sget-object v13, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN_DATA_NETWORK:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-eq v6, v13, :cond_5

    .line 860
    const/4 v4, 0x0

    .line 921
    .local v4, dataMode:Z
    :goto_1
    add-int/lit8 v13, v9, 0x10

    add-int/lit8 v13, v13, 0x7

    shr-int/lit8 v13, v13, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v11

    .line 922
    .local v11, smsData:[B
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v10

    .line 923
    .local v10, prefixLength:I
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    .line 924
    const/4 v13, 0x4

    aput-byte v13, v11, v10

    .line 927
    :goto_2
    add-int/lit8 v13, v10, 0x1

    add-int/lit8 v14, v9, 0x7

    shr-int/lit8 v14, v14, 0x3

    int-to-byte v14, v14

    aput-byte v14, v11, v13

    .line 929
    add-int/lit8 v13, v10, 0x2

    shl-int/lit8 v12, v13, 0x3

    .line 931
    .local v12, startBitIndex:I
    const/4 v13, 0x1

    if-ne v5, v13, :cond_9

    .line 932
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    .line 938
    :goto_3
    if-nez v4, :cond_a

    .line 939
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    .line 945
    :goto_4
    const/4 v13, 0x1

    if-ne v5, v13, :cond_b

    .line 947
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    .line 950
    const/4 v3, 0x0

    .local v3, copyIndex:I
    :goto_5
    if-ge v3, v8, :cond_d

    .line 951
    const/4 v13, 0x4

    aget-byte v14, v7, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->getEncodedDtmf(B)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    .line 950
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 849
    .end local v2           #addrType:B
    .end local v3           #copyIndex:I
    .end local v4           #dataMode:Z
    .end local v8           #lenData:I
    .end local v9           #lenDataBits:I
    .end local v10           #prefixLength:I
    .end local v11           #smsData:[B
    .end local v12           #startBitIndex:I
    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    .line 863
    .restart local v2       #addrType:B
    .restart local v8       #lenData:I
    .restart local v9       #lenDataBits:I
    :cond_5
    const/4 v4, 0x1

    .restart local v4       #dataMode:Z
    goto :goto_1

    .line 867
    .end local v4           #dataMode:Z
    :cond_6
    sget-object v13, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 910
    const/4 v4, 0x0

    .line 913
    .restart local v4       #dataMode:Z
    :goto_6
    const/4 v13, 0x1

    if-ne v4, v13, :cond_7

    .line 914
    shl-int/lit8 v13, v8, 0x3

    add-int/lit8 v13, v13, 0x3

    add-int/2addr v9, v13

    goto :goto_1

    .line 869
    .end local v4           #dataMode:Z
    :pswitch_0
    const/4 v4, 0x0

    .line 870
    .restart local v4       #dataMode:Z
    goto :goto_6

    .line 873
    .end local v4           #dataMode:Z
    :pswitch_1
    const/4 v4, 0x0

    .line 874
    .restart local v4       #dataMode:Z
    const/4 v2, 0x1

    .line 875
    goto :goto_6

    .line 878
    .end local v4           #dataMode:Z
    :pswitch_2
    const/4 v4, 0x0

    .line 879
    .restart local v4       #dataMode:Z
    const/4 v2, 0x2

    .line 880
    goto :goto_6

    .line 883
    .end local v4           #dataMode:Z
    :pswitch_3
    const/4 v4, 0x0

    .line 884
    .restart local v4       #dataMode:Z
    const/4 v2, 0x3

    .line 885
    goto :goto_6

    .line 888
    .end local v4           #dataMode:Z
    :pswitch_4
    const/4 v4, 0x0

    .line 889
    .restart local v4       #dataMode:Z
    const/4 v2, 0x4

    .line 890
    goto :goto_6

    .line 893
    .end local v4           #dataMode:Z
    :pswitch_5
    const/4 v4, 0x0

    .line 894
    .restart local v4       #dataMode:Z
    const/4 v2, 0x6

    .line 895
    goto :goto_6

    .line 898
    .end local v4           #dataMode:Z
    :pswitch_6
    const/4 v4, 0x1

    .line 899
    .restart local v4       #dataMode:Z
    goto :goto_6

    .line 902
    .end local v4           #dataMode:Z
    :pswitch_7
    const/4 v4, 0x1

    .line 903
    .restart local v4       #dataMode:Z
    goto :goto_6

    .line 906
    .end local v4           #dataMode:Z
    :pswitch_8
    const/4 v4, 0x1

    .line 907
    .restart local v4       #dataMode:Z
    goto :goto_6

    .line 917
    :cond_7
    shl-int/lit8 v13, v8, 0x3

    add-int/lit8 v13, v13, 0x7

    add-int/2addr v9, v13

    goto/16 :goto_1

    .line 926
    .restart local v10       #prefixLength:I
    .restart local v11       #smsData:[B
    :cond_8
    const/4 v13, 0x2

    aput-byte v13, v11, v10

    goto :goto_2

    .line 935
    .restart local v12       #startBitIndex:I
    :cond_9
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    goto :goto_3

    .line 942
    :cond_a
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    goto :goto_4

    .line 957
    :cond_b
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    .line 959
    if-nez v4, :cond_c

    .line 960
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrPlan:B

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    .line 963
    :cond_c
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v12

    .line 965
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBytesIntoBitStream([BII[B)I

    move-result v12

    .line 968
    :cond_d
    return-object v11

    .line 867
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private encodeTransportParamBearerData([B)[B
    .locals 6
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1048
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_bearerData:[B

    if-nez v2, :cond_0

    .line 1059
    .end local p1
    :goto_0
    return-object p1

    .line 1052
    .restart local p1
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_bearerData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    .line 1053
    .local v1, smsData:[B
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    .line 1054
    .local v0, prefixLength:I
    const/16 v2, 0x8

    aput-byte v2, v1, v0

    .line 1055
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_bearerData:[B

    array-length v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1056
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_bearerData:[B

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_bearerData:[B

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    .line 1059
    goto :goto_0
.end method

.method private encodeTransportParamBearerReplyOption([B)[B
    .locals 4
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    .line 1020
    .local v1, smsData:[B
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    .line 1021
    .local v0, prefixLength:I
    const/4 v2, 0x6

    aput-byte v2, v1, v0

    .line 1022
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    .line 1023
    add-int/lit8 v2, v0, 0x2

    iget-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_replySeqNumber:B

    shl-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1024
    return-object v1
.end method

.method private encodeTransportParamCauseCodes([B)[B
    .locals 6
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1029
    const/4 v0, 0x1

    .line 1030
    .local v0, lenData:I
    iget-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorClass:B

    if-eqz v3, :cond_0

    .line 1031
    add-int/lit8 v0, v0, 0x1

    .line 1033
    :cond_0
    add-int/lit8 v3, v0, 0x2

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v2

    .line 1034
    .local v2, smsData:[B
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v1

    .line 1035
    .local v1, prefixLength:I
    const/4 v3, 0x7

    aput-byte v3, v2, v1

    .line 1036
    add-int/lit8 v3, v1, 0x1

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 1037
    add-int/lit8 v3, v1, 0x2

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorReplySeqNumber:B

    shl-int/lit8 v4, v4, 0x2

    iget-byte v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorClass:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1039
    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 1041
    add-int/lit8 v3, v1, 0x3

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorDetail:B

    aput-byte v4, v2, v3

    .line 1043
    :cond_1
    return-object v2
.end method

.method private encodeTransportParamServiceCategory([B)[B
    .locals 4
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 816
    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    .line 817
    .local v1, smsData:[B
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    .line 818
    .local v0, prefixLength:I
    const/4 v2, 0x1

    aput-byte v2, v1, v0

    .line 819
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    .line 820
    add-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_typeOfService:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 821
    add-int/lit8 v2, v0, 0x3

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_typeOfService:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 822
    return-object v1
.end method

.method private encodeTransportParamSubAddress([B)[B
    .locals 8
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 976
    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1014
    .end local p1
    :goto_0
    return-object p1

    .line 980
    .restart local p1
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddr:[B

    array-length v4, v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 982
    :sswitch_0
    const/4 v0, 0x1

    .line 991
    .local v0, NSAP_internetCodePoint:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddr:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x7

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v2

    .line 992
    .local v2, smsData:[B
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v1

    .line 993
    .local v1, prefixLength:I
    const/4 v4, 0x5

    aput-byte v4, v2, v1

    .line 994
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddr:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 996
    shl-int/lit8 v3, v1, 0x3

    .line 999
    .local v3, startBitIndex:I
    const/4 v4, 0x3

    invoke-direct {p0, v2, v3, v4, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v3

    .line 1001
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v3

    .line 1003
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddr:[B

    array-length v4, v4

    invoke-direct {p0, v2, v3, v6, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v3

    .line 1005
    const/16 v4, 0x35

    invoke-direct {p0, v2, v3, v6, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v3

    .line 1007
    const/16 v4, 0x10

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBitStream([BIII)I

    move-result v3

    .line 1009
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddr:[B

    invoke-direct {p0, v2, v3, v6, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeBytesIntoBitStream([BII[B)I

    move-result v3

    move-object p1, v2

    .line 1014
    goto :goto_0

    .line 985
    .end local v0           #NSAP_internetCodePoint:I
    .end local v1           #prefixLength:I
    .end local v2           #smsData:[B
    .end local v3           #startBitIndex:I
    :sswitch_1
    const/4 v0, 0x0

    .line 986
    .restart local v0       #NSAP_internetCodePoint:I
    goto :goto_1

    .line 976
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 980
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private encodeTransportParamTeleserviceId([B)[B
    .locals 4
    .parameter "prefixData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    .line 806
    .local v1, smsData:[B
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    .line 807
    .local v0, prefixLength:I
    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 808
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    .line 809
    add-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_teleserviceCategory:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 810
    add-int/lit8 v2, v0, 0x3

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_teleserviceCategory:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 811
    return-object v1
.end method

.method private encodeUserData(Lcom/android/internal/telephony/cdma/sms/UserData;)[B
    .locals 12
    .parameter "userData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8c

    const/4 v8, 0x0

    const/16 v11, 0xa

    const/16 v10, 0x8

    const/4 v7, 0x1

    .line 1839
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 1841
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, v6

    if-le v6, v9, :cond_0

    .line 1842
    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encoded user data too large ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v6

    .line 1854
    :cond_0
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x8

    iget v9, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    sub-int v1, v6, v9

    .line 1855
    .local v1, dataBits:I
    add-int/lit8 v4, v1, 0xd

    .line 1856
    .local v4, paramBits:I
    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v6, v7, :cond_1

    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v6, v11, :cond_2

    .line 1858
    :cond_1
    add-int/lit8 v4, v4, 0x8

    .line 1860
    :cond_2
    div-int/lit8 v9, v4, 0x8

    rem-int/lit8 v6, v4, 0x8

    if-lez v6, :cond_8

    move v6, v7

    :goto_0
    add-int v5, v9, v6

    .line 1861
    .local v5, paramBytes:I
    mul-int/lit8 v6, v5, 0x8

    sub-int v3, v6, v4

    .line 1864
    .local v3, paddingBits:I
    const/4 v0, 0x0

    .line 1865
    .local v0, bitsAllocated:I
    add-int/lit8 v0, v0, 0x8

    .line 1866
    add-int/lit8 v0, v0, 0x8

    .line 1867
    add-int/lit8 v0, v0, 0x5

    .line 1868
    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v6, v7, :cond_3

    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v6, v11, :cond_4

    .line 1870
    :cond_3
    add-int/lit8 v0, v0, 0x8

    .line 1871
    :cond_4
    add-int/lit8 v0, v0, 0x8

    .line 1872
    add-int/2addr v0, v1

    .line 1873
    add-int/2addr v0, v3

    .line 1876
    new-instance v2, Lcom/android/internal/util/BitwiseOutputStream;

    div-int/lit8 v6, v0, 0x8

    invoke-direct {v2, v6}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 1878
    .local v2, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {v2, v10, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1879
    invoke-virtual {v2, v10, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1880
    const/4 v6, 0x5

    iget v9, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v2, v6, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1881
    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v6, v7, :cond_5

    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v6, v11, :cond_6

    .line 1883
    :cond_5
    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {v2, v10, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1885
    :cond_6
    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {v2, v10, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1886
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {v2, v1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 1887
    if-lez v3, :cond_7

    invoke-virtual {v2, v3, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1889
    :cond_7
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .end local v0           #bitsAllocated:I
    .end local v2           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    .end local v3           #paddingBits:I
    .end local v5           #paramBytes:I
    :cond_8
    move v6, v8

    .line 1860
    goto :goto_0
.end method

.method private encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 9
    .parameter "uData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1895
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v3, :cond_0

    iget v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v3, :cond_0

    .line 1896
    const-string v3, "Cdma"

    const-string v4, "user data with null payloadStr"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    const-string v3, ""

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1900
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    if-eqz v3, :cond_1

    .line 1901
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 1951
    :goto_0
    return-void

    .line 1905
    :cond_1
    iget-boolean v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v3, :cond_8

    .line 1906
    iget v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v3, :cond_3

    .line 1907
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v3, :cond_2

    .line 1908
    const-string v3, "CdmaSmsEncoder"

    const-string v4, "user data with octet encoding but null payload"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    new-array v3, v5, [B

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1910
    iput v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 1912
    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1913
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v3

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 1916
    :cond_3
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 1917
    const-string v3, "CdmaSmsEncoder"

    const-string v4, "non-octet user data with null payloadStr"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    const-string v3, ""

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1920
    :cond_4
    iget v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_5

    .line 1921
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;

    move-result-object v2

    .line 1922
    .local v2, gcr:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->data:[B

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1923
    iget v3, v2, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;->septets:I

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 1924
    .end local v2           #gcr:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$Gsm7bitCodingResult;
    :cond_5
    iget v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v3, v7, :cond_6

    .line 1925
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1926
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 1927
    :cond_6
    iget v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v3, v8, :cond_7

    .line 1928
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1929
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 1931
    :cond_7
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported user data encoding ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v3

    .line 1938
    :cond_8
    const/4 v1, 0x0

    .line 1941
    .local v1, flag:Z
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1943
    const/4 v3, 0x2

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1948
    :goto_1
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1949
    iput-boolean v6, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    goto/16 :goto_0

    .line 1944
    :catch_0
    move-exception v0

    .line 1945
    .local v0, ex:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1946
    iput v8, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_1
.end method

.method private encodeUtf16(Ljava/lang/String;)[B
    .locals 4
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
        }
    .end annotation

    .prologue
    .line 2048
    :try_start_0
    const-string v1, "utf-16be"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2049
    :catch_0
    move-exception v0

    .line 2050
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;-><init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V

    throw v1
.end method

.method private existInGivenList(B[B)Z
    .locals 5
    .parameter "checkItem"
    .parameter "givenList"

    .prologue
    .line 450
    move-object v0, p2

    .local v0, arr$:[B
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, v0, v1

    .line 451
    .local v3, listItem:B
    if-ne v3, p1, :cond_0

    .line 452
    const/4 v4, 0x1

    .line 455
    .end local v3           #listItem:B
    :goto_1
    return v4

    .line 450
    .restart local v3       #listItem:B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v3           #listItem:B
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private extendByteArray([BI)[B
    .locals 4
    .parameter "byteArray"
    .parameter "extendedLength"

    .prologue
    const/4 v3, 0x0

    .line 468
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v1

    .line 469
    .local v1, existedLength:I
    add-int v2, v1, p2

    new-array v0, v2, [B

    .line 470
    .local v0, dataArray:[B
    if-lez v1, :cond_0

    .line 471
    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    :cond_0
    return-object v0
.end method

.method private extendByteArray([[BI)[[B
    .locals 4
    .parameter "byte2dArray"
    .parameter "extendedLength"

    .prologue
    .line 492
    const/4 v2, 0x0

    .line 493
    .local v2, existedLength:I
    if-eqz p1, :cond_0

    .line 494
    array-length v2, p1

    .line 496
    :cond_0
    add-int v3, v2, p2

    new-array v1, v3, [[B

    .line 498
    .local v1, data2dArray:[[B
    const/4 v0, 0x0

    .local v0, copyIndex:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 499
    aget-object v3, p1, v0

    aput-object v3, v1, v0

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_1
    return-object v1
.end method

.method private extendShortArray([SI)[S
    .locals 4
    .parameter "shortArray"
    .parameter "extendedLength"

    .prologue
    .line 478
    const/4 v2, 0x0

    .line 479
    .local v2, existedLength:I
    if-eqz p1, :cond_0

    .line 480
    array-length v2, p1

    .line 482
    :cond_0
    add-int v3, v2, p2

    new-array v1, v3, [S

    .line 484
    .local v1, dataArray:[S
    const/4 v0, 0x0

    .local v0, copyIndex:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 485
    aget-short v3, p1, v0

    aput-short v3, v1, v0

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_1
    return-object v1
.end method

.method private fillinTransportParamBearerData([B)V
    .locals 3
    .parameter "bearerData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 741
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_bearerData:[B

    .line 742
    return-void
.end method

.method private fillinTransportParamTeleserviceCategory(I)V
    .locals 3
    .parameter "category"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 662
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 665
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_teleserviceCategory:I

    .line 666
    return-void
.end method

.method private getEncodedDtmf(B)I
    .locals 2
    .parameter "dtmfCharacter"

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 441
    .local v0, dtmfIndex:I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->dtmfDigitToAscII:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->dtmfDigitToAscII:[B

    aget-byte v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_0
    return v0
.end method

.method private isDtmfAddress([B)Z
    .locals 6
    .parameter "addrString"

    .prologue
    .line 422
    move-object v2, p1

    .local v2, arr$:[B
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-byte v1, v2, v3

    .line 423
    .local v1, addrChar:B
    const/4 v0, 0x0

    .line 425
    .local v0, acceptedIndex:I
    :goto_1
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->ascIItoDtmfDigit:[B

    array-length v5, v5

    if-ge v0, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->ascIItoDtmfDigit:[B

    aget-byte v5, v5, v0

    if-eq v1, v5, :cond_0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 428
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->ascIItoDtmfDigit:[B

    array-length v5, v5

    if-lt v0, v5, :cond_1

    .line 429
    const/4 v5, 0x0

    .line 432
    .end local v0           #acceptedIndex:I
    .end local v1           #addrChar:B
    :goto_2
    return v5

    .line 422
    .restart local v0       #acceptedIndex:I
    .restart local v1       #addrChar:B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 432
    .end local v0           #acceptedIndex:I
    .end local v1           #addrChar:B
    :cond_2
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private lengthOfByteArray([B)I
    .locals 1
    .parameter "byteArray"

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 463
    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    goto :goto_0
.end method


# virtual methods
.method public appendTeleserviceParamBroadcastServiceSettingResult(SB)V
    .locals 4
    .parameter "typeOfService"
    .parameter "resultCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1301
    ushr-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 1302
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 1304
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v2, 0x13

    aput-boolean v3, v1, v2

    .line 1305
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingResult:[B

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    .line 1306
    .local v0, existedLength:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingTypeOfService:[S

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendShortArray([SI)[S

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingTypeOfService:[S

    .line 1307
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingResult:[B

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingResult:[B

    .line 1308
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingTypeOfService:[S

    aput-short p1, v1, v0

    .line 1309
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_settingResult:[B

    aput-byte p2, v1, v0

    .line 1310
    return-void
.end method

.method public appendTeleserviceParamMultiEncodingUserData(B[B)V
    .locals 4
    .parameter "userDataEncoding"
    .parameter "userData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1263
    packed-switch p1, :pswitch_data_0

    .line 1281
    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 1276
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1277
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 1283
    :cond_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v2, 0x10

    aput-boolean v3, v1, v2

    .line 1284
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    .line 1285
    .local v0, existedLength:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    .line 1286
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserData:[[B

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->extendByteArray([[BI)[[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserData:[[B

    .line 1287
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserDataEncoding:[B

    aput-byte p1, v1, v0

    .line 1288
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_encodingUserData:[[B

    aput-object p2, v1, v0

    .line 1289
    return-void

    .line 1263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public encodePdu(IB)[B
    .locals 1
    .parameter "category"
    .parameter "teleserviceType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTeleservice(IB)[B

    move-result-object v0

    return-object v0
.end method

.method public fillinTeleserviceParamAbsoluteDelivery([S)V
    .locals 3
    .parameter "absoluteTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 1176
    array-length v0, p1

    if-eq v0, v2, :cond_0

    .line 1177
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1180
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTimeStamp([S)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_absoluteDelivery:[B

    .line 1181
    return-void
.end method

.method public fillinTeleserviceParamAbsoluteValidity([S)V
    .locals 3
    .parameter "absoluteTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1159
    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1160
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1163
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTimeStamp([S)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_absoluteValidity:[B

    .line 1164
    return-void
.end method

.method public fillinTeleserviceParamAlertOnMessageDelivery(B)V
    .locals 3
    .parameter "alertPriority"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1225
    ushr-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 1226
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1229
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_alertOnDelivery:B

    .line 1230
    return-void
.end method

.method public fillinTeleserviceParamCallBack(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;B[B)V
    .locals 3
    .parameter "addrType"
    .parameter "addrPlan"
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1243
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1252
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1254
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1255
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1256
    iput-byte p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddrPlan:B

    .line 1257
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_senderAddr:[B

    .line 1258
    return-void

    .line 1243
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public fillinTeleserviceParamGsmTpFailure(S)V
    .locals 3
    .parameter "failureCause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1315
    ushr-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    .line 1316
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1319
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_gsmTpFailure:B

    .line 1320
    return-void
.end method

.method public fillinTeleserviceParamLanguage(S)V
    .locals 3
    .parameter "language"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1234
    ushr-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    .line 1235
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1238
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_language:B

    .line 1239
    return-void
.end method

.method public fillinTeleserviceParamMessageID(S)V
    .locals 3
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1069
    iput-short p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_messageId:S

    .line 1070
    return-void
.end method

.method public fillinTeleserviceParamMessageIdInCenter(S)V
    .locals 3
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1295
    iput-short p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_messageIdInCenter:S

    .line 1296
    return-void
.end method

.method public fillinTeleserviceParamPriority(B)V
    .locals 3
    .parameter "priorityLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1192
    ushr-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 1193
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1196
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_priority:B

    .line 1197
    return-void
.end method

.method public fillinTeleserviceParamPrivacy(B)V
    .locals 3
    .parameter "privacyLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1202
    ushr-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 1203
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1206
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_privacy:B

    .line 1207
    return-void
.end method

.method public fillinTeleserviceParamRelativeDelivery(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;I)V
    .locals 3
    .parameter "typeOfTime"
    .parameter "fixedMinutes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1187
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTimeRelative(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;I)B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_relativeDelivery:B

    .line 1188
    return-void
.end method

.method public fillinTeleserviceParamRelativeValidity(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;I)V
    .locals 3
    .parameter "typeOfTime"
    .parameter "fixedMinutes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1170
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodeTimeRelative(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;I)B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_relativeValidity:B

    .line 1171
    return-void
.end method

.method public fillinTeleserviceParamReplyOption(ZZZZ)V
    .locals 3
    .parameter "manualAckRequest"
    .parameter "deliveryAckRequest"
    .parameter "readAckRequest"
    .parameter "deliveryReportRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1212
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1220
    :goto_0
    return-void

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1216
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_manualAckRequest:Z

    .line 1217
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_deliveryAckRequest:Z

    .line 1218
    iput-boolean p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_readAckRequest:Z

    .line 1219
    iput-boolean p4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_deliveryReportRequest:Z

    goto :goto_0
.end method

.method public fillinTeleserviceParamUserData(BS[B[B)V
    .locals 2
    .parameter "userDataEncoding"
    .parameter "extendedInfo"
    .parameter "userDataHeader"
    .parameter "userData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1116
    packed-switch p1, :pswitch_data_0

    .line 1138
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1127
    :pswitch_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1128
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1133
    :pswitch_1
    ushr-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 1134
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1140
    :cond_0
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    aput-boolean v1, v0, v1

    .line 1141
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    .line 1142
    iput-short p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncodingExtended:S

    .line 1143
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    .line 1144
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    .line 1145
    return-void

    .line 1116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public fillinTeleserviceParamUserData(B[BLjava/lang/String;)V
    .locals 2
    .parameter "userDataEncoding"
    .parameter "userDataHeader"
    .parameter "payloadStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1105
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    aput-boolean v1, v0, v1

    .line 1106
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    .line 1107
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    .line 1108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    .line 1109
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData_string:Ljava/lang/String;

    .line 1110
    return-void
.end method

.method public fillinTeleserviceParamUserData(B[B[B)V
    .locals 2
    .parameter "userDataEncoding"
    .parameter "userDataHeader"
    .parameter "userData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1074
    packed-switch p1, :pswitch_data_0

    .line 1093
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1085
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->lengthOfByteArray([B)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1086
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1095
    :cond_0
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    aput-boolean v1, v0, v1

    .line 1096
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataEncoding:B

    .line 1097
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userDataHeader:[B

    .line 1098
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userData:[B

    .line 1099
    return-void

    .line 1074
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public fillinTeleserviceParamUserResponseCode(S)V
    .locals 3
    .parameter "responseCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1150
    ushr-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    .line 1151
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParameters:[Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1154
    iput-short p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TeleserviceParam_userResponseCode:S

    .line 1155
    return-void
.end method

.method public fillinTransportParamBearerReplyOption(B)V
    .locals 3
    .parameter "replySeqNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    and-int/lit16 v0, p1, 0xc0

    if-eqz v0, :cond_0

    .line 718
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 721
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_replySeqNumber:B

    .line 722
    return-void
.end method

.method public fillinTransportParamCauseCodes(BBB)V
    .locals 3
    .parameter "replySeqNumber"
    .parameter "errorClass"
    .parameter "errorDetail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    and-int/lit16 v0, p1, 0xc0

    if-nez v0, :cond_0

    and-int/lit16 v0, p2, 0xfc

    if-eqz v0, :cond_1

    .line 729
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 733
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorReplySeqNumber:B

    .line 734
    iput-byte p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorClass:B

    .line 735
    iput-byte p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_errorDetail:B

    .line 736
    return-void
.end method

.method public fillinTransportParamDestAddress(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;B[B)V
    .locals 3
    .parameter "addrType"
    .parameter "addrPlan"
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_RESERVED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne p1, v0, :cond_0

    .line 681
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 684
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 685
    iput-byte p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrPlan:B

    .line 686
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    .line 687
    return-void
.end method

.method public fillinTransportParamOrigAddress(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;B[B)V
    .locals 3
    .parameter "addrType"
    .parameter "addrPlan"
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_RESERVED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne p1, v0, :cond_0

    .line 692
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 695
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 696
    iput-byte p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddrPlan:B

    .line 697
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_toAddr:[B

    .line 698
    return-void
.end method

.method public fillinTransportParamSubAddress(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;[B)V
    .locals 3
    .parameter "addrType"
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 708
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 710
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 711
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 712
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_subAddr:[B

    .line 713
    return-void

    .line 704
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public fillinTransportParamTypeOfService(I)V
    .locals 3
    .parameter "typeOfService"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 671
    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 672
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParameters:[Z

    aput-boolean v2, v0, v2

    .line 675
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->TransportParam_typeOfService:I

    .line 676
    return-void
.end method
