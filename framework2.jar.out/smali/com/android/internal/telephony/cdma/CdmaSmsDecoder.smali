.class public Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;
.super Ljava/lang/Object;
.source "CdmaSmsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;,
        Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_TAG:Ljava/lang/String; = "CDMA"

.field static final accepted_TRANSPORT_TYPE:[B

.field static final accepted_TRANSPORT_TYPE_param_list:[[B

.field static final accepted_param_ACKNOWLEDGE:[B

.field static final accepted_param_BROADCAST:[B

.field static final accepted_param_POINT_TO_POINT:[B

.field static final accepted_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

.field static final accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

.field static final accepted_subparam_IS91_EXTENDED:[B

.field static final accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

.field static final accepted_subparam_VOICE_MAIL_NOTIFICATION:[B

.field static final accepted_subparam_WIRELESS_APPLICATION:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_delivery_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

.field static final accepted_subparam_WIRELESS_PAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_PAGING_delivery_ack:[B

.field static final accepted_subparam_WIRELESS_PAGING_user_ack:[B

.field static final accepted_subparam_broadcast:[B

.field static final accepted_subparam_raw_message_waiting_indication:[B

.field static final accepted_subparam_submit_report:[B

.field private static final bitsMaskRight:[S

.field private static final dtmfDigitToAscII:[B

.field static final required_TRANSPORT_TYPE_param_list:[[B

.field static final required_param_ACKNOWLEDGE:[B

.field static final required_param_BROADCAST:[B

.field static final required_param_POINT_TO_POINT:[B

.field static final required_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

.field static final required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

.field static final required_subparam_IS91_EXTENDED:[B

.field static final required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

.field static final required_subparam_VOICE_MAIL_NOTIFICATION:[B

.field static final required_subparam_WIRELESS_APPLICATION:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_delivery:[B

.field static final required_subparam_WIRELESS_MESSAGING_delivery_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_read_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_user_ack:[B

.field static final required_subparam_WIRELESS_PAGING_delivery:[B

.field static final required_subparam_WIRELESS_PAGING_delivery_ack:[B

.field static final required_subparam_WIRELESS_PAGING_user_ack:[B

.field static final required_subparam_broadcast:[B

.field static final required_subparam_raw_message_waiting_indication:[B

.field static final required_subparam_submit_report:[B


# instance fields
.field final BODY_EMPTY:I

.field final BODY_ENCODING_CHAR:I

.field final BODY_ENCODING_RAW_DATA:I

.field final BODY_ENCODING_UNICODE:I

.field final BODY_ENCODING_UNKNOWN:I

.field TeleserviceMsgType:B

.field TeleserviceParam_absoluteValidity:[S

.field TeleserviceParam_alertOnDelivery:B

.field TeleserviceParam_callbackAddr:[B

.field TeleserviceParam_callbackAddrPlan:B

.field TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_displayMode:B

.field TeleserviceParam_downloadMode:B

.field TeleserviceParam_encodingUserData:[[B

.field TeleserviceParam_encodingUserDataEncoding:[B

.field TeleserviceParam_errorClass:B

.field TeleserviceParam_errorDetail:B

.field TeleserviceParam_gsmTpFailure:B

.field TeleserviceParam_language:B

.field TeleserviceParam_messageCenterTimeStamp:[S

.field TeleserviceParam_messageId:S

.field TeleserviceParam_messageIdInCenter:S

.field TeleserviceParam_priority:B

.field TeleserviceParam_privacy:B

.field TeleserviceParam_relativeValidity:[B

.field TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

.field TeleserviceParam_replyManualAck:Z

.field TeleserviceParam_replyReadAck:Z

.field TeleserviceParam_replySubmitReport:Z

.field TeleserviceParam_settingAlertForTypeOfService:[B

.field TeleserviceParam_settingData:[[B

.field TeleserviceParam_settingEncoding:B

.field TeleserviceParam_settingLanguage:[B

.field TeleserviceParam_settingMaxMessagesForTypeOfService:[S

.field TeleserviceParam_settingOperation:[B

.field TeleserviceParam_settingTypeOfService:[S

.field TeleserviceParam_userData:[B

.field TeleserviceParam_userDataEncoding:B

.field TeleserviceParam_userDataEncodingExtended:S

.field TeleserviceParam_userDataHeader:[B

.field TeleserviceParam_userDataHeaderExisted:Z

.field TeleserviceParam_userResponseCode:S

.field TeleserviceParam_vmnAccessNumber:[B

.field TeleserviceParam_vmnAccessNumberPlan:B

.field TeleserviceParam_vmnAccessNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_vmnAckDeletedAcks:[S

.field TeleserviceParam_vmnAckMailboxId:S

.field TeleserviceParam_vmnAckPlayedAcks:[S

.field TeleserviceParam_vmnAckUnheardMessages:S

.field TeleserviceParam_vmnAllowReply:Z

.field TeleserviceParam_vmnCallingPartyNumber:[B

.field TeleserviceParam_vmnCallingPartyNumberPlan:B

.field TeleserviceParam_vmnCallingPartyNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_vmnChangePassword:Z

.field TeleserviceParam_vmnIncludeFax:Z

.field TeleserviceParam_vmnLengthInSeconds:S

.field TeleserviceParam_vmnMailboxId:S

.field TeleserviceParam_vmnMessageId:S

.field TeleserviceParam_vmnPasswordExisted:Z

.field TeleserviceParam_vmnPasswordMaxLen:B

.field TeleserviceParam_vmnPasswordMinLen:B

.field TeleserviceParam_vmnPriority:B

.field TeleserviceParam_vmnRetentionDays:B

.field TeleserviceParam_vmnServerAlmostFull:Z

.field TeleserviceParam_vmnServerFull:Z

.field TeleserviceParam_vmnSetupInitUserPrompt:Z

.field TeleserviceParam_vmnUnheardMessages:S

.field TeleserviceParam_voiceMailsInServer:B

.field TeleserviceParameters:[Z

.field TransportMsgType:B

.field TransportParam_causeDetail:B

.field TransportParam_destAddr:[B

.field TransportParam_destAddrPlan:B

.field TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TransportParam_errorClass:B

.field TransportParam_fromAddr:[B

.field TransportParam_fromAddrDigitMode:B

.field TransportParam_fromAddrNumberMode:B

.field TransportParam_fromAddrNumberOfDigits:I

.field TransportParam_fromAddrPlan:B

.field TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TransportParam_replySeqNumber:B

.field TransportParam_subAddr:[B

.field TransportParam_subAddrType:B

.field TransportParam_teleserviceCategory:I

.field TransportParam_typeOfService:I

.field TransportParameters:[Z

.field dataEnd:I

.field dataEnd_bearerData:I

.field dataEnd_userData:I

.field param_len:S

.field smsData:[B

.field startBitIndex_decodeAddress:I

.field startIndex:I

.field startIndex_bearerData:I

.field startIndex_userData:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-array v0, v6, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE:[B

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_POINT_TO_POINT:[B

    .line 77
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_POINT_TO_POINT:[B

    .line 82
    new-array v0, v4, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_BROADCAST:[B

    .line 87
    new-array v0, v3, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_BROADCAST:[B

    .line 91
    new-array v0, v4, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_ACKNOWLEDGE:[B

    .line 96
    new-array v0, v3, [B

    const/4 v1, 0x7

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_ACKNOWLEDGE:[B

    .line 100
    new-array v0, v6, [[B

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_POINT_TO_POINT:[B

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_BROADCAST:[B

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_ACKNOWLEDGE:[B

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE_param_list:[[B

    .line 106
    new-array v0, v6, [[B

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_POINT_TO_POINT:[B

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_BROADCAST:[B

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_ACKNOWLEDGE:[B

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_TRANSPORT_TYPE_param_list:[[B

    .line 112
    const/16 v0, 0x9

    new-array v0, v0, [S

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    .line 115
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dtmfDigitToAscII:[B

    .line 119
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_broadcast:[B

    .line 133
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_broadcast:[B

    .line 137
    new-array v0, v4, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_IS91_EXTENDED:[B

    .line 142
    new-array v0, v4, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_IS91_EXTENDED:[B

    .line 147
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery:[B

    .line 161
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery:[B

    .line 165
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_user_ack:[B

    .line 174
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_user_ack:[B

    .line 178
    new-array v0, v5, [B

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery_ack:[B

    .line 186
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery_ack:[B

    .line 190
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    .line 208
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    .line 212
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

    .line 221
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_user_ack:[B

    .line 225
    new-array v0, v5, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

    .line 233
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_read_ack:[B

    .line 237
    new-array v0, v5, [B

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    .line 245
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    .line 249
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_VOICE_MAIL_NOTIFICATION:[B

    .line 263
    new-array v0, v4, [B

    fill-array-data v0, :array_11

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_VOICE_MAIL_NOTIFICATION:[B

    .line 268
    new-array v0, v4, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    .line 273
    new-array v0, v4, [B

    fill-array-data v0, :array_13

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_APPLICATION:[B

    .line 278
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    .line 296
    new-array v0, v4, [B

    fill-array-data v0, :array_15

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    .line 301
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    .line 310
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    .line 314
    new-array v0, v5, [B

    fill-array-data v0, :array_17

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    .line 322
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    .line 326
    new-array v0, v5, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    .line 334
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    .line 338
    new-array v0, v6, [B

    fill-array-data v0, :array_19

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    .line 344
    new-array v0, v4, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    .line 349
    new-array v0, v4, [B

    fill-array-data v0, :array_1b

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    .line 354
    new-array v0, v4, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    .line 359
    new-array v0, v6, [B

    fill-array-data v0, :array_1d

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    .line 365
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    .line 369
    new-array v0, v5, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_submit_report:[B

    .line 377
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_submit_report:[B

    .line 382
    new-array v0, v4, [B

    fill-array-data v0, :array_1f

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_raw_message_waiting_indication:[B

    .line 388
    new-array v0, v4, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_raw_message_waiting_indication:[B

    return-void

    .line 60
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
    .end array-data

    .line 66
    :array_1
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x8t
    .end array-data

    .line 82
    :array_2
    .array-data 0x1
        0x1t
        0x8t
    .end array-data

    .line 91
    nop

    :array_3
    .array-data 0x1
        0x5t
        0x7t
    .end array-data

    .line 112
    nop

    :array_4
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

    .line 115
    nop

    :array_5
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

    .line 119
    :array_6
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x8t
        0xct
        0xdt
        0xet
        0xft
        0x10t
    .end array-data

    .line 137
    :array_7
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 142
    nop

    :array_8
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 147
    nop

    :array_9
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x8t
        0x9t
        0xat
        0xbt
        0xet
        0xft
        0x10t
        0x11t
    .end array-data

    .line 165
    :array_a
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 178
    nop

    :array_b
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x14t
    .end array-data

    .line 190
    nop

    :array_c
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

    .line 212
    :array_d
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 225
    nop

    :array_e
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 237
    nop

    :array_f
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x14t
    .end array-data

    .line 249
    nop

    :array_10
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x8t
        0x9t
        0xbt
        0xct
        0xet
        0x10t
        0x16t
        0x17t
    .end array-data

    .line 263
    :array_11
    .array-data 0x1
        0x0t
        0xbt
    .end array-data

    .line 268
    nop

    :array_12
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 273
    nop

    :array_13
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 278
    nop

    :array_14
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

    .line 296
    :array_15
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 301
    nop

    :array_16
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 314
    nop

    :array_17
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 326
    nop

    :array_18
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x14t
    .end array-data

    .line 338
    nop

    :array_19
    .array-data 0x1
        0x0t
        0x3t
        0x12t
    .end array-data

    .line 344
    :array_1a
    .array-data 0x1
        0x0t
        0x12t
    .end array-data

    .line 349
    nop

    :array_1b
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 354
    nop

    :array_1c
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 359
    nop

    :array_1d
    .array-data 0x1
        0x0t
        0x1t
        0x2t
    .end array-data

    .line 369
    :array_1e
    .array-data 0x1
        0x0t
        0x1t
        0xdt
        0x10t
        0x15t
    .end array-data

    .line 382
    nop

    :array_1f
    .array-data 0x1
        0x0t
        0xbt
    .end array-data

    .line 388
    nop

    :array_20
    .array-data 0x1
        0x0t
        0xbt
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "pdu"

    .prologue
    const/4 v1, 0x0

    .line 559
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_EMPTY:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_UNKNOWN:I

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_RAW_DATA:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_UNICODE:I

    .line 54
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_CHAR:I

    .line 421
    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    .line 422
    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    .line 427
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberOfDigits:I

    .line 560
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    .line 561
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 563
    return-void
.end method

.method private decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B
    .locals 10
    .parameter "startBitIndex"
    .parameter "dtmfDigit"
    .parameter "numberingType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 711
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v6, p1, 0x8

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_0

    .line 712
    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 716
    :cond_0
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    .line 717
    .local v4, numberOfCharacters:I
    add-int/lit8 p1, p1, 0x8

    .line 719
    if-nez v4, :cond_1

    .line 720
    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startBitIndex_decodeAddress:I

    .line 722
    const/4 v1, 0x0

    .line 772
    :goto_0
    return-object v1

    .line 728
    :cond_1
    if-eqz p2, :cond_4

    .line 729
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v6, v4, 0x2

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_2

    .line 730
    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 734
    :cond_2
    new-array v1, v4, [B

    .line 735
    .local v1, addressDecoded:[B
    const/4 v0, 0x0

    .local v0, addrIndex:I
    :goto_1
    if-ge v0, v4, :cond_6

    .line 736
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dtmfDigitToAscII:[B

    invoke-direct {p0, p1, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    aget-byte v5, v5, v6

    aput-byte v5, v1, v0

    .line 738
    invoke-direct {p0, p1, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    .line 739
    .local v3, ix:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    const/16 v3, 0xa

    .line 740
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dtmfDigitToAscII:[B

    aget-byte v5, v5, v3

    aput-byte v5, v1, v0

    .line 742
    add-int/lit8 p1, p1, 0x4

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 746
    .end local v0           #addrIndex:I
    .end local v1           #addressDecoded:[B
    .end local v3           #ix:I
    :cond_4
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v6, v4, 0x3

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_5

    .line 747
    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 750
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 757
    new-array v1, v4, [B

    .line 758
    .restart local v1       #addressDecoded:[B
    const/4 v0, 0x0

    .restart local v0       #addrIndex:I
    :goto_2
    if-ge v0, v4, :cond_6

    .line 759
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    .line 760
    add-int/lit8 p1, p1, 0x8

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 753
    .end local v0           #addrIndex:I
    .end local v1           #addressDecoded:[B
    :pswitch_0
    invoke-direct {p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v1

    .line 754
    .restart local v1       #addressDecoded:[B
    shl-int/lit8 v5, v4, 0x3

    add-int/2addr p1, v5

    .line 765
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne p3, v5, :cond_7

    .line 766
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [B

    .line 767
    .local v2, addressInternational:[B
    const/16 v5, 0x2b

    aput-byte v5, v2, v8

    .line 768
    const/4 v5, 0x1

    array-length v6, v1

    invoke-static {v1, v8, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    move-object v1, v2

    .line 771
    .end local v2           #addressInternational:[B
    :cond_7
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startBitIndex_decodeAddress:I

    goto/16 :goto_0

    .line 750
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private decodeBCDnumber(I)I
    .locals 4
    .parameter "bcdOctet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    .line 777
    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v0, v2, 0xf

    .line 778
    .local v0, highBCD:I
    and-int/lit8 v1, p1, 0xf

    .line 779
    .local v1, lowBCD:I
    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    .line 780
    :cond_0
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS BCD number"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 783
    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method

.method private decodeBitStream(II)I
    .locals 8
    .parameter "startBitIndex"
    .parameter "lengthOfBits"

    .prologue
    const/16 v7, 0x8

    .line 612
    shr-int/lit8 v2, p1, 0x3

    .line 613
    .local v2, bytesOffset:I
    and-int/lit8 v0, p1, 0x7

    .line 614
    .local v0, bitsOffset:I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    aget-byte v5, v5, v2

    and-int/lit16 v4, v5, 0xff

    .line 616
    .local v4, returnValue:I
    add-int v5, v0, p2

    if-gt v5, v7, :cond_1

    .line 617
    rsub-int/lit8 v5, v0, 0x8

    sub-int/2addr v5, p2

    shr-int v5, v4, v5

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    aget-short v6, v6, p2

    and-int v4, v5, v6

    .line 633
    :cond_0
    :goto_0
    return v4

    .line 620
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    rsub-int/lit8 v6, v0, 0x8

    aget-short v5, v5, v6

    and-int/2addr v4, v5

    .line 621
    add-int/lit8 v3, v2, 0x1

    .line 622
    .local v3, bytesOffsetRemaining:I
    rsub-int/lit8 v5, v0, 0x8

    sub-int v1, p2, v5

    .line 623
    .local v1, bitsRemaining:I
    :goto_1
    if-le v1, v7, :cond_2

    .line 624
    shl-int/lit8 v5, v4, 0x8

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    .line 625
    add-int/lit8 v3, v3, 0x1

    .line 626
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 628
    :cond_2
    if-lez v1, :cond_0

    .line 629
    shl-int v5, v4, v1

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    aget-byte v6, v6, v3

    rsub-int/lit8 v7, v1, 0x8

    shr-int/2addr v6, v7

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    aget-short v7, v7, v1

    and-int/2addr v6, v7

    or-int v4, v5, v6

    goto :goto_0
.end method

.method private decodeBitStreamIntoBytes(III)[B
    .locals 3
    .parameter "startBitIndex"
    .parameter "lengthOfBits"
    .parameter "lengthOfBytes"

    .prologue
    .line 638
    new-array v0, p3, [B

    .line 641
    .local v0, byteArray:[B
    const/4 v1, 0x0

    .local v1, copyIndex:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 642
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 643
    add-int/2addr p1, p2

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    :cond_0
    return-object v0
.end method

.method private decodeBitStreamIntoShorts(III)[S
    .locals 3
    .parameter "startBitIndex"
    .parameter "lengthOfBits"
    .parameter "lengthOfBytes"

    .prologue
    .line 651
    new-array v1, p3, [S

    .line 654
    .local v1, shortArray:[S
    const/4 v0, 0x0

    .local v0, copyIndex:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 655
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 656
    add-int/2addr p1, p2

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    :cond_0
    return-object v1
.end method

.method private decodeParameter_header()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 574
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parmHeader size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v1, v2

    .line 579
    .local v0, param_id:B
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    .line 580
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 581
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    if-ge v1, v2, :cond_1

    .line 582
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parmHeader size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 585
    :cond_1
    return v0
.end method

.method private decodePeriodRelative(I)[B
    .locals 7
    .parameter "period"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 834
    const/16 v2, 0xf4

    if-le p1, v2, :cond_0

    .line 835
    const/4 v1, 0x0

    .line 872
    :goto_0
    return-object v1

    .line 837
    :cond_0
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 838
    .local v1, relativeTime:[B
    const/16 v2, 0xa7

    if-ge p1, v2, :cond_3

    .line 839
    aput-byte v3, v1, v3

    .line 840
    aput-byte v3, v1, v5

    .line 844
    const/16 v2, 0x8f

    if-ge p1, v2, :cond_1

    .line 845
    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v0, v2, 0x5

    .line 846
    .local v0, offsetValue:I
    div-int/lit8 v2, v0, 0x3c

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 847
    rem-int/lit8 v2, v0, 0x3c

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    goto :goto_0

    .line 850
    .end local v0           #offsetValue:I
    :cond_1
    add-int/lit16 v0, p1, -0x8f

    .line 851
    .restart local v0       #offsetValue:I
    shr-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0xc

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 852
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    .line 853
    const/16 v2, 0x1e

    aput-byte v2, v1, v4

    goto :goto_0

    .line 856
    :cond_2
    aput-byte v3, v1, v4

    goto :goto_0

    .line 861
    .end local v0           #offsetValue:I
    :cond_3
    const/16 v2, 0xc5

    if-ge p1, v2, :cond_4

    .line 862
    aput-byte v3, v1, v3

    .line 863
    add-int/lit16 v2, p1, -0xa6

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 869
    :goto_1
    aput-byte v3, v1, v6

    .line 870
    aput-byte v3, v1, v4

    goto :goto_0

    .line 866
    :cond_4
    add-int/lit16 v2, p1, -0xc0

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 867
    aput-byte v3, v1, v5

    goto :goto_1
.end method

.method private decodeTeleservice()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1321
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1322
    .local v1, startIndex_teleservice:I
    iput-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    .line 1324
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeParameter_header()B

    move-result v2

    if-nez v2, :cond_3

    .line 1326
    iget-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    if-ge v2, v3, :cond_2

    .line 1327
    :cond_1
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-id size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1330
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v2, v2, v3

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    .line 1331
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1336
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    if-gt v2, v3, :cond_0

    .line 1337
    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    if-ne v2, v6, :cond_4

    .line 1338
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-id not existed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1334
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    .line 1341
    :cond_4
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1343
    const/4 v2, 0x2

    new-array v0, v2, [[B

    .line 1345
    .local v0, filtersApplied:[[B
    const/16 v2, 0x18

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    .line 1347
    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    if-ne v2, v4, :cond_6

    .line 1348
    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    if-ne v2, v4, :cond_5

    .line 1349
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_broadcast:[B

    aput-object v2, v0, v5

    .line 1350
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_broadcast:[B

    aput-object v2, v0, v4

    .line 1351
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceDeliveryBroadcast([[B)V

    .line 1486
    :goto_1
    return-void

    .line 1353
    :cond_5
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS broadcast but not delivery : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1357
    :cond_6
    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    packed-switch v2, :pswitch_data_0

    .line 1482
    :pswitch_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported msg-type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1359
    :pswitch_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_1

    .line 1373
    :pswitch_2
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported submit-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1361
    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1362
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    .line 1377
    :goto_2
    :pswitch_4
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_2

    .line 1411
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported delivery-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1365
    :pswitch_5
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v5

    .line 1366
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v4

    goto :goto_2

    .line 1369
    :pswitch_6
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1370
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_2

    .line 1379
    :pswitch_7
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_IS91_EXTENDED:[B

    aput-object v2, v0, v5

    .line 1380
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_IS91_EXTENDED:[B

    aput-object v2, v0, v4

    .line 1414
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceDelivery([[B)V

    goto/16 :goto_1

    .line 1383
    :pswitch_8
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1384
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1387
    :pswitch_9
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1388
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1391
    :pswitch_a
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_VOICE_MAIL_NOTIFICATION:[B

    aput-object v2, v0, v5

    .line 1392
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_VOICE_MAIL_NOTIFICATION:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1395
    :pswitch_b
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v5

    .line 1396
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1399
    :pswitch_c
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1400
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1403
    :pswitch_d
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    aput-object v2, v0, v5

    .line 1404
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1407
    :pswitch_e
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    aput-object v2, v0, v5

    .line 1408
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1417
    :pswitch_f
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_3

    .line 1431
    :pswitch_10
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported deliveryAck-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1419
    :pswitch_11
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery_ack:[B

    aput-object v2, v0, v5

    .line 1420
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery_ack:[B

    aput-object v2, v0, v4

    .line 1434
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceDeliveryAck([[B)V

    goto/16 :goto_1

    .line 1423
    :pswitch_12
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v5

    .line 1424
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v4

    goto :goto_4

    .line 1427
    :pswitch_13
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v5

    .line 1428
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v4

    goto :goto_4

    .line 1437
    :pswitch_14
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_4

    .line 1455
    :pswitch_15
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported userAck-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1439
    :pswitch_16
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_user_ack:[B

    aput-object v2, v0, v5

    .line 1440
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_user_ack:[B

    aput-object v2, v0, v4

    .line 1458
    :goto_5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceUserAck([[B)V

    goto/16 :goto_1

    .line 1443
    :pswitch_17
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

    aput-object v2, v0, v5

    .line 1444
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_5

    .line 1447
    :pswitch_18
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    aput-object v2, v0, v5

    .line 1448
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_5

    .line 1451
    :pswitch_19
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    aput-object v2, v0, v5

    .line 1452
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_5

    .line 1461
    :pswitch_1a
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_5

    .line 1471
    :pswitch_1b
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported readAck-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1463
    :pswitch_1c
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

    aput-object v2, v0, v5

    .line 1464
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_read_ack:[B

    aput-object v2, v0, v4

    .line 1474
    :goto_6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceReadAck([[B)V

    goto/16 :goto_1

    .line 1467
    :pswitch_1d
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    aput-object v2, v0, v5

    .line 1468
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    aput-object v2, v0, v4

    goto :goto_6

    .line 1477
    :pswitch_1e
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_submit_report:[B

    aput-object v2, v0, v5

    .line 1478
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_submit_report:[B

    aput-object v2, v0, v4

    .line 1479
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubmitReport([[B)V

    goto/16 :goto_1

    .line 1357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_f
        :pswitch_14
        :pswitch_1a
        :pswitch_0
        :pswitch_1e
    .end packed-switch

    .line 1359
    :pswitch_data_1
    .packed-switch 0x1002
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1377
    :pswitch_data_2
    .packed-switch 0x1000
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 1417
    :pswitch_data_3
    .packed-switch 0x1001
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_10
        :pswitch_13
    .end packed-switch

    .line 1437
    :pswitch_data_4
    .packed-switch 0x1001
        :pswitch_16
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_15
        :pswitch_19
    .end packed-switch

    .line 1461
    :pswitch_data_5
    .packed-switch 0x1002
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1d
    .end packed-switch
.end method

.method private decodeTeleserviceDelivery([[B)V
    .locals 3
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1499
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1500
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    const/16 v1, 0x1003

    if-ne v0, v1, :cond_1

    .line 1501
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/16 v1, 0x16

    aget-boolean v0, v0, v1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/16 v1, 0x17

    aget-boolean v0, v0, v1

    if-ne v0, v2, :cond_1

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1506
    :cond_1
    return-void
.end method

.method private decodeTeleserviceDeliveryAck([[B)V
    .locals 0
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1510
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1511
    return-void
.end method

.method private decodeTeleserviceDeliveryBroadcast([[B)V
    .locals 3
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 1490
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1491
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 1492
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_priority:B

    .line 1493
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1495
    :cond_0
    return-void
.end method

.method private decodeTeleserviceParamAbsoluteValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1826
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTimeStamp()[S

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    .line 1827
    return-void
.end method

.method private decodeTeleserviceParamAlertOnMessageDelivery()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1883
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1885
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_alertOnDelivery:B

    .line 1890
    :goto_0
    return-void

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_alertOnDelivery:B

    goto :goto_0
.end method

.method private decodeTeleserviceParamBroadcastServiceSetting()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0x8

    .line 1991
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v4, 0x3

    .line 1993
    .local v3, startBitIndex:I
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x5

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_0

    .line 1994
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-setting size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 1997
    :cond_0
    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingEncoding:B

    .line 1998
    add-int/lit8 v3, v3, 0x5

    .line 2000
    const/4 v1, 0x0

    .line 2003
    .local v1, indexOfFields:I
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x30

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_2

    .line 2004
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-setting size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 2008
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingOperation:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingOperation:[B

    .line 2009
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingTypeOfService:[S

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([S)[S

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingTypeOfService:[S

    .line 2010
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingLanguage:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingLanguage:[B

    .line 2011
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingMaxMessagesForTypeOfService:[S

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([S)[S

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingMaxMessagesForTypeOfService:[S

    .line 2012
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingAlertForTypeOfService:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingAlertForTypeOfService:[B

    .line 2013
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingData:[[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([[B)[[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingData:[[B

    .line 2015
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingOperation:[B

    invoke-direct {p0, v3, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 2016
    add-int/lit8 v3, v3, 0x4

    .line 2017
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingTypeOfService:[S

    const/16 v5, 0x10

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v1

    .line 2018
    add-int/lit8 v3, v3, 0x10

    .line 2019
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingLanguage:[B

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 2020
    add-int/lit8 v3, v3, 0x8

    .line 2021
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingMaxMessagesForTypeOfService:[S

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v1

    .line 2022
    add-int/lit8 v3, v3, 0x8

    .line 2023
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingAlertForTypeOfService:[B

    invoke-direct {p0, v3, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 2024
    add-int/lit8 v3, v3, 0x4

    .line 2026
    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    .line 2027
    .local v2, numberOfCharacters:I
    add-int/lit8 v3, v3, 0x8

    .line 2029
    const/16 v0, 0x8

    .line 2030
    .local v0, bitsPerCharacters:I
    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingEncoding:B

    packed-switch v4, :pswitch_data_0

    .line 2049
    :goto_0
    :pswitch_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    mul-int v5, v2, v0

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_3

    .line 2050
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-setting size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 2037
    :pswitch_1
    const/4 v0, 0x7

    .line 2038
    goto :goto_0

    .line 2040
    :pswitch_2
    shl-int/lit8 v2, v2, 0x1

    .line 2041
    goto :goto_0

    .line 2053
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingData:[[B

    invoke-direct {p0, v3, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v5

    aput-object v5, v4, v1

    .line 2054
    mul-int v4, v2, v0

    add-int/2addr v3, v4

    .line 2055
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_1

    .line 2056
    return-void

    .line 2030
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeTeleserviceParamCallBack()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1899
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v4, v5

    if-ge v4, v2, :cond_0

    .line 1900
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-callback size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1904
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    shr-int/lit8 v0, v4, 0x7

    .line 1905
    .local v0, digitMode:I
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v4, v4, 0x3

    add-int/lit8 v1, v4, 0x1

    .line 1906
    .local v1, startBitIndex:I
    if-eqz v0, :cond_1

    .line 1907
    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1909
    add-int/lit8 v1, v1, 0x3

    .line 1910
    const/4 v4, 0x4

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrPlan:B

    .line 1911
    add-int/lit8 v1, v1, 0x4

    .line 1918
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddr:[B

    .line 1919
    return-void

    .line 1914
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1915
    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrPlan:B

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1918
    goto :goto_1
.end method

.method private decodeTeleserviceParamDisplayMode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_displayMode:B

    .line 1925
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_displayMode:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1926
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_downloadMode:B

    .line 1931
    :goto_0
    return-void

    .line 1929
    :cond_0
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_downloadMode:B

    goto :goto_0
.end method

.method private decodeTeleserviceParamErrorCode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_errorClass:B

    .line 2061
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_errorDetail:B

    .line 2062
    return-void
.end method

.method private decodeTeleserviceParamGsmTpFailure()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_gsmTpFailure:B

    .line 2067
    return-void
.end method

.method private decodeTeleserviceParamLanguage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_language:B

    .line 1895
    return-void
.end method

.method private decodeTeleserviceParamMessageCenterTimeStamp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1821
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTimeStamp()[S

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    .line 1822
    return-void
.end method

.method private decodeTeleserviceParamMessageID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    .line 1656
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageId:S

    .line 1659
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeaderExisted:Z

    .line 1660
    return-void

    .line 1659
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decodeTeleserviceParamMessageIdInCenter()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageIdInCenter:S

    .line 1987
    return-void
.end method

.method private decodeTeleserviceParamMultiEncodingUserData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1935
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v4, 0x3

    .line 1936
    .local v3, startBitIndex:I
    const/4 v1, 0x0

    .line 1940
    .local v1, indexOfFields:I
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0xd

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_1

    .line 1941
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-multiUser size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 1945
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserDataEncoding:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserDataEncoding:[B

    .line 1946
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserData:[[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([[B)[[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserData:[[B

    .line 1948
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserDataEncoding:[B

    const/4 v5, 0x5

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 1949
    add-int/lit8 v3, v3, 0x5

    .line 1950
    const/16 v4, 0x8

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    .line 1951
    .local v2, numberOfCharacters:I
    add-int/lit8 v3, v3, 0x8

    .line 1953
    const/16 v0, 0x8

    .line 1954
    .local v0, bitsPerCharacters:I
    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    packed-switch v4, :pswitch_data_0

    .line 1973
    :goto_0
    :pswitch_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    mul-int v5, v2, v0

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_2

    .line 1974
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-multiUser size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 1961
    :pswitch_1
    const/4 v0, 0x7

    .line 1962
    goto :goto_0

    .line 1964
    :pswitch_2
    shl-int/lit8 v2, v2, 0x1

    .line 1965
    goto :goto_0

    .line 1977
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserData:[[B

    invoke-direct {p0, v3, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v5

    aput-object v5, v4, v1

    .line 1978
    mul-int v4, v2, v0

    add-int/2addr v3, v4

    .line 1979
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_0

    .line 1980
    return-void

    .line 1954
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeTeleserviceParamPriority()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_priority:B

    .line 1860
    return-void
.end method

.method private decodeTeleserviceParamPrivacy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_privacy:B

    .line 1865
    return-void
.end method

.method private decodeTeleserviceParamRelativeValidity()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1831
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1832
    .local v0, validity:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodePeriodRelative(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidity:[B

    .line 1833
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidity:[B

    if-eqz v1, :cond_0

    .line 1834
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Fixed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    .line 1855
    :goto_0
    return-void

    .line 1837
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1851
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeSMS subparm-relaValid peroid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 1839
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Indefinite:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    .line 1842
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilMessageDisplayed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    .line 1845
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilMobileInactive:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    .line 1848
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilLeavingThisRegistrationArea:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    .line 1837
    :pswitch_data_0
    .packed-switch 0xf5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private decodeTeleserviceParamReplyOption()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1870
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v1, v4

    .line 1871
    .local v0, options:B
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_replyManualAck:Z

    .line 1872
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_replyReadAck:Z

    .line 1873
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_replySubmitReport:Z

    .line 1874
    return-void

    :cond_0
    move v1, v3

    .line 1871
    goto :goto_0

    :cond_1
    move v1, v3

    .line 1872
    goto :goto_1

    :cond_2
    move v2, v3

    .line 1873
    goto :goto_2
.end method

.method private decodeTeleserviceParamUserData()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 1664
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v6, 0x3

    .line 1666
    .local v3, startBitIndex:I
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x5

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_0

    .line 1667
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1670
    :cond_0
    const/4 v6, 0x5

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    .line 1671
    add-int/lit8 v3, v3, 0x5

    .line 1673
    const/4 v2, 0x0

    .line 1675
    .local v2, processGsmSmsUserDataHeader:Z
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    if-ne v6, v8, :cond_1

    .line 1676
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v6, :pswitch_data_0

    .line 1703
    :cond_1
    :goto_0
    :pswitch_0
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    sparse-switch v6, :sswitch_data_0

    .line 1714
    const/4 v6, -0x1

    iput-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    .line 1718
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_3

    .line 1719
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1678
    :pswitch_1
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    if-eq v6, v8, :cond_1

    .line 1679
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DecodeSMS subparm-user is91 encoding : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1684
    :pswitch_2
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    if-eqz v6, :cond_1

    .line 1685
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DecodeSMS subparm-user wap encoding : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1691
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeaderExisted:Z

    if-ne v6, v8, :cond_1

    .line 1692
    const/4 v2, 0x1

    goto :goto_0

    .line 1706
    :sswitch_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_2

    .line 1707
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1710
    :cond_2
    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    .line 1711
    add-int/lit8 v3, v3, 0x8

    .line 1712
    goto/16 :goto_1

    .line 1722
    :cond_3
    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v1

    .line 1723
    .local v1, numberOfCharacters:I
    add-int/lit8 v3, v3, 0x8

    .line 1725
    const/16 v0, 0x8

    .line 1726
    .local v0, bitsPerCharacters:I
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    packed-switch v6, :pswitch_data_1

    .line 1776
    :cond_4
    :goto_2
    :pswitch_4
    if-ne v2, v8, :cond_a

    .line 1777
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_6

    .line 1778
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1730
    :pswitch_5
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    packed-switch v6, :pswitch_data_2

    .line 1738
    const/4 v0, 0x6

    .line 1739
    goto :goto_2

    .line 1732
    :pswitch_6
    const/4 v0, 0x4

    .line 1733
    goto :goto_2

    .line 1745
    :pswitch_7
    const/4 v0, 0x7

    .line 1746
    goto :goto_2

    .line 1748
    :pswitch_8
    shl-int/lit8 v1, v1, 0x1

    .line 1749
    goto :goto_2

    .line 1751
    :pswitch_9
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_5

    .line 1752
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit8 v6, v6, 0x2c

    if-nez v6, :cond_4

    .line 1753
    const/4 v0, 0x7

    goto :goto_2

    .line 1757
    :cond_5
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v6, v6, 0xf0

    sparse-switch v6, :sswitch_data_1

    goto :goto_2

    .line 1760
    :sswitch_1
    const/4 v0, 0x7

    .line 1761
    goto :goto_2

    .line 1763
    :sswitch_2
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_4

    .line 1764
    const/4 v0, 0x7

    goto :goto_2

    .line 1781
    :cond_6
    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    .line 1782
    .local v5, userDataHeaderLength:I
    add-int/lit8 v3, v3, 0x8

    .line 1784
    if-lez v5, :cond_8

    .line 1785
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v7, v5, 0x3

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_7

    .line 1786
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1789
    :cond_7
    invoke-direct {p0, v3, v9, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    .line 1790
    shl-int/lit8 v6, v5, 0x3

    add-int/2addr v3, v6

    .line 1794
    :cond_8
    mul-int v6, v1, v0

    add-int/lit8 v7, v5, 0x1

    shl-int/lit8 v7, v7, 0x3

    sub-int/2addr v6, v7

    rem-int v4, v6, v0

    .line 1796
    .local v4, userDataHeaderFillBits:I
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int v7, v3, v4

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_9

    .line 1797
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1800
    :cond_9
    add-int/2addr v3, v4

    .line 1801
    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v4

    div-int/2addr v6, v0

    sub-int/2addr v1, v6

    .line 1804
    .end local v4           #userDataHeaderFillBits:I
    .end local v5           #userDataHeaderLength:I
    :cond_a
    if-lez v1, :cond_c

    .line 1805
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    mul-int v7, v1, v0

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_b

    .line 1806
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1809
    :cond_b
    invoke-direct {p0, v3, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    .line 1810
    mul-int v6, v1, v0

    add-int/2addr v3, v6

    .line 1812
    :cond_c
    return-void

    .line 1676
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1703
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch

    .line 1726
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_9
    .end packed-switch

    .line 1730
    :pswitch_data_2
    .packed-switch 0x84
        :pswitch_6
    .end packed-switch

    .line 1757
    :sswitch_data_1
    .sparse-switch
        0xc0 -> :sswitch_1
        0xd0 -> :sswitch_1
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method

.method private decodeTeleserviceParamUserResponseCode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userResponseCode:S

    .line 1817
    return-void
.end method

.method private decodeTeleserviceParamVoiceMailMessages()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_voiceMailsInServer:B

    .line 1879
    return-void
.end method

.method private decodeTeleserviceParamVoiceMailNotification()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2071
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v1, v2, 0x3

    .line 2073
    .local v1, startBitIndex:I
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_0

    .line 2074
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 2077
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPriority:B

    .line 2078
    add-int/lit8 v1, v1, 0x2

    .line 2080
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPasswordExisted:Z

    .line 2081
    add-int/lit8 v1, v1, 0x1

    .line 2083
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnSetupInitUserPrompt:Z

    .line 2084
    add-int/lit8 v1, v1, 0x1

    .line 2086
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnChangePassword:Z

    .line 2087
    add-int/lit8 v1, v1, 0x1

    .line 2089
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnSetupInitUserPrompt:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnChangePassword:Z

    if-nez v2, :cond_5

    .line 2091
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_4

    .line 2092
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_1
    move v2, v4

    .line 2080
    goto :goto_0

    :cond_2
    move v2, v4

    .line 2083
    goto :goto_1

    :cond_3
    move v2, v4

    .line 2086
    goto :goto_2

    .line 2095
    :cond_4
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPasswordMinLen:B

    .line 2096
    add-int/lit8 v1, v1, 0x4

    .line 2097
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPasswordMaxLen:B

    .line 2098
    add-int/lit8 v1, v1, 0x4

    .line 2101
    :cond_5
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x43

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_6

    .line 2102
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 2106
    :cond_6
    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnUnheardMessages:S

    .line 2107
    add-int/lit8 v1, v1, 0x8

    .line 2109
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnServerAlmostFull:Z

    .line 2110
    add-int/lit8 v1, v1, 0x1

    .line 2112
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnServerFull:Z

    .line 2113
    add-int/lit8 v1, v1, 0x1

    .line 2115
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAllowReply:Z

    .line 2116
    add-int/lit8 v1, v1, 0x1

    .line 2118
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnIncludeFax:Z

    .line 2119
    add-int/lit8 v1, v1, 0x1

    .line 2121
    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnLengthInSeconds:S

    .line 2122
    add-int/lit8 v1, v1, 0xc

    .line 2124
    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnRetentionDays:B

    .line 2125
    add-int/lit8 v1, v1, 0x7

    .line 2127
    invoke-direct {p0, v1, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnMessageId:S

    .line 2128
    add-int/lit8 v1, v1, 0x10

    .line 2130
    invoke-direct {p0, v1, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnMailboxId:S

    .line 2131
    add-int/lit8 v1, v1, 0x10

    .line 2133
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v0

    .line 2135
    .local v0, digitMode:I
    invoke-direct {p0, v1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 2137
    add-int/lit8 v1, v1, 0x3

    .line 2139
    if-eqz v0, :cond_c

    .line 2140
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_b

    .line 2141
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .end local v0           #digitMode:I
    :cond_7
    move v2, v4

    .line 2109
    goto :goto_3

    :cond_8
    move v2, v4

    .line 2112
    goto :goto_4

    :cond_9
    move v2, v4

    .line 2115
    goto :goto_5

    :cond_a
    move v2, v4

    .line 2118
    goto :goto_6

    .line 2144
    .restart local v0       #digitMode:I
    :cond_b
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberPlan:B

    .line 2145
    add-int/lit8 v1, v1, 0x4

    .line 2151
    :goto_7
    if-nez v0, :cond_d

    move v2, v3

    :goto_8
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v1, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumber:[B

    .line 2152
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startBitIndex_decodeAddress:I

    .line 2154
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_e

    .line 2155
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 2148
    :cond_c
    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberPlan:B

    goto :goto_7

    :cond_d
    move v2, v4

    .line 2151
    goto :goto_8

    .line 2159
    :cond_e
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v0

    .line 2161
    invoke-direct {p0, v1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 2163
    add-int/lit8 v1, v1, 0x3

    .line 2165
    if-eqz v0, :cond_10

    .line 2166
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_f

    .line 2167
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 2170
    :cond_f
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberPlan:B

    .line 2171
    add-int/lit8 v1, v1, 0x4

    .line 2177
    :goto_9
    if-nez v0, :cond_11

    :goto_a
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumber:[B

    .line 2178
    return-void

    .line 2174
    :cond_10
    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberPlan:B

    goto :goto_9

    :cond_11
    move v3, v4

    .line 2177
    goto :goto_a
.end method

.method private decodeTeleserviceParamVoiceMailNotificationAck()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/16 v6, 0x10

    .line 2182
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v2, v3, 0x3

    .line 2184
    .local v2, startBitIndex:I
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v4, v2, 0x1e

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_0

    .line 2185
    const-string v3, "CDMA"

    const-string v4, "DecodeSMS subparm-vmailNotiAck size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 2188
    :cond_0
    invoke-direct {p0, v2, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckMailboxId:S

    .line 2189
    add-int/lit8 v2, v2, 0x10

    .line 2191
    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckUnheardMessages:S

    .line 2192
    add-int/lit8 v2, v2, 0x8

    .line 2194
    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v0, v3

    .line 2195
    .local v0, deletedAcks:I
    add-int/lit8 v2, v2, 0x3

    .line 2197
    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v1, v3

    .line 2198
    .local v1, playedAcks:I
    add-int/lit8 v2, v2, 0x3

    .line 2200
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    shl-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_1

    .line 2201
    const-string v3, "CDMA"

    const-string v4, "DecodeSMS subparm-vmailNotiAck size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 2205
    :cond_1
    invoke-direct {p0, v2, v6, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoShorts(III)[S

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckDeletedAcks:[S

    .line 2206
    shl-int/lit8 v3, v0, 0x4

    add-int/2addr v2, v3

    .line 2208
    invoke-direct {p0, v2, v6, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoShorts(III)[S

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckPlayedAcks:[S

    .line 2209
    shl-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    .line 2210
    return-void
.end method

.method private decodeTeleserviceRawMessageWaitingIndication([[B)V
    .locals 0
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1531
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1532
    return-void
.end method

.method private decodeTeleserviceReadAck([[B)V
    .locals 0
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1520
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1521
    return-void
.end method

.method private decodeTeleserviceSingleParameter(B)V
    .locals 1
    .parameter "param_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1578
    packed-switch p1, :pswitch_data_0

    .line 1651
    :goto_0
    :pswitch_0
    return-void

    .line 1580
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMessageID()V

    goto :goto_0

    .line 1584
    :pswitch_2
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_userData:I

    .line 1585
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_userData:I

    goto :goto_0

    .line 1588
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamUserResponseCode()V

    goto :goto_0

    .line 1591
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMessageCenterTimeStamp()V

    goto :goto_0

    .line 1594
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamAbsoluteValidity()V

    goto :goto_0

    .line 1597
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamRelativeValidity()V

    goto :goto_0

    .line 1604
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamPriority()V

    goto :goto_0

    .line 1607
    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamPrivacy()V

    goto :goto_0

    .line 1610
    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamReplyOption()V

    goto :goto_0

    .line 1613
    :pswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamVoiceMailMessages()V

    goto :goto_0

    .line 1616
    :pswitch_b
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamAlertOnMessageDelivery()V

    goto :goto_0

    .line 1619
    :pswitch_c
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamLanguage()V

    goto :goto_0

    .line 1622
    :pswitch_d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamCallBack()V

    goto :goto_0

    .line 1625
    :pswitch_e
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamDisplayMode()V

    goto :goto_0

    .line 1628
    :pswitch_f
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMultiEncodingUserData()V

    goto :goto_0

    .line 1631
    :pswitch_10
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMessageIdInCenter()V

    goto :goto_0

    .line 1634
    :pswitch_11
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamBroadcastServiceSetting()V

    goto :goto_0

    .line 1639
    :pswitch_12
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamErrorCode()V

    goto :goto_0

    .line 1642
    :pswitch_13
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamGsmTpFailure()V

    goto :goto_0

    .line 1645
    :pswitch_14
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamVoiceMailNotification()V

    goto :goto_0

    .line 1648
    :pswitch_15
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamVoiceMailNotificationAck()V

    goto :goto_0

    .line 1578
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private decodeTeleserviceSubParam([[B)V
    .locals 10
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 1539
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeParameter_header()B

    move-result v4

    .line 1540
    .local v4, param_id:B
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-direct {p0, v4, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->existInGivenList(B[B)Z

    move-result v8

    aput-boolean v8, v7, v4

    .line 1541
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v4

    if-ne v7, v9, :cond_3

    .line 1542
    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue;->fixedLengthSubparameter:[B

    aget-byte v6, v7, v4

    .line 1543
    .local v6, parameterLength:I
    if-eqz v6, :cond_1

    iget-short v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    if-ne v6, v7, :cond_2

    .line 1544
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 1546
    .local v1, current_dataEnd:I
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 1547
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSingleParameter(B)V

    .line 1548
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1549
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 1560
    .end local v1           #current_dataEnd:I
    .end local v6           #parameterLength:I
    :goto_0
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    if-gt v7, v8, :cond_0

    .line 1562
    aget-object v0, p1, v9

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-byte v5, v0, v2

    .line 1563
    .local v5, param_required:B
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v5

    if-eq v7, v9, :cond_4

    .line 1564
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS required subparm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not existed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1552
    .end local v0           #arr$:[B
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #param_required:B
    .restart local v6       #parameterLength:I
    :cond_2
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS subparm-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " id size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1558
    .end local v6           #parameterLength:I
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    .line 1562
    .restart local v0       #arr$:[B
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #param_required:B
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1569
    .end local v5           #param_required:B
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v9

    if-ne v7, v9, :cond_6

    .line 1570
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_userData:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1571
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_userData:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 1572
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamUserData()V

    .line 1574
    :cond_6
    return-void
.end method

.method private decodeTeleserviceSubmitReport([[B)V
    .locals 0
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1525
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1526
    return-void
.end method

.method private decodeTeleserviceUserAck([[B)V
    .locals 0
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1515
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1516
    return-void
.end method

.method private decodeTimeStamp()[S
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 788
    const/4 v3, 0x6

    new-array v0, v3, [S

    .line 789
    .local v0, absoluteTime:[S
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v1, v3, 0x3

    .line 791
    .local v1, startBitIndex:I
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    int-to-short v3, v3

    aput-short v3, v0, v7

    .line 793
    add-int/lit8 v1, v1, 0x8

    .line 794
    aget-short v3, v0, v7

    const/16 v4, 0x7cc

    if-ge v3, v4, :cond_0

    .line 795
    aget-short v3, v0, v7

    add-int/lit8 v3, v3, 0x64

    int-to-short v3, v3

    aput-short v3, v0, v7

    .line 797
    :cond_0
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v6

    .line 799
    add-int/lit8 v1, v1, 0x8

    .line 800
    aget-short v3, v0, v6

    if-lt v3, v6, :cond_1

    aget-short v3, v0, v6

    const/16 v4, 0xc

    if-le v3, v4, :cond_3

    :cond_1
    move-object v0, v2

    .line 829
    .end local v0           #absoluteTime:[S
    :cond_2
    :goto_0
    return-object v0

    .line 804
    .restart local v0       #absoluteTime:[S
    :cond_3
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v8

    .line 806
    add-int/lit8 v1, v1, 0x8

    .line 807
    aget-short v3, v0, v8

    if-lt v3, v6, :cond_4

    aget-short v3, v0, v8

    const/16 v4, 0x1f

    if-le v3, v4, :cond_5

    :cond_4
    move-object v0, v2

    .line 809
    goto :goto_0

    .line 811
    :cond_5
    const/4 v3, 0x3

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v0, v3

    .line 813
    add-int/lit8 v1, v1, 0x8

    .line 814
    const/4 v3, 0x3

    aget-short v3, v0, v3

    const/16 v4, 0x17

    if-le v3, v4, :cond_6

    move-object v0, v2

    .line 815
    goto :goto_0

    .line 817
    :cond_6
    const/4 v3, 0x4

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v0, v3

    .line 819
    add-int/lit8 v1, v1, 0x8

    .line 820
    const/4 v3, 0x4

    aget-short v3, v0, v3

    const/16 v4, 0x3b

    if-le v3, v4, :cond_7

    move-object v0, v2

    .line 821
    goto :goto_0

    .line 823
    :cond_7
    const/4 v3, 0x5

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v0, v3

    .line 825
    add-int/lit8 v1, v1, 0x8

    .line 826
    const/4 v3, 0x5

    aget-short v3, v0, v3

    const/16 v4, 0x3b

    if-le v3, v4, :cond_2

    move-object v0, v2

    .line 827
    goto :goto_0
.end method

.method private decodeTransport()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 923
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v9, v10

    const/4 v10, 0x3

    if-ge v9, v10, :cond_0

    .line 924
    const-string v9, "CDMA"

    const-string v10, "DecodeSMS Transport size"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9

    .line 928
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v9, v9, v10

    iput-byte v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    .line 929
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 930
    iget-byte v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    sget-object v10, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE:[B

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->existInGivenList(B[B)Z

    move-result v9

    if-nez v9, :cond_1

    .line 931
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DecodeSMS Transport type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not allowed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9

    .line 935
    :cond_1
    const/16 v9, 0x9

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    .line 936
    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE_param_list:[[B

    iget-byte v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    aget-object v6, v9, v10

    .line 940
    .local v6, param_accepted:[B
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeParameter_header()B

    move-result v7

    .line 941
    .local v7, param_id:B
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v7

    if-nez v9, :cond_5

    .line 942
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->existInGivenList(B[B)Z

    move-result v10

    aput-boolean v10, v9, v7

    .line 943
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v7

    if-ne v9, v11, :cond_4

    .line 944
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 946
    .local v1, current_dataEnd:I
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 947
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParameter(B)V

    .line 948
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 949
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 958
    .end local v1           #current_dataEnd:I
    :goto_0
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    if-gt v9, v10, :cond_2

    .line 960
    const/4 v2, 0x1

    .line 962
    .local v2, dataPrepared:Z
    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_TRANSPORT_TYPE_param_list:[[B

    iget-byte v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    aget-object v0, v9, v10

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-byte v8, v0, v4

    .line 963
    .local v8, param_required:B
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v8

    if-eq v9, v11, :cond_3

    .line 964
    const/4 v2, 0x0

    .line 962
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 952
    .end local v0           #arr$:[B
    .end local v2           #dataPrepared:Z
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #param_required:B
    :cond_4
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    .line 956
    :cond_5
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    .line 968
    .restart local v0       #arr$:[B
    .restart local v2       #dataPrepared:Z
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_6
    if-eqz v2, :cond_8

    .line 969
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v13

    if-ne v9, v11, :cond_7

    .line 970
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 971
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 972
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleservice()V

    .line 994
    :cond_7
    :goto_2
    return-void

    .line 978
    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v12

    if-ne v9, v11, :cond_9

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    const/16 v10, 0x1003

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v13

    if-ne v9, v11, :cond_9

    .line 981
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 982
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 984
    const/4 v9, 0x2

    new-array v3, v9, [[B

    .line 985
    .local v3, filtersApplied:[[B
    const/16 v9, 0x18

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    .line 986
    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_raw_message_waiting_indication:[B

    aput-object v9, v3, v12

    .line 987
    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_raw_message_waiting_indication:[B

    aput-object v9, v3, v11

    .line 988
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceRawMessageWaitingIndication([[B)V

    goto :goto_2

    .line 990
    .end local v3           #filtersApplied:[[B
    :cond_9
    const-string v9, "CDMA"

    const-string v10, "DecodeSMS required parms not existed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9
.end method

.method private decodeTransportParamBearerReplyOption()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1262
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1263
    const-string v0, "CDMA"

    const-string v1, "DecodeSMS parm-reply size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_replySeqNumber:B

    .line 1268
    return-void
.end method

.method private decodeTransportParamCauseCodes()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x6b

    const/16 v6, 0x42

    const/16 v5, 0x30

    const/16 v4, 0x27

    const/4 v3, 0x5

    .line 1272
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1273
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parm-cause size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 1277
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_replySeqNumber:B

    .line 1278
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_errorClass:B

    .line 1280
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_errorClass:B

    if-eqz v1, :cond_1

    .line 1281
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 1283
    const/16 v1, 0x6a

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    .line 1313
    :cond_1
    :goto_0
    return-void

    .line 1286
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    .line 1287
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    and-int/lit16 v0, v1, 0xff

    .line 1288
    .local v0, causeDetail:I
    if-le v0, v3, :cond_3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    .line 1290
    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    .line 1293
    :cond_3
    if-le v0, v4, :cond_4

    if-ge v0, v5, :cond_4

    .line 1295
    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    .line 1298
    :cond_4
    if-lt v0, v5, :cond_5

    const/16 v1, 0x40

    if-ge v0, v1, :cond_5

    .line 1300
    const/16 v1, 0x24

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    .line 1303
    :cond_5
    if-le v0, v6, :cond_6

    const/16 v1, 0x60

    if-ge v0, v1, :cond_6

    .line 1305
    iput-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    .line 1308
    :cond_6
    if-le v0, v7, :cond_1

    .line 1309
    iput-byte v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0
.end method

.method private decodeTransportParamDestAddress()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1100
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v3, v6

    if-ge v3, v4, :cond_0

    .line 1101
    const-string v3, "CDMA"

    const-string v4, "DecodeSMS parm-address size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 1105
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0x80

    shr-int/lit8 v0, v3, 0x7

    .line 1106
    .local v0, digitMode:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x40

    shr-int/lit8 v1, v3, 0x6

    .line 1108
    .local v1, numberMode:I
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v3, 0x2

    .line 1110
    .local v2, startBitIndex:I
    if-eqz v0, :cond_4

    .line 1111
    if-eqz v1, :cond_1

    move v3, v4

    :goto_0
    const/4 v6, 0x3

    invoke-direct {p0, v2, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    int-to-byte v6, v6

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1113
    add-int/lit8 v2, v2, 0x3

    .line 1118
    if-nez v1, :cond_3

    .line 1119
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v3, v6, :cond_2

    .line 1120
    const-string v3, "CDMA"

    const-string v4, "DecodeSMS parm-address size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_1
    move v3, v5

    .line 1111
    goto :goto_0

    .line 1124
    :cond_2
    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrPlan:B

    .line 1125
    add-int/lit8 v2, v2, 0x4

    .line 1136
    :goto_1
    if-nez v0, :cond_5

    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    .line 1137
    return-void

    .line 1128
    :cond_3
    iput-byte v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrPlan:B

    goto :goto_1

    .line 1132
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1133
    iput-byte v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrPlan:B

    goto :goto_1

    :cond_5
    move v4, v5

    .line 1136
    goto :goto_2
.end method

.method private decodeTransportParamOrigAddress()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1058
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v4

    if-ge v1, v2, :cond_0

    .line 1059
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parm-address size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 1063
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0x80

    shr-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    .line 1064
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x40

    shr-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    .line 1066
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v1, 0x2

    .line 1068
    .local v0, startBitIndex:I
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    if-eqz v1, :cond_4

    .line 1069
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    const/4 v4, 0x3

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1071
    add-int/lit8 v0, v0, 0x3

    .line 1076
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    if-nez v1, :cond_3

    .line 1077
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    if-ge v1, v4, :cond_2

    .line 1078
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parm-address size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_1
    move v1, v3

    .line 1069
    goto :goto_0

    .line 1082
    :cond_2
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    .line 1083
    add-int/lit8 v0, v0, 0x4

    .line 1094
    :goto_1
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberOfDigits:I

    .line 1095
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    if-nez v1, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    .line 1096
    return-void

    .line 1086
    :cond_3
    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    goto :goto_1

    .line 1090
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1091
    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    goto :goto_1

    :cond_5
    move v2, v3

    .line 1095
    goto :goto_2
.end method

.method private decodeTransportParamServiceCategory()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1047
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1048
    const-string v0, "CDMA"

    const-string v1, "DecodeSMS parm-category size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_typeOfService:I

    .line 1054
    return-void
.end method

.method private decodeTransportParamSubAddress()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x8

    .line 1141
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 1142
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1146
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xe0

    shr-int/lit8 v7, v7, 0x5

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddrType:B

    .line 1147
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v7, v7, v8

    and-int/lit8 v7, v7, 0x10

    shr-int/lit8 v5, v7, 0x4

    .line 1148
    .local v5, oddCHARi:I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v7, v7, v8

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x4

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int v4, v7, v8

    .line 1150
    .local v4, numberOfCharacters:I
    if-nez v4, :cond_2

    .line 1258
    :cond_1
    :goto_0
    return-void

    .line 1153
    :cond_2
    shl-int/lit8 v7, v4, 0x1

    sub-int v4, v7, v5

    .line 1154
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v7, v8

    shr-int/lit8 v8, v4, 0x1

    add-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_3

    .line 1155
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1159
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v7, v7, 0x3

    add-int/lit8 v6, v7, 0xc

    .line 1163
    .local v6, startBitIndex:I
    iget-byte v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddrType:B

    packed-switch v7, :pswitch_data_0

    .line 1255
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS unknown parm-subaddress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddrType:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1165
    :pswitch_0
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v8, v6, 0x8

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_4

    .line 1166
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1169
    :cond_4
    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    .line 1170
    .local v2, afiField:I
    add-int/lit8 v6, v6, 0x8

    .line 1171
    add-int/lit8 v4, v4, -0x2

    .line 1173
    sparse-switch v2, :sswitch_data_0

    .line 1245
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS unknown parm-subaddress-NSAP : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1175
    :sswitch_0
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v8, v6, 0x10

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_5

    .line 1176
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1179
    :cond_5
    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    add-int/lit8 v8, v6, 0x8

    invoke-direct {p0, v8, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v8

    add-int/2addr v7, v8

    int-to-short v0, v7

    .line 1181
    .local v0, NSAP_internetCodePoint:S
    add-int/lit8 v6, v6, 0x10

    .line 1183
    packed-switch v0, :pswitch_data_1

    .line 1215
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS unknown parm-subaddress-NSAP-IP : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1185
    :pswitch_1
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit16 v8, v6, 0x80

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_6

    .line 1186
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1189
    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1190
    .local v3, ipAddress:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, addrIndex:I
    :goto_1
    if-ge v1, v10, :cond_8

    .line 1191
    const/16 v7, 0x10

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1192
    add-int/lit8 v6, v6, 0x10

    .line 1193
    const/4 v7, 0x7

    if-ge v1, v7, :cond_7

    .line 1194
    new-instance v7, Ljava/lang/String;

    const-string v8, ":"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1190
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1197
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    goto/16 :goto_0

    .line 1200
    .end local v1           #addrIndex:I
    .end local v3           #ipAddress:Ljava/lang/String;
    :pswitch_2
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v8, v6, 0x20

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_9

    .line 1201
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1204
    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1205
    .restart local v3       #ipAddress:Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #addrIndex:I
    :goto_2
    if-ge v1, v11, :cond_b

    .line 1206
    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1207
    add-int/lit8 v6, v6, 0x8

    .line 1208
    const/4 v7, 0x3

    if-ge v1, v7, :cond_a

    .line 1209
    new-instance v7, Ljava/lang/String;

    const-string v8, "."

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1205
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1212
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    goto/16 :goto_0

    .line 1220
    .end local v0           #NSAP_internetCodePoint:S
    .end local v1           #addrIndex:I
    .end local v3           #ipAddress:Ljava/lang/String;
    :sswitch_1
    shr-int/lit8 v4, v4, 0x1

    .line 1221
    const/16 v7, 0x13

    if-le v4, v7, :cond_c

    .line 1223
    const/16 v4, 0x13

    .line 1225
    :cond_c
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    .line 1226
    const/4 v1, 0x0

    .restart local v1       #addrIndex:I
    :goto_3
    if-ge v1, v4, :cond_1

    .line 1227
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 1228
    add-int/lit8 v6, v6, 0x8

    .line 1226
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1232
    .end local v1           #addrIndex:I
    :sswitch_2
    shr-int/lit8 v4, v4, 0x1

    .line 1233
    const/16 v7, 0x9

    if-le v4, v7, :cond_d

    .line 1235
    const/16 v4, 0x9

    .line 1237
    :cond_d
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    .line 1238
    const/4 v1, 0x0

    .restart local v1       #addrIndex:I
    :goto_4
    if-ge v1, v4, :cond_1

    .line 1239
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 1240
    add-int/lit8 v6, v6, 0x8

    .line 1238
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1250
    .end local v1           #addrIndex:I
    .end local v2           #afiField:I
    :pswitch_3
    invoke-direct {p0, v6, v11, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    .line 1251
    shl-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    .line 1253
    goto/16 :goto_0

    .line 1163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1173
    :sswitch_data_0
    .sparse-switch
        0x35 -> :sswitch_0
        0x50 -> :sswitch_1
        0x51 -> :sswitch_2
    .end sparse-switch

    .line 1183
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private decodeTransportParamTeleserviceId()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1037
    const-string v0, "CDMA"

    const-string v1, "DecodeSMS parm-id size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    .line 1043
    return-void
.end method

.method private decodeTransportParameter(B)V
    .locals 3
    .parameter "param_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 998
    packed-switch p1, :pswitch_data_0

    .line 1029
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DecodeSMS unknown parms : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1000
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamTeleserviceId()V

    .line 1032
    :goto_0
    return-void

    .line 1003
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamServiceCategory()V

    goto :goto_0

    .line 1006
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamOrigAddress()V

    goto :goto_0

    .line 1009
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamSubAddress()V

    goto :goto_0

    .line 1012
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamDestAddress()V

    goto :goto_0

    .line 1015
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamSubAddress()V

    goto :goto_0

    .line 1018
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamBearerReplyOption()V

    goto :goto_0

    .line 1021
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamCauseCodes()V

    goto :goto_0

    .line 1025
    :pswitch_8
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    .line 1026
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    goto :goto_0

    .line 998
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private existInGivenList(B[B)Z
    .locals 5
    .parameter "checkItem"
    .parameter "givenList"

    .prologue
    .line 591
    move-object v0, p2

    .local v0, arr$:[B
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, v0, v1

    .line 592
    .local v3, listItem:B
    if-ne v3, p1, :cond_0

    .line 593
    const/4 v4, 0x1

    .line 596
    .end local v3           #listItem:B
    :goto_1
    return v4

    .line 591
    .restart local v3       #listItem:B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v3           #listItem:B
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private existInGivenList(I[I)Z
    .locals 5
    .parameter "checkItem"
    .parameter "givenList"

    .prologue
    .line 602
    move-object v0, p2

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 603
    .local v3, listItem:I
    if-ne v3, p1, :cond_0

    .line 604
    const/4 v4, 0x1

    .line 607
    .end local v3           #listItem:I
    :goto_1
    return v4

    .line 602
    .restart local v3       #listItem:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .end local v3           #listItem:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private extendArray([B)[B
    .locals 3
    .parameter "givenArray"

    .prologue
    const/4 v2, 0x0

    .line 879
    if-nez p1, :cond_0

    .line 880
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 886
    .local v0, extendedArray:[B
    :goto_0
    return-object v0

    .line 883
    .end local v0           #extendedArray:[B
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 884
    .restart local v0       #extendedArray:[B
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private extendArray([S)[S
    .locals 3
    .parameter "givenArray"

    .prologue
    const/4 v2, 0x0

    .line 893
    if-nez p1, :cond_0

    .line 894
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 900
    .local v0, extendedArray:[S
    :goto_0
    return-object v0

    .line 897
    .end local v0           #extendedArray:[S
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [S

    .line 898
    .restart local v0       #extendedArray:[S
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private extendArray([[B)[[B
    .locals 3
    .parameter "givenArray"

    .prologue
    const/4 v2, 0x0

    .line 907
    if-nez p1, :cond_0

    .line 908
    const/4 v1, 0x1

    new-array v0, v1, [[B

    .line 914
    .local v0, extendedArray:[[B
    :goto_0
    return-object v0

    .line 911
    .end local v0           #extendedArray:[[B
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [[B

    .line 912
    .restart local v0       #extendedArray:[[B
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z
    .locals 3
    .parameter "layer"
    .parameter "field"

    .prologue
    .line 2215
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsDecoder$messageLayer:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2223
    const/4 v1, 0x0

    .line 2225
    :goto_0
    return v1

    .line 2217
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    .line 2225
    .local v0, parameters:[Z
    :goto_1
    aget-boolean v1, v0, p2

    goto :goto_0

    .line 2220
    .end local v0           #parameters:[Z
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    .line 2221
    .restart local v0       #parameters:[Z
    goto :goto_1

    .line 2215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    .locals 2
    .parameter "dataNetwork"
    .parameter "numberType"

    .prologue
    .line 666
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_RESERVED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 667
    .local v0, returnValue:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 668
    packed-switch p2, :pswitch_data_0

    .line 706
    :goto_0
    return-object v0

    .line 670
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN_DATA_NETWORK:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 671
    goto :goto_0

    .line 673
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNET_PROTOCOL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 674
    goto :goto_0

    .line 676
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNET_EMAIL_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 677
    goto :goto_0

    .line 683
    :cond_0
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 685
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 686
    goto :goto_0

    .line 688
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 689
    goto :goto_0

    .line 691
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_NATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 692
    goto :goto_0

    .line 694
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_NETWORK_SPECIFIC:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 695
    goto :goto_0

    .line 697
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_SUBSCRIBER:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 698
    goto :goto_0

    .line 700
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_ABBREVIATED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 701
    goto :goto_0

    .line 668
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 683
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public absoluteValidatyPeriodInMilliSeconds()J
    .locals 8

    .prologue
    .line 2366
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2367
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2368
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v4, 0x2

    aget-short v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v5, 0x3

    aget-short v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v6, 0x4

    aget-short v5, v5, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v7, 0x5

    aget-short v6, v6, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2374
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public causeCode()I
    .locals 1

    .prologue
    .line 2318
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    return v0
.end method

.method public decodePdu()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransport()V

    .line 569
    return-void
.end method

.method public errorClass()I
    .locals 1

    .prologue
    .line 2313
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_errorClass:B

    return v0
.end method

.method public getBearerData()[B
    .locals 5

    .prologue
    .line 2585
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    sub-int v1, v2, v3

    .line 2586
    .local v1, length:I
    new-array v0, v1, [B

    .line 2587
    .local v0, data:[B
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2588
    return-object v0
.end method

.method public getDateOfReport()J
    .locals 2

    .prologue
    .line 2563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDestinationAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2460
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2469
    :cond_0
    :goto_0
    return-object v0

    .line 2463
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    if-eqz v1, :cond_0

    .line 2466
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 2467
    .local v0, address:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 2468
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    goto :goto_0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2490
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    .prologue
    .line 2495
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isMessageDisplayModeSet()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->messageDisplayMode()B

    move-result v0

    if-nez v0, :cond_0

    .line 2497
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    .line 2499
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0
.end method

.method public getNumberOfVoiceMail()I
    .locals 2

    .prologue
    .line 2385
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2386
    const/4 v0, -0x1

    .line 2388
    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_voiceMailsInServer:B

    goto :goto_0
.end method

.method public getNumberTypeValue(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)B
    .locals 5
    .parameter "numberType"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2432
    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2453
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 2436
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 2438
    goto :goto_0

    .line 2440
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 2442
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 2444
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 2448
    goto :goto_0

    :pswitch_7
    move v0, v2

    .line 2450
    goto :goto_0

    .line 2432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public getOriginatingAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2410
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2426
    :cond_0
    :goto_0
    return-object v0

    .line 2413
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    if-eqz v1, :cond_0

    .line 2417
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 2418
    .local v0, address:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 2419
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 2421
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 2422
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 2423
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getNumberTypeValue(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)B

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 2424
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 2425
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberOfDigits:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    goto :goto_0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 2533
    const/4 v0, 0x0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2508
    const-string v0, ""

    return-object v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2401
    const-string v0, ""

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 2557
    const/4 v0, 0x0

    return v0
.end method

.method public getTimestampMillis()J
    .locals 3

    .prologue
    .line 2517
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isMessageCenterTimeSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2518
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->messageCenterTimeInMilliSeconds()J

    move-result-wide v0

    .line 2525
    .local v0, scTimeMillis:J
    :goto_0
    return-wide v0

    .line 2519
    .end local v0           #scTimeMillis:J
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isAbsoluteValidatyPeriodSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2520
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->absoluteValidatyPeriodInMilliSeconds()J

    move-result-wide v0

    .restart local v0       #scTimeMillis:J
    goto :goto_0

    .line 2523
    .end local v0           #scTimeMillis:J
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .restart local v0       #scTimeMillis:J
    goto :goto_0
.end method

.method public getToaOfOriginatingAddress()I
    .locals 1

    .prologue
    .line 2480
    const/4 v0, 0x0

    return v0
.end method

.method public getToaOfScAddress()I
    .locals 1

    .prologue
    .line 2475
    const/4 v0, 0x0

    return v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    return-object v0
.end method

.method public isAbsoluteValidatyPeriodSet()Z
    .locals 2

    .prologue
    .line 2361
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isCallbackNumberSet()Z
    .locals 2

    .prologue
    .line 2380
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isMessageCenterTimeSet()Z
    .locals 2

    .prologue
    .line 2342
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isMessageDisplayModeSet()Z
    .locals 2

    .prologue
    .line 2332
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 2572
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isCallbackNumberSet()Z

    move-result v0

    return v0
.end method

.method public isUnsupportedMessage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2580
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyEncoding()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public messageCenterTimeInMilliSeconds()J
    .locals 8

    .prologue
    .line 2347
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2348
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2349
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v4, 0x2

    aget-short v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v5, 0x3

    aget-short v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v6, 0x4

    aget-short v5, v5, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v7, 0x5

    aget-short v6, v6, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2355
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public messageDisplayMode()B
    .locals 1

    .prologue
    .line 2337
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_displayMode:B

    return v0
.end method

.method public messageType()I
    .locals 1

    .prologue
    .line 2303
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    return v0
.end method

.method public replyOptionSeq()I
    .locals 1

    .prologue
    .line 2308
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_replySeqNumber:B

    return v0
.end method

.method public retrieveBody()[B
    .locals 2

    .prologue
    .line 2258
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2259
    const/4 v0, 0x0

    .line 2264
    :goto_0
    return-object v0

    .line 2261
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    if-nez v0, :cond_1

    .line 2262
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    .line 2264
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    goto :goto_0
.end method

.method public retrieveBodyAsString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2269
    const/4 v0, 0x0

    .line 2271
    .local v0, rtValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyEncoding()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2286
    :goto_0
    :pswitch_0
    if-nez v0, :cond_0

    .line 2287
    new-instance v0, Ljava/lang/String;

    .end local v0           #rtValue:Ljava/lang/String;
    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2289
    .restart local v0       #rtValue:Ljava/lang/String;
    :cond_0
    return-object v0

    .line 2273
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    array-length v3, v3

    shr-int/lit8 v3, v3, 0x1

    new-array v2, v3, [C

    .line 2274
    .local v2, unicodeText:[C
    const/4 v1, 0x0

    .local v1, unicodeIndex:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2275
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    shl-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    shl-int/lit8 v5, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 2274
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2278
    :cond_1
    new-instance v0, Ljava/lang/String;

    .end local v0           #rtValue:Ljava/lang/String;
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 2279
    .restart local v0       #rtValue:Ljava/lang/String;
    goto :goto_0

    .line 2281
    .end local v1           #unicodeIndex:I
    .end local v2           #unicodeText:[C
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    .end local v0           #rtValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 2282
    .restart local v0       #rtValue:Ljava/lang/String;
    goto :goto_0

    .line 2271
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public retrieveBodyEncoding()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2230
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2253
    :cond_0
    :goto_0
    return v1

    .line 2233
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    if-eqz v2, :cond_0

    .line 2237
    const/4 v0, 0x0

    .line 2238
    .local v0, isUnicodeBytes:Z
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2239
    const/4 v0, 0x1

    .line 2250
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 2251
    const/4 v1, 0x3

    goto :goto_0

    .line 2242
    :cond_3
    iget-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    if-ltz v1, :cond_2

    .line 2243
    iget-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v1, v1, 0xbc

    const/16 v2, 0x18

    if-eq v1, v2, :cond_4

    iget-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_2

    .line 2245
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 2253
    :cond_5
    const/4 v1, 0x5

    goto :goto_0
.end method

.method public retrieveUserDataHeader()[B
    .locals 2

    .prologue
    .line 2294
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2295
    const/4 v0, 0x0

    .line 2297
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    goto :goto_0
.end method

.method public teleserviceCategory()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2324
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2327
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    goto :goto_0
.end method
