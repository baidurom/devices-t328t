.class public final Lcom/android/internal/telephony/cdma/sms/BearerData;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/BearerData$1;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    }
.end annotation


# static fields
.field public static final ALERT_DEFAULT:I = 0x0

.field public static final ALERT_HIGH_PRIO:I = 0x3

.field public static final ALERT_LOW_PRIO:I = 0x1

.field public static final ALERT_MEDIUM_PRIO:I = 0x2

.field public static final DISPLAY_MODE_DEFAULT:I = 0x1

.field public static final DISPLAY_MODE_IMMEDIATE:I = 0x0

.field public static final DISPLAY_MODE_USER:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PERMANENT:I = 0x3

.field public static final ERROR_TEMPORARY:I = 0x2

.field public static final ERROR_UNDEFINED:I = 0xff

.field private static final KDDI_SUBPARAM_ANONYMOUS_REASON:B = 0x56t

.field private static final KDDI_SUBPARAM_ESN:B = 0x57t

.field private static final KDDI_SUBPARAM_IP_ADDRESS:B = 0x55t

.field public static final LANGUAGE_CHINESE:I = 0x6

.field public static final LANGUAGE_ENGLISH:I = 0x1

.field public static final LANGUAGE_FRENCH:I = 0x2

.field public static final LANGUAGE_HEBREW:I = 0x7

.field public static final LANGUAGE_JAPANESE:I = 0x4

.field public static final LANGUAGE_KOREAN:I = 0x5

.field public static final LANGUAGE_SPANISH:I = 0x3

.field public static final LANGUAGE_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static final MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final PRIORITY_EMERGENCY:I = 0x3

.field public static final PRIORITY_INTERACTIVE:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_URGENT:I = 0x2

.field public static final PRIVACY_CONFIDENTIAL:I = 0x2

.field public static final PRIVACY_NOT_RESTRICTED:I = 0x0

.field public static final PRIVACY_RESTRICTED:I = 0x1

.field public static final PRIVACY_SECRET:I = 0x3

.field public static final RELATIVE_TIME_DAYS_LIMIT:I = 0xc4

.field public static final RELATIVE_TIME_HOURS_LIMIT:I = 0xa7

.field public static final RELATIVE_TIME_INDEFINITE:I = 0xf5

.field public static final RELATIVE_TIME_MINS_LIMIT:I = 0x8f

.field public static final RELATIVE_TIME_MOBILE_INACTIVE:I = 0xf7

.field public static final RELATIVE_TIME_NOW:I = 0xf6

.field public static final RELATIVE_TIME_RESERVED:I = 0xf8

.field public static final RELATIVE_TIME_WEEKS_LIMIT:I = 0xf4

.field public static final STATUS_ACCEPTED:I = 0x0

.field public static final STATUS_BLOCKED_DESTINATION:I = 0x7

.field public static final STATUS_CANCELLED:I = 0x3

.field public static final STATUS_CANCEL_FAILED:I = 0x6

.field public static final STATUS_DELIVERED:I = 0x2

.field public static final STATUS_DEPOSITED_TO_INTERNET:I = 0x1

.field public static final STATUS_DUPLICATE_MESSAGE:I = 0x9

.field public static final STATUS_INVALID_DESTINATION:I = 0xa

.field public static final STATUS_MESSAGE_EXPIRED:I = 0xd

.field public static final STATUS_NETWORK_CONGESTION:I = 0x4

.field public static final STATUS_NETWORK_ERROR:I = 0x5

.field public static final STATUS_TEXT_TOO_LONG:I = 0x8

.field public static final STATUS_UNDEFINED:I = 0xff

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1f

.field private static final SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final SUBPARAM_USER_DATA:B = 0x1t

.field private static final SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t


# instance fields
.field public alert:I

.field public alertIndicatorSet:Z

.field public callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public deferredDeliveryTimeRelative:I

.field public deferredDeliveryTimeRelativeSet:Z

.field public deliveryAckReq:Z

.field public depositIndex:I

.field public displayMode:I

.field public displayModeSet:Z

.field public errorClass:I

.field public hasUserDataHeader:Z

.field public isKddiEarthquakeAlert:Z

.field public language:I

.field public languageIndicatorSet:Z

.field public messageId:I

.field public messageStatus:I

.field public messageStatusSet:Z

.field public messageType:I

.field public msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public numberOfMessages:I

.field public priority:I

.field public priorityIndicatorSet:Z

.field public privacy:I

.field public privacyIndicatorSet:Z

.field public readAckReq:Z

.field public reportReq:Z

.field public userAckReq:Z

.field public userData:Lcom/android/internal/telephony/cdma/sms/UserData;

.field public userResponseCode:I

.field public userResponseCodeSet:Z

.field public validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public validityPeriodRelative:I

.field public validityPeriodRelativeSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 127
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 138
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 139
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 150
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 151
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 163
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 182
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 183
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 215
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 216
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 217
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 243
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 722
    return-void
.end method

.method private static KddiReplaceUserData(Lcom/android/internal/telephony/cdma/sms/UserData;II)[B
    .locals 15
    .parameter "userData"
    .parameter "numFields"
    .parameter "offset"

    .prologue
    .line 2644
    const-string v12, "SMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "format ori userdata> 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v14}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    const-string v12, "SMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "numFields> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", offset> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2650
    .local v1, data:[B
    const/4 v12, 0x2

    new-array v5, v12, [B

    fill-array-data v5, :array_0

    .line 2651
    .local v5, newSmsType:[B
    const/4 v12, 0x5

    new-array v10, v12, [[B

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_1

    aput-object v13, v10, v12

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_2

    aput-object v13, v10, v12

    const/4 v12, 0x2

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_3

    aput-object v13, v10, v12

    const/4 v12, 0x3

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_4

    aput-object v13, v10, v12

    const/4 v12, 0x4

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_5

    aput-object v13, v10, v12

    .line 2658
    .local v10, smsType:[[B
    const/16 v12, 0xa

    new-array v11, v12, [B

    fill-array-data v11, :array_6

    .line 2666
    .local v11, smsTypeEmailSig:[B
    const/16 v12, 0x1a

    new-array v8, v12, [B

    fill-array-data v8, :array_7

    .line 2701
    .local v8, serviceData:[B
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiRoaming()Z

    move-result v12

    if-nez v12, :cond_4

    .line 2702
    const/4 v9, 0x0

    .line 2708
    .local v9, skipEsnCheck:Z
    :goto_0
    const/4 v2, 0x0

    .line 2711
    .local v2, hasESN:Z
    if-nez v9, :cond_0

    array-length v12, v1

    const/4 v13, 0x2

    if-lt v12, v13, :cond_0

    .line 2712
    const/4 v12, 0x0

    aget-byte v12, v5, v12

    aget-byte v13, v1, p2

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    aget-byte v12, v5, v12

    add-int/lit8 v13, p2, 0x1

    aget-byte v13, v1, v13

    if-ne v12, v13, :cond_0

    .line 2714
    add-int/lit8 p2, p2, 0x2

    .line 2715
    const/4 v2, 0x1

    .line 2720
    :cond_0
    array-length v12, v1

    sub-int v12, v12, p2

    const/4 v13, 0x2

    if-lt v12, v13, :cond_7

    .line 2721
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v12, v10

    if-le v12, v3, :cond_1

    .line 2722
    aget-object v12, v10, v3

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    aget-byte v13, v1, p2

    if-ne v12, v13, :cond_5

    aget-object v12, v10, v3

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    add-int/lit8 v13, p2, 0x1

    aget-byte v13, v1, v13

    if-ne v12, v13, :cond_5

    .line 2724
    packed-switch v3, :pswitch_data_0

    .line 2748
    :goto_2
    add-int/lit8 p2, p2, 0x2

    .line 2754
    :cond_1
    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-nez v12, :cond_2

    .line 2755
    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiJudgeCmail(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z

    .line 2760
    :cond_2
    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-nez v12, :cond_7

    .line 2761
    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiJudgeOptionsServices(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z

    move-result v12

    if-nez v12, :cond_3

    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiJudgeOtherServices(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2763
    :cond_3
    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    if-nez v12, :cond_6

    .line 2798
    .end local v3           #i:I
    .end local v8           #serviceData:[B
    :goto_3
    return-object v8

    .line 2704
    .end local v2           #hasESN:Z
    .end local v9           #skipEsnCheck:Z
    .restart local v8       #serviceData:[B
    :cond_4
    const/4 v9, 0x1

    .restart local v9       #skipEsnCheck:Z
    goto :goto_0

    .line 2726
    .restart local v2       #hasESN:Z
    .restart local v3       #i:I
    :pswitch_0
    const/16 v12, 0x201

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 2727
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_2

    .line 2730
    :pswitch_1
    const/4 v12, 0x1

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 2731
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_2

    .line 2734
    :pswitch_2
    const/16 v12, 0x101

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 2735
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_2

    .line 2738
    :pswitch_3
    const/16 v12, 0x102

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 2739
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_2

    .line 2742
    :pswitch_4
    const/4 v12, 0x4

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 2743
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_2

    .line 2721
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move-object v8, v1

    .line 2768
    goto :goto_3

    .line 2776
    .end local v3           #i:I
    :cond_7
    if-nez v2, :cond_9

    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-nez v12, :cond_9

    array-length v12, v1

    sub-int v12, v12, p2

    const/16 v13, 0xa

    if-lt v12, v13, :cond_9

    .line 2777
    const/4 v4, 0x1

    .line 2778
    .local v4, isEmailSig:Z
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    array-length v12, v11

    if-ge v3, v12, :cond_8

    .line 2779
    aget-byte v12, v11, v3

    add-int v13, p2, v3

    aget-byte v13, v1, v13

    if-eq v12, v13, :cond_a

    .line 2780
    const/4 v4, 0x0

    .line 2784
    :cond_8
    if-eqz v4, :cond_9

    .line 2785
    const/high16 v12, 0x1000

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 2786
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 2794
    .end local v3           #i:I
    .end local v4           #isEmailSig:Z
    :cond_9
    sub-int v7, p1, p2

    .line 2795
    .local v7, resultDataLen:I
    new-array v6, v7, [B

    .line 2796
    .local v6, resultData:[B
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-static {v1, v0, v6, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v6

    .line 2798
    goto :goto_3

    .line 2778
    .end local v6           #resultData:[B
    .end local v7           #resultDataLen:I
    .restart local v3       #i:I
    .restart local v4       #isEmailSig:Z
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2650
    :array_0
    .array-data 0x1
        0x0t
        0x70t
    .end array-data

    .line 2651
    nop

    :array_1
    .array-data 0x1
        0x2t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x1t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 0x1
        0x0t
        0x4t
    .end array-data

    .line 2658
    nop

    :array_6
    .array-data 0x1
        0x53t
        0x49t
        0x47t
        0x4et
        0x41t
        0x4ct
        0x55t
        0x49t
        0x44t
        0x3at
    .end array-data

    .line 2666
    nop

    :array_7
    .array-data 0x1
        0x94t
        0xf1t
        0x91t
        0xcet
        0x89t
        0x9et
        0x82t
        0xcct
        0x82t
        0xbdt
        0x82t
        0xdft
        0x95t
        0x5ct
        0x8et
        0xa6t
        0x82t
        0xc5t
        0x82t
        0xabt
        0x82t
        0xdct
        0x82t
        0xb9t
        0x82t
        0xf1t
    .end array-data

    .line 2724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static KddiformatSlamdownMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 12
    .parameter "mBearerData"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2804
    if-eqz p0, :cond_1

    .line 2805
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 2806
    .local v6, ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    iget-object v1, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2807
    .local v1, data:[B
    const/4 v4, 0x0

    .line 2810
    .local v4, offset:I
    array-length v7, v1

    if-lt v7, v11, :cond_0

    .line 2813
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiRoaming()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2814
    const/4 v5, 0x0

    .line 2825
    .local v5, skipEsnCheck:Z
    :goto_0
    if-nez v5, :cond_0

    .line 2826
    aget-byte v7, v1, v10

    if-nez v7, :cond_0

    const/16 v7, 0x70

    aget-byte v8, v1, v9

    if-ne v7, v8, :cond_0

    .line 2827
    const-string v7, "SMS"

    const-string v8, "ENS: 0x0070"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    add-int/lit8 v4, v4, 0x2

    .line 2834
    .end local v5           #skipEsnCheck:Z
    :cond_0
    iget-object v7, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v7, v7

    sub-int/2addr v7, v4

    if-lt v7, v11, :cond_1

    .line 2836
    aget-byte v7, v1, v4

    if-nez v7, :cond_1

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v1, v7

    if-nez v7, :cond_1

    .line 2837
    const-string v7, "SMS"

    const-string v8, "sms type: 0x0000"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    iput v10, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 2841
    iput-boolean v9, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 2847
    const/4 v3, 0x0

    .line 2849
    .local v3, fixedCallbackNumber:[B
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiRoaming()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2850
    const/4 v7, 0x4

    new-array v3, v7, [B

    .end local v3           #fixedCallbackNumber:[B
    fill-array-data v3, :array_0

    .line 2851
    .restart local v3       #fixedCallbackNumber:[B
    invoke-static {v1, v10}, Lcom/android/internal/telephony/HtcMessageHelper;->getKddiVoiceMailNotificationType1String([BZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 2860
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 2861
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 2862
    iput-object v3, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 2864
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2868
    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2873
    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v1           #data:[B
    .end local v3           #fixedCallbackNumber:[B
    .end local v4           #offset:I
    .end local v6           #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_1
    return-void

    .line 2816
    .restart local v1       #data:[B
    .restart local v4       #offset:I
    .restart local v6       #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_2
    const/4 v5, 0x1

    .restart local v5       #skipEsnCheck:Z
    goto :goto_0

    .line 2853
    .end local v5           #skipEsnCheck:Z
    .restart local v3       #fixedCallbackNumber:[B
    :cond_3
    const/16 v7, 0xd

    new-array v3, v7, [B

    .end local v3           #fixedCallbackNumber:[B
    fill-array-data v3, :array_1

    .line 2856
    .restart local v3       #fixedCallbackNumber:[B
    invoke-static {v1, v9}, Lcom/android/internal/telephony/HtcMessageHelper;->getKddiVoiceMailNotificationType1String([BZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 2865
    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :catch_0
    move-exception v2

    .line 2866
    .local v2, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "formatSlamdownMessage Addr decode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2850
    :array_0
    .array-data 0x1
        0x31t
        0x34t
        0x31t
        0x36t
    .end array-data

    .line 2853
    :array_1
    .array-data 0x1
        0x2bt
        0x38t
        0x31t
        0x39t
        0x30t
        0x34t
        0x34t
        0x34t
        0x34t
        0x30t
        0x31t
        0x34t
        0x31t
    .end array-data
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "msg"
    .parameter "force7BitEncoding"

    .prologue
    .line 430
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 9
    .parameter "msg"
    .parameter "force7BitEncoding"
    .parameter "nli"

    .prologue
    const/16 v5, 0xa0

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 442
    const/4 v1, 0x0

    .line 445
    .local v1, septets:I
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->encodeMoSmsWithShiftJis()Z

    move-result v6

    if-ne v6, v3, :cond_1

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcMessageHelper;->getShiftJisEncodingDetails(Ljava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v2

    .line 511
    :cond_0
    :goto_0
    return-object v2

    .line 453
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v1

    .line 456
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportEMS()Z

    move-result v6

    if-nez v6, :cond_9

    .line 457
    new-instance v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 458
    .local v2, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-ne v1, v7, :cond_5

    .line 459
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    mul-int/lit8 v1, v5, 0x2

    .line 462
    if-lez v1, :cond_2

    .line 463
    div-int/lit16 v5, v1, 0x8c

    rem-int/lit16 v6, v1, 0x8c

    if-lez v6, :cond_3

    :goto_1
    add-int/2addr v3, v5

    iput v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 465
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 466
    if-lez v1, :cond_4

    iget v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v3, v3, 0x8c

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    :goto_2
    iput v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 468
    iput v8, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_0

    :cond_3
    move v3, v4

    .line 463
    goto :goto_1

    .line 466
    :cond_4
    const/16 v3, 0x46

    goto :goto_2

    .line 472
    :cond_5
    if-lez v1, :cond_7

    .line 473
    div-int/lit16 v6, v1, 0xa0

    rem-int/lit16 v7, v1, 0xa0

    if-lez v7, :cond_6

    move v4, v3

    :cond_6
    add-int/2addr v4, v6

    iput v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 475
    :cond_7
    iput v1, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 476
    if-lez v1, :cond_8

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v4, v4, 0xa0

    sub-int/2addr v4, v1

    :goto_3
    iput v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 478
    iput v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_0

    :cond_8
    move v4, v5

    .line 476
    goto :goto_3

    .line 485
    .end local v2           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_9
    if-eq v1, v7, :cond_a

    if-gt v1, v5, :cond_a

    .line 486
    new-instance v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 487
    .restart local v2       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iput v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 488
    iput v1, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 489
    rsub-int v4, v1, 0xa0

    iput v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 490
    iput v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_0

    .line 492
    .end local v2           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v2

    .line 494
    .restart local v2       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-ne v4, v3, :cond_0

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v4, v3, :cond_0

    .line 497
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 498
    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    mul-int/lit8 v0, v4, 0x2

    .line 499
    .local v0, octets:I
    const/16 v4, 0x8c

    if-le v0, v4, :cond_b

    .line 500
    add-int/lit16 v3, v0, 0x85

    div-int/lit16 v3, v3, 0x86

    iput v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 502
    iget v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v3, v3, 0x86

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 508
    :goto_4
    iput v8, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto/16 :goto_0

    .line 505
    :cond_b
    iput v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 506
    rsub-int v3, v0, 0x8c

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_4
.end method

.method public static calcTextEncodingDetailsForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 10
    .parameter "msgBody"
    .parameter "address"
    .parameter "callback"

    .prologue
    .line 522
    new-instance v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 523
    .local v6, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v5, 0x0

    .line 525
    .local v5, septets:I
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v5

    .line 531
    if-nez p1, :cond_1

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v8, v8, 0x5

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x5

    add-int/lit8 v9, v8, 0x2

    if-nez p2, :cond_2

    const/4 v8, 0x0

    :goto_1
    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v7, v8, 0x3

    .line 543
    .local v7, totalBytes:I
    rsub-int v0, v7, 0xac

    .line 544
    .local v0, maxBytes:I
    mul-int/lit8 v8, v0, 0x8

    div-int/lit8 v3, v8, 0x7

    .line 547
    .local v3, maxSeptets:I
    move v1, v0

    .line 549
    .local v1, maxConcatenatedBytes:I
    mul-int/lit8 v8, v1, 0x8

    div-int/lit8 v2, v8, 0x7

    .line 554
    .local v2, maxConcatenatedSeptets:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    if-gt v5, v3, :cond_3

    .line 555
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 556
    iput v5, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 557
    sub-int v8, v3, v5

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 558
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 613
    :cond_0
    :goto_2
    return-object v6

    .line 531
    .end local v0           #maxBytes:I
    .end local v1           #maxConcatenatedBytes:I
    .end local v2           #maxConcatenatedSeptets:I
    .end local v3           #maxSeptets:I
    .end local v7           #totalBytes:I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v8

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v8

    goto :goto_1

    .line 560
    .restart local v0       #maxBytes:I
    .restart local v1       #maxConcatenatedBytes:I
    .restart local v2       #maxConcatenatedSeptets:I
    .restart local v3       #maxSeptets:I
    .restart local v7       #totalBytes:I
    :cond_3
    const/4 v8, -0x1

    if-eq v5, v8, :cond_6

    .line 561
    iput v5, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 562
    if-le v5, v3, :cond_5

    .line 563
    rem-int v8, v5, v2

    if-nez v8, :cond_4

    .line 564
    div-int v8, v5, v2

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 565
    const/4 v8, 0x0

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 575
    :goto_3
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 596
    :goto_4
    iget v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 599
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 600
    iget v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    mul-int/lit8 v4, v8, 0x2

    .line 601
    .local v4, octets:I
    if-le v4, v0, :cond_9

    .line 602
    div-int v8, v4, v1

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 603
    rem-int v8, v4, v1

    sub-int v8, v1, v8

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 609
    :goto_5
    const/4 v8, 0x3

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    .line 567
    .end local v4           #octets:I
    :cond_4
    div-int v8, v5, v2

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 568
    rem-int v8, v5, v2

    sub-int v8, v2, v8

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 572
    :cond_5
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 573
    sub-int v8, v3, v5

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 577
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v4, v8, 0x2

    .line 578
    .restart local v4       #octets:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 580
    if-le v4, v0, :cond_8

    .line 581
    rem-int v8, v4, v1

    if-nez v8, :cond_7

    .line 582
    div-int v8, v4, v1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 583
    const/4 v8, 0x0

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 593
    :goto_6
    const/4 v8, 0x3

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_4

    .line 585
    :cond_7
    div-int v8, v4, v1

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 586
    rem-int v8, v4, v1

    sub-int v8, v1, v8

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_6

    .line 590
    :cond_8
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 591
    sub-int v8, v0, v4

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_6

    .line 606
    :cond_9
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 607
    sub-int v8, v0, v4

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_5
.end method

.method private static countAsciiSeptets(Ljava/lang/CharSequence;Z)I
    .locals 5
    .parameter "msg"
    .parameter "force"

    .prologue
    const/4 v2, -0x1

    .line 418
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 419
    .local v1, msgLen:I
    if-eqz p1, :cond_1

    .line 425
    .end local v1           #msgLen:I
    :cond_0
    :goto_0
    return v1

    .line 420
    .restart local v1       #msgLen:I
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 421
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    .line 422
    goto :goto_0

    .line 420
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 10
    .parameter "smsData"

    .prologue
    const/4 v8, 0x1

    .line 2338
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v4, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2339
    .local v4, inStream:Lcom/android/internal/util/BitwiseInputStream;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2340
    .local v0, bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v3, 0x0

    .line 2341
    .local v3, foundSubparamMask:I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-lez v7, :cond_3

    .line 2342
    const/4 v1, 0x0

    .line 2343
    .local v1, decodeSuccess:Z
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 2344
    .local v5, subparamId:I
    shl-int v6, v8, v5

    .line 2345
    .local v6, subparamIdBit:I
    and-int v7, v3, v6

    if-eqz v7, :cond_2

    .line 2346
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal duplicate subparameter ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2439
    .end local v0           #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v1           #decodeSuccess:Z
    .end local v3           #foundSubparamMask:I
    .end local v4           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v5           #subparamId:I
    .end local v6           #subparamIdBit:I
    :catch_0
    move-exception v2

    .line 2440
    .local v2, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BearerData decode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    .end local v2           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    const/4 v0, 0x0

    :cond_1
    :goto_2
    return-object v0

    .line 2349
    .restart local v0       #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v1       #decodeSuccess:Z
    .restart local v3       #foundSubparamMask:I
    .restart local v4       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5       #subparamId:I
    .restart local v6       #subparamIdBit:I
    :cond_2
    sparse-switch v5, :sswitch_data_0

    .line 2412
    :try_start_1
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unsupported bearer data subparameter ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2441
    .end local v0           #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v1           #decodeSuccess:Z
    .end local v3           #foundSubparamMask:I
    .end local v4           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v5           #subparamId:I
    .end local v6           #subparamIdBit:I
    :catch_1
    move-exception v2

    .line 2442
    .local v2, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BearerData decode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2351
    .end local v2           #ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    .restart local v0       #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v1       #decodeSuccess:Z
    .restart local v3       #foundSubparamMask:I
    .restart local v4       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5       #subparamId:I
    .restart local v6       #subparamIdBit:I
    :sswitch_0
    :try_start_2
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2415
    :goto_3
    if-eqz v1, :cond_0

    or-int/2addr v3, v6

    goto/16 :goto_0

    .line 2354
    :sswitch_1
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2355
    goto :goto_3

    .line 2357
    :sswitch_2
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2358
    goto :goto_3

    .line 2360
    :sswitch_3
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2361
    goto :goto_3

    .line 2363
    :sswitch_4
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2364
    goto :goto_3

    .line 2366
    :sswitch_5
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2367
    goto :goto_3

    .line 2369
    :sswitch_6
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2370
    goto :goto_3

    .line 2372
    :sswitch_7
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2373
    goto :goto_3

    .line 2375
    :sswitch_8
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2376
    goto :goto_3

    .line 2378
    :sswitch_9
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2379
    goto :goto_3

    .line 2381
    :sswitch_a
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2382
    goto :goto_3

    .line 2384
    :sswitch_b
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2385
    goto :goto_3

    .line 2387
    :sswitch_c
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2388
    goto :goto_3

    .line 2390
    :sswitch_d
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2391
    goto :goto_3

    .line 2393
    :sswitch_e
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2394
    goto :goto_3

    .line 2396
    :sswitch_f
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2397
    goto :goto_3

    .line 2399
    :sswitch_10
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2400
    goto :goto_3

    .line 2402
    :sswitch_11
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2403
    goto :goto_3

    .line 2408
    :sswitch_12
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiDecodeExtendSubparam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)V

    goto :goto_3

    .line 2417
    .end local v1           #decodeSuccess:Z
    .end local v5           #subparamId:I
    .end local v6           #subparamIdBit:I
    :cond_3
    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_4

    .line 2418
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v8, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2420
    :cond_4
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v7, :cond_1

    .line 2421
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v7, v8, :cond_6

    .line 2422
    xor-int/lit8 v7, v3, 0x1

    xor-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    .line 2426
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 must occur without extra subparams ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    :cond_5
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto/16 :goto_2

    .line 2434
    :cond_6
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 2349
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_7
        0x4 -> :sswitch_8
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_b
        0x8 -> :sswitch_f
        0x9 -> :sswitch_c
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_10
        0xd -> :sswitch_d
        0xe -> :sswitch_5
        0xf -> :sswitch_e
        0x11 -> :sswitch_11
        0x14 -> :sswitch_6
        0x55 -> :sswitch_12
        0x56 -> :sswitch_12
        0x57 -> :sswitch_12
    .end sparse-switch
.end method

.method private static decode7bitAscii([BII)Ljava/lang/String;
    .locals 12
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/16 v10, 0xd

    const/16 v9, 0xa

    const/4 v4, 0x1

    .line 1257
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v7, v4, :cond_2

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 1259
    .local v4, isAsiaChs:Z
    :goto_0
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xd8

    if-eq v7, v8, :cond_0

    if-eqz v4, :cond_1

    .line 1260
    :cond_0
    mul-int/lit8 v7, p1, 0x8

    rem-int/lit8 v7, v7, 0x7

    if-nez v7, :cond_3

    .line 1261
    mul-int/lit8 v7, p1, 0x8

    div-int/lit8 v7, v7, 0x7

    sub-int/2addr p2, v7

    .line 1268
    :cond_1
    :goto_1
    if-nez p1, :cond_4

    .line 1269
    mul-int/lit8 p1, p1, 0x8

    .line 1280
    :goto_2
    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1281
    .local v5, strBuf:Ljava/lang/StringBuffer;
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1282
    .local v3, inStream:Lcom/android/internal/util/BitwiseInputStream;
    mul-int/lit8 v7, p2, 0x7

    add-int v6, p1, v7

    .line 1283
    .local v6, wantedBits:I
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-ge v7, v6, :cond_6

    .line 1284
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insufficient data (wanted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bits, but only have "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    .end local v3           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v5           #strBuf:Ljava/lang/StringBuffer;
    .end local v6           #wantedBits:I
    :catch_0
    move-exception v1

    .line 1304
    .local v1, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "7bit ASCII decode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1257
    .end local v1           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .end local v4           #isAsiaChs:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1263
    .restart local v4       #isAsiaChs:Z
    :cond_3
    mul-int/lit8 v7, p1, 0x8

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr p2, v7

    goto :goto_1

    .line 1271
    :cond_4
    mul-int/lit8 v7, p1, 0x8

    :try_start_1
    rem-int/lit8 v7, v7, 0x7

    if-nez v7, :cond_5

    .line 1272
    mul-int/lit8 p1, p1, 0x8

    goto :goto_2

    .line 1274
    :cond_5
    mul-int/lit8 p1, p1, 0x8

    .line 1275
    mul-int/lit8 v7, p1, 0x8

    rem-int/lit8 v7, v7, 0x7

    rsub-int/lit8 v7, v7, 0x7

    add-int/2addr p1, v7

    goto :goto_2

    .line 1287
    .restart local v3       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5       #strBuf:Ljava/lang/StringBuffer;
    .restart local v6       #wantedBits:I
    :cond_6
    invoke-virtual {v3, p1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1288
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, p2, :cond_a

    .line 1289
    const/4 v7, 0x7

    invoke-virtual {v3, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 1290
    .local v0, charCode:I
    if-lt v0, v11, :cond_7

    sget v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    if-gt v0, v7, :cond_7

    .line 1292
    sget-object v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    add-int/lit8 v8, v0, -0x20

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1288
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1293
    :cond_7
    if-ne v0, v9, :cond_8

    .line 1294
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1295
    :cond_8
    if-ne v0, v10, :cond_9

    .line 1296
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1299
    :cond_9
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1302
    .end local v0           #charCode:I
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    return-object v7
.end method

.method private static decode7bitGsm([BII)Ljava/lang/String;
    .locals 9
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1324
    mul-int/lit8 v6, p1, 0x8

    .line 1325
    .local v6, offsetBits:I
    add-int/lit8 v0, v6, 0x6

    div-int/lit8 v7, v0, 0x7

    .line 1326
    .local v7, offsetSeptets:I
    sub-int/2addr p2, v7

    .line 1327
    mul-int/lit8 v0, v7, 0x7

    sub-int v3, v0, v6

    .local v3, paddingBits:I
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    .line 1328
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v8

    .line 1330
    .local v8, result:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 1331
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v1, "7bit GSM decoding failed"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1333
    :cond_0
    return-object v8
.end method

.method public static decodeCBM(Lcom/android/internal/telephony/cdma/SmsMessage;)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 14
    .parameter "sms"

    .prologue
    const/4 v13, 0x1

    .line 2228
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getEncodedBearerData()[B

    move-result-object v7

    .line 2230
    .local v7, smsData:[B
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v4, v7}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2231
    .local v4, inStream:Lcom/android/internal/util/BitwiseInputStream;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2232
    .local v0, bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCMAS()Z

    move-result v5

    .line 2234
    .local v5, isCmas:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiEarthquakeAlert()Z

    move-result v6

    .line 2235
    .local v6, isKddiEarthquakeAlert:Z
    iput-boolean v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->isKddiEarthquakeAlert:Z

    .line 2238
    const/4 v3, 0x0

    .line 2239
    .local v3, foundSubparamMask:I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v10

    if-lez v10, :cond_3

    .line 2240
    const/4 v1, 0x0

    .line 2241
    .local v1, decodeSuccess:Z
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 2242
    .local v8, subparamId:I
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "subparamId> 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    shl-int v9, v13, v8

    .line 2244
    .local v9, subparamIdBit:I
    and-int v10, v3, v9

    if-eqz v10, :cond_2

    .line 2245
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "illegal duplicate subparameter ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2319
    .end local v0           #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v1           #decodeSuccess:Z
    .end local v3           #foundSubparamMask:I
    .end local v4           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v5           #isCmas:Z
    .end local v6           #isKddiEarthquakeAlert:Z
    .end local v8           #subparamId:I
    .end local v9           #subparamIdBit:I
    :catch_0
    move-exception v2

    .line 2320
    .local v2, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BearerData decode failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    .end local v2           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    const/4 v0, 0x0

    :cond_1
    :goto_2
    return-object v0

    .line 2248
    .restart local v0       #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v1       #decodeSuccess:Z
    .restart local v3       #foundSubparamMask:I
    .restart local v4       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5       #isCmas:Z
    .restart local v6       #isKddiEarthquakeAlert:Z
    .restart local v8       #subparamId:I
    .restart local v9       #subparamIdBit:I
    :cond_2
    packed-switch v8, :pswitch_data_0

    .line 2284
    :pswitch_0
    :try_start_1
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unsupported bearer data subparameter ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2321
    .end local v0           #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v1           #decodeSuccess:Z
    .end local v3           #foundSubparamMask:I
    .end local v4           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v5           #isCmas:Z
    .end local v6           #isKddiEarthquakeAlert:Z
    .end local v8           #subparamId:I
    .end local v9           #subparamIdBit:I
    :catch_1
    move-exception v2

    .line 2322
    .local v2, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BearerData decode failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2250
    .end local v2           #ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    .restart local v0       #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v1       #decodeSuccess:Z
    .restart local v3       #foundSubparamMask:I
    .restart local v4       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5       #isCmas:Z
    .restart local v6       #isKddiEarthquakeAlert:Z
    .restart local v8       #subparamId:I
    .restart local v9       #subparamIdBit:I
    :pswitch_1
    :try_start_2
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2287
    :goto_3
    if-eqz v1, :cond_0

    or-int/2addr v3, v9

    goto/16 :goto_0

    .line 2254
    :pswitch_2
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2255
    goto :goto_3

    .line 2257
    :pswitch_3
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2258
    goto :goto_3

    .line 2261
    :pswitch_4
    const/4 v10, 0x1

    invoke-static {v0, v4, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;Z)Z

    move-result v1

    .line 2263
    goto :goto_3

    .line 2265
    :pswitch_5
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2266
    goto :goto_3

    .line 2268
    :pswitch_6
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2269
    goto :goto_3

    .line 2271
    :pswitch_7
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2272
    goto :goto_3

    .line 2274
    :pswitch_8
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2275
    goto :goto_3

    .line 2277
    :pswitch_9
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2279
    goto :goto_3

    .line 2281
    :pswitch_a
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2282
    goto :goto_3

    .line 2289
    .end local v1           #decodeSuccess:Z
    .end local v8           #subparamId:I
    .end local v9           #subparamIdBit:I
    :cond_3
    and-int/lit8 v10, v3, 0x1

    if-nez v10, :cond_4

    .line 2290
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v11, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2292
    :cond_4
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v10, :cond_1

    .line 2293
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v10, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v10, v13, :cond_6

    .line 2294
    xor-int/lit8 v10, v3, 0x1

    xor-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_5

    .line 2298
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IS-91 must occur without extra subparams ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    :cond_5
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto/16 :goto_2

    .line 2303
    :cond_6
    if-eqz v5, :cond_7

    .line 2304
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasUserDataPayload(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 2305
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    if-eqz v10, :cond_1

    .line 2306
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v11

    iput v11, v10, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->serviceCategory:I

    goto/16 :goto_2

    .line 2313
    :cond_7
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 2248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_7
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method private static decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 10
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 1902
    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    mul-int/lit8 v5, v7, 0x8

    .line 1903
    .local v5, paramBits:I
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1904
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-virtual {p1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1905
    const/4 v3, 0x4

    .line 1906
    .local v3, fieldBits:B
    const/4 v1, 0x1

    .line 1907
    .local v1, consumedBits:B
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v7, v8, :cond_0

    .line 1908
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 1909
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1910
    const/16 v3, 0x8

    .line 1911
    int-to-byte v1, v9

    .line 1913
    :cond_0
    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1914
    add-int/lit8 v7, v1, 0x8

    int-to-byte v1, v7

    .line 1915
    sub-int v6, v5, v1

    .line 1916
    .local v6, remainingBits:I
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int v2, v7, v3

    .line 1917
    .local v2, dataBits:I
    sub-int v4, v6, v2

    .line 1918
    .local v4, paddingBits:I
    if-ge v6, v2, :cond_1

    .line 1919
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CALLBACK_NUMBER subparam encoding size error (remainingBits + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dataBits + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", paddingBits + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1923
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 1924
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1925
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1927
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->judgeAndPrependPlus()V

    .line 1930
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1931
    return v8
.end method

.method private static decodeCmasErecordAlertText(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 14
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1444
    const/4 v2, 0x0

    .line 1445
    .local v2, decodeSuccess:Z
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1447
    .local v8, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 1448
    .local v4, paramBytes:I
    mul-int/lit8 v3, v4, 0x8

    .line 1449
    .local v3, paramBits:I
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "paramBytes> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    if-gt v4, v13, :cond_0

    .line 1453
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1506
    :goto_0
    return v13

    .line 1460
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    const/4 v10, 0x5

    invoke-virtual {p1, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCharSetEncoding(I)V

    .line 1461
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v9, v13}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCharSetEncodingSet(Z)V

    .line 1462
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "encoding> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCharSetEncoding()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    new-array v7, v4, [B

    .line 1465
    .local v7, textArray:[B
    add-int/lit8 v9, v3, -0x8

    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v1

    .line 1466
    .local v1, data1:[B
    new-array v6, v13, [B

    .line 1467
    .local v6, remainByte:[B
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 1468
    .local v5, remainBits:I
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remainBits> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    shl-int/lit8 v9, v5, 0x5

    and-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v6, v12

    .line 1470
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remainByte> 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    array-length v9, v1

    invoke-static {v1, v12, v7, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1472
    array-length v9, v1

    invoke-static {v6, v12, v7, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1473
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertText([B)V

    .line 1475
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getNumberOfFields(Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;)I

    move-result v0

    .line 1476
    .local v0, charCount:I
    if-gez v0, :cond_1

    .line 1477
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported cmas charset encoding ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCharSetEncoding()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1480
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCharSetEncoding()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1503
    :pswitch_0
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported cmas charset encoding ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCharSetEncoding()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1482
    :pswitch_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1483
    const/4 v2, 0x1

    .line 1484
    goto/16 :goto_0

    .line 1487
    :pswitch_2
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitAscii([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1488
    const/4 v2, 0x1

    .line 1489
    goto/16 :goto_0

    .line 1491
    :pswitch_3
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1492
    const/4 v2, 0x1

    .line 1493
    goto/16 :goto_0

    .line 1495
    :pswitch_4
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1496
    const/4 v2, 0x1

    .line 1497
    goto/16 :goto_0

    .line 1499
    :pswitch_5
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1500
    const/4 v2, 0x1

    .line 1501
    goto/16 :goto_0

    .line 1480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeCmasErecordType1(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    .line 1414
    const/16 v0, 0x20

    .line 1415
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1416
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1417
    .local v2, paramBits:I
    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    .line 1418
    add-int/lit8 v2, v2, -0x20

    .line 1419
    const/4 v1, 0x1

    .line 1420
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCategory(I)V

    .line 1421
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setResponseType(I)V

    .line 1422
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setSeverity(I)V

    .line 1423
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setUrgency(I)V

    .line 1424
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCertainty(I)V

    .line 1425
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1427
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1428
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e_record_type_1 decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1433
    return v1

    .line 1428
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeCmasErecordType2(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 8
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 1382
    const/16 v0, 0x50

    .line 1383
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1384
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    mul-int/lit8 v2, v4, 0x8

    .line 1385
    .local v2, paramBits:I
    const/16 v4, 0x50

    if-lt v2, v4, :cond_0

    .line 1386
    add-int/lit8 v2, v2, -0x50

    .line 1387
    const/4 v1, 0x1

    .line 1388
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCmasId(I)V

    .line 1390
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertHandling(I)V

    .line 1391
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    .line 1392
    .local v3, time:[B
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->fromatTimeStamp([B)Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setExpires(Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;)V

    .line 1393
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expires> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setLanguage(I)V

    .line 1396
    .end local v3           #time:[B
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1397
    :cond_1
    const-string v5, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e_record_type_2 decode "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_3

    const-string v4, "succeeded"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (extra bits = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1402
    return v1

    .line 1397
    :cond_3
    const-string v4, "failed"

    goto :goto_0
.end method

.method private static decodeCmasUserDataPayload(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 20
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    move-object/from16 v16, v0

    .line 1528
    .local v16, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1529
    .local v10, hasUserDataHeader:Z
    const/4 v13, 0x0

    .line 1531
    .local v13, offset:I
    if-eqz v10, :cond_0

    .line 1532
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-byte v17, v17, v18

    move/from16 v0, v17

    and-int/lit16 v15, v0, 0xff

    .line 1533
    .local v15, udhLen:I
    add-int/lit8 v17, v15, 0x1

    add-int v13, v13, v17

    .line 1534
    new-array v11, v15, [B

    .line 1535
    .local v11, headerData:[B
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v11, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1536
    invoke-static {v11}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1541
    .end local v11           #headerData:[B
    .end local v15           #udhLen:I
    :cond_0
    :try_start_0
    new-instance v12, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1542
    .local v12, inStream:Lcom/android/internal/util/BitwiseInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;-><init>()V

    .line 1543
    .local v4, cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;
    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    .line 1545
    if-lez v13, :cond_1

    .line 1546
    mul-int/lit8 v14, v13, 0x8

    .line 1547
    .local v14, offsetBits:I
    invoke-virtual {v12, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1550
    .end local v14           #offsetBits:I
    :cond_1
    const/16 v3, 0x18

    .line 1551
    .local v3, EXPECTED_CMAS_MIN_SIZE:I
    invoke-virtual {v12}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    const/16 v18, 0x18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 1552
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "illegal CMAS format. offset: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    .end local v3           #EXPECTED_CMAS_MIN_SIZE:I
    .end local v4           #cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;
    .end local v12           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    :catch_0
    move-exception v8

    .line 1594
    .local v8, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CMAS Message decode failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1556
    .end local v8           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .restart local v3       #EXPECTED_CMAS_MIN_SIZE:I
    .restart local v4       #cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;
    .restart local v12       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    :cond_2
    const/16 v17, 0x8

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setProtocolVersion(I)V

    .line 1557
    const-string v17, "SMS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CMAE_pro_v> 0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getProtocolVersion()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const/4 v9, 0x0

    .line 1561
    .local v9, foundErecordTypeMask:I
    :cond_3
    :goto_0
    invoke-virtual {v12}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 1562
    const/4 v5, 0x0

    .line 1563
    .local v5, decodeSuccess:Z
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 1564
    .local v6, eRecordTypeId:I
    const-string v17, "SMS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "eRecordTypeId> 0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/16 v17, 0x1

    shl-int v7, v17, v6

    .line 1566
    .local v7, eRecoredTypeIdBit:I
    and-int v17, v9, v7

    if-eqz v17, :cond_4

    .line 1567
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "illegal duplicate e_recored_type ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1570
    :cond_4
    packed-switch v6, :pswitch_data_0

    .line 1583
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->skipUnsupportedType(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    .line 1584
    const-string v17, "SMS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "skip unsupported e_record-type ( "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :goto_1
    if-eqz v5, :cond_3

    or-int/2addr v9, v7

    goto/16 :goto_0

    .line 1572
    :pswitch_0
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasErecordAlertText(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 1573
    goto :goto_1

    .line 1575
    :pswitch_1
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasErecordType1(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 1576
    goto :goto_1

    .line 1578
    :pswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasErecordType2(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 1579
    goto :goto_1

    .line 1590
    .end local v5           #decodeSuccess:Z
    .end local v6           #eRecordTypeId:I
    .end local v7           #eRecoredTypeIdBit:I
    :cond_5
    and-int/lit8 v17, v9, 0x1

    if-nez v17, :cond_6

    .line 1591
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v18, "CMAS Message missing E_RECORD_TYPE_ALERT_TEXT type"

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1596
    :cond_6
    return-void

    .line 1570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 2021
    const/16 v0, 0x30

    .line 2022
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2023
    .local v1, decodeSuccess:Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2024
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2025
    add-int/lit8 v2, v2, -0x30

    .line 2026
    const/4 v1, 0x1

    .line 2027
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2030
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2031
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEFERRED_DELIVERY_TIME_ABSOLUTE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2036
    return v1

    .line 2031
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2063
    const/16 v0, 0x8

    .line 2064
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2065
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2066
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2067
    add-int/lit8 v2, v2, -0x8

    .line 2068
    const/4 v1, 0x1

    .line 2069
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    .line 2071
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2072
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEFERRED_DELIVERY_TIME_RELATIVE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2077
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 2078
    return v1

    .line 2072
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1849
    const/16 v0, 0x10

    .line 1850
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1851
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1852
    .local v2, paramBits:I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1853
    add-int/lit8 v2, v2, -0x10

    .line 1854
    const/4 v1, 0x1

    .line 1855
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    .line 1857
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1858
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_DEPOSIT_INDEX decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1863
    return v1

    .line 1858
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2127
    const/16 v0, 0x8

    .line 2128
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2129
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2130
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2131
    add-int/lit8 v2, v2, -0x8

    .line 2132
    const/4 v1, 0x1

    .line 2133
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 2134
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2136
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2137
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISPLAY_MODE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2142
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 2143
    return v1

    .line 2137
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeDtmfSmsAddress([BI)Ljava/lang/String;
    .locals 6
    .parameter "rawData"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 1871
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1872
    .local v1, strBuf:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_4

    .line 1873
    div-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x4

    ushr-int/2addr v3, v4

    and-int/lit8 v2, v3, 0xf

    .line 1876
    .local v2, val:I
    if-ltz v2, :cond_0

    const/16 v3, 0x9

    if-gt v2, v3, :cond_0

    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1872
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1877
    :cond_0
    if-ne v2, v5, :cond_1

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1878
    :cond_1
    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1879
    :cond_2
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1880
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid SMS address DTMF code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1882
    .end local v2           #val:I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 3
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    packed-switch v0, :pswitch_data_0

    .line 1797
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported IS-91 message type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1787
    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1800
    :goto_0
    return-void

    .line 1790
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_0

    .line 1794
    :pswitch_2
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_0

    .line 1785
    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 6
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1768
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v2, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1769
    .local v2, inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    div-int/lit8 v1, v4, 0x4

    .line 1770
    .local v1, dataLen:I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1771
    .local v3, numFields:I
    const/16 v4, 0xe

    if-gt v1, v4, :cond_0

    const/4 v4, 0x3

    if-lt v1, v4, :cond_0

    if-ge v1, v3, :cond_1

    .line 1772
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v5, "IS-91 voicemail status decoding failed"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1774
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1775
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1776
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 1777
    int-to-byte v4, v3

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1778
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1779
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1780
    return-void
.end method

.method private static decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 7
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1746
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1747
    .local v2, inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v5

    div-int/lit8 v0, v5, 0x6

    .line 1748
    .local v0, dataLen:I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1749
    .local v3, numFields:I
    const/16 v5, 0xe

    if-gt v0, v5, :cond_0

    if-ge v0, v3, :cond_1

    .line 1750
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v6, "IS-91 voicemail status decoding failed"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1752
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1753
    .local v4, strbuf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1754
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1753
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1756
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1757
    return-void
.end method

.method private static decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 10
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x3

    .line 1703
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v3, v7}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1704
    .local v3, inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    div-int/lit8 v1, v7, 0x6

    .line 1705
    .local v1, dataLen:I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1706
    .local v4, numFields:I
    const/16 v7, 0xe

    if-gt v1, v7, :cond_0

    if-lt v1, v8, :cond_0

    if-ge v1, v4, :cond_1

    .line 1707
    :cond_0
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v8, "IS-91 voicemail status decoding failed"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1710
    :cond_1
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1711
    .local v6, strbuf:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-lt v7, v9, :cond_2

    .line 1712
    sget-object v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    const/4 v8, 0x6

    invoke-virtual {v3, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1727
    .end local v6           #strbuf:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 1728
    .local v2, ex:Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 voicemail status decoding failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1714
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .restart local v6       #strbuf:Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1715
    .local v0, data:Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1716
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1717
    .local v5, prioCode:C
    const/16 v7, 0x20

    if-ne v5, v7, :cond_3

    .line 1718
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1725
    :goto_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1726
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v8, 0x3

    add-int/lit8 v9, v4, -0x3

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1732
    return-void

    .line 1719
    :cond_3
    const/16 v7, 0x21

    if-ne v5, v7, :cond_4

    .line 1720
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1729
    .end local v0           #data:Ljava/lang/String;
    .end local v5           #prioCode:C
    .end local v6           #strbuf:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v2

    .line 1730
    .local v2, ex:Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 voicemail status decoding failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1722
    .end local v2           #ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #data:Ljava/lang/String;
    .restart local v5       #prioCode:C
    .restart local v6       #strbuf:Ljava/lang/StringBuffer;
    :cond_4
    :try_start_2
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 voicemail status decoding failed: illegal priority setting ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method private static decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2106
    const/16 v0, 0x8

    .line 2107
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2108
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2109
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2110
    add-int/lit8 v2, v2, -0x8

    .line 2111
    const/4 v1, 0x1

    .line 2112
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 2114
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2115
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LANGUAGE_INDICATOR decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2120
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 2121
    return v1

    .line 2115
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeLatin([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1340
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sub-int v2, p2, p1

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, p0, p1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISO-8859-1 decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    .line 1189
    const/16 v0, 0x18

    .line 1190
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1191
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    mul-int/lit8 v2, v4, 0x8

    .line 1192
    .local v2, paramBits:I
    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    .line 1193
    add-int/lit8 v2, v2, -0x18

    .line 1194
    const/4 v1, 0x1

    .line 1195
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1196
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1197
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1198
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v3, :cond_3

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1199
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1201
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1202
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_IDENTIFIER decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_4

    const-string v3, "succeeded"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1207
    return v1

    .line 1198
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1202
    :cond_4
    const-string v3, "failed"

    goto :goto_1
.end method

.method private static decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 1
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1960
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;Z)Z

    move-result v0

    return v0
.end method

.method private static decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;Z)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .parameter "isCbm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x30

    .line 1968
    const/16 v0, 0x30

    .line 1969
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1970
    .local v1, decodeSuccess:Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1973
    .local v2, paramBits:I
    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x51

    if-ne v3, v4, :cond_0

    .line 1980
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1981
    const/4 v3, 0x1

    .line 1995
    :goto_0
    return v3

    .line 1984
    :cond_0
    if-lt v2, v5, :cond_1

    .line 1985
    add-int/lit8 v2, v2, -0x30

    .line 1986
    const/4 v1, 0x1

    .line 1987
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1989
    :cond_1
    if-eqz v1, :cond_2

    if-lez v2, :cond_3

    .line 1990
    :cond_2
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_CENTER_TIME_STAMP decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_4

    const-string v3, "succeeded"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    move v3, v1

    .line 1995
    goto :goto_0

    .line 1990
    :cond_4
    const-string v3, "failed"

    goto :goto_1
.end method

.method private static decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1829
    const/16 v0, 0x8

    .line 1830
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1831
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1832
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1833
    add-int/lit8 v2, v2, -0x8

    .line 1834
    const/4 v1, 0x1

    .line 1835
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1837
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1838
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NUMBER_OF_MESSAGES decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1843
    return v1

    .line 1838
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2171
    const/16 v0, 0x8

    .line 2172
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2173
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2175
    .local v2, paramBits:I
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportKddiMtCmail()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2180
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2181
    const/4 v3, 0x1

    .line 2197
    :goto_0
    return v3

    .line 2184
    :cond_0
    if-lt v2, v4, :cond_1

    .line 2185
    add-int/lit8 v2, v2, -0x8

    .line 2186
    const/4 v1, 0x1

    .line 2187
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 2188
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2190
    :cond_1
    if-eqz v1, :cond_2

    if-lez v2, :cond_3

    .line 2191
    :cond_2
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALERT_ON_MESSAGE_DELIVERY decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_4

    const-string v3, "succeeded"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2196
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    move v3, v1

    .line 2197
    goto :goto_0

    .line 2191
    :cond_4
    const-string v3, "failed"

    goto :goto_1
.end method

.method private static decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1937
    const/16 v0, 0x8

    .line 1938
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1939
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1940
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1941
    add-int/lit8 v2, v2, -0x8

    .line 1942
    const/4 v1, 0x1

    .line 1943
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 1944
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 1946
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1947
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_STATUS decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1952
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 1953
    return v1

    .line 1947
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeOctet([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1313
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1314
    :catch_0
    move-exception v0

    .line 1315
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Octet decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2149
    const/16 v0, 0x8

    .line 2150
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2151
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2152
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2153
    add-int/lit8 v2, v2, -0x8

    .line 2154
    const/4 v1, 0x1

    .line 2155
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 2156
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2158
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2159
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRIORITY_INDICATOR decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2164
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 2165
    return v1

    .line 2159
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2084
    const/16 v0, 0x8

    .line 2085
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2086
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2087
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2088
    add-int/lit8 v2, v2, -0x8

    .line 2089
    const/4 v1, 0x1

    .line 2090
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 2091
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2093
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2094
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRIVACY_INDICATOR decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2099
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 2100
    return v1

    .line 2094
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1805
    const/16 v0, 0x8

    .line 1806
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1807
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1808
    .local v2, paramBits:I
    if-lt v2, v6, :cond_0

    .line 1809
    add-int/lit8 v2, v2, -0x8

    .line 1810
    const/4 v1, 0x1

    .line 1811
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1812
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1813
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1814
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_6

    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1815
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1817
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1818
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REPLY_OPTION decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_7

    const-string v3, "succeeded"

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1823
    return v1

    :cond_3
    move v3, v5

    .line 1811
    goto :goto_0

    :cond_4
    move v3, v5

    .line 1812
    goto :goto_1

    :cond_5
    move v3, v5

    .line 1813
    goto :goto_2

    :cond_6
    move v4, v5

    .line 1814
    goto :goto_3

    .line 1818
    :cond_7
    const-string v3, "failed"

    goto :goto_4
.end method

.method private static decodeShiftJis([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1351
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sub-int v2, p2, p1

    const-string v3, "SJIS"

    invoke-direct {v1, p0, p1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1357
    :catch_0
    move-exception v0

    .line 1358
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SJIS decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 6
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1886
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1890
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v4, v4

    const-string v5, "US-ASCII"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    :goto_0
    return-void

    .line 1891
    :catch_0
    move-exception v0

    .line 1892
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v2, "invalid SMS address ASCII code"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1895
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDtmfSmsAddress([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto :goto_0
.end method

.method private static decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 1213
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1214
    .local v2, paramBits:I
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1215
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1216
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1217
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1218
    const/4 v0, 0x5

    .line 1219
    .local v0, consumedBits:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 1221
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1222
    add-int/lit8 v0, v0, 0x8

    .line 1224
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1225
    add-int/lit8 v0, v0, 0x8

    .line 1226
    sub-int v1, v2, v0

    .line 1227
    .local v1, dataBits:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1228
    return v5
.end method

.method private static decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 12
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 1605
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1606
    .local v8, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1609
    .local v3, hasUserDataHeader:Z
    const/4 v5, 0x0

    .line 1610
    .local v5, offset:I
    if-eqz v3, :cond_0

    .line 1611
    iget-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    aget-byte v9, v9, v11

    and-int/lit16 v7, v9, 0xff

    .line 1612
    .local v7, udhLen:I
    add-int/lit8 v9, v7, 0x1

    add-int/2addr v5, v9

    .line 1613
    new-array v4, v7, [B

    .line 1614
    .local v4, headerData:[B
    iget-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v10, 0x1

    invoke-static {v9, v10, v4, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1615
    invoke-static {v4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1619
    .end local v4           #headerData:[B
    .end local v7           #udhLen:I
    :cond_0
    const/16 v2, 0x9

    .line 1620
    .local v2, encodingTypeFromDcs:I
    iget v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_1

    .line 1621
    iget v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getEncodingTypeFromDcs(B)I

    move-result v2

    .line 1622
    iput v2, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1626
    :cond_1
    iget v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    packed-switch v9, :pswitch_data_0

    .line 1681
    :pswitch_0
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported user data encoding ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1632
    :pswitch_1
    const/4 v1, 0x0

    .line 1643
    .local v1, decodingtypeUTF8:Z
    iget v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v6, v9, [B

    .line 1644
    .local v6, payload:[B
    iget v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v10, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v10, v10

    if-ge v9, v10, :cond_2

    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1647
    .local v0, copyLen:I
    :goto_0
    iget-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v9, v11, v6, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1648
    iput-object v6, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1650
    if-nez v1, :cond_3

    .line 1653
    iget-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1684
    .end local v0           #copyLen:I
    .end local v1           #decodingtypeUTF8:Z
    .end local v6           #payload:[B
    :goto_1
    return-void

    .line 1644
    .restart local v1       #decodingtypeUTF8:Z
    .restart local v6       #payload:[B
    :cond_2
    iget-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v9

    goto :goto_0

    .line 1655
    .restart local v0       #copyLen:I
    :cond_3
    iget-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1660
    .end local v0           #copyLen:I
    .end local v1           #decodingtypeUTF8:Z
    .end local v6           #payload:[B
    :pswitch_2
    iget-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitAscii([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1663
    :pswitch_3
    iget-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1666
    :pswitch_4
    iget-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1669
    :pswitch_5
    iget-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1673
    :pswitch_6
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->isKddiEarthquakeAlert:Z

    if-nez v9, :cond_4

    sget-boolean v9, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v9, :cond_4

    .line 1674
    iget v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v8, v5, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiDecodeShiftJis(Lcom/android/internal/telephony/cdma/sms/UserData;II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1676
    :cond_4
    iget-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeShiftJis([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1626
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2203
    const/16 v0, 0x8

    .line 2204
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2205
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2206
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2207
    add-int/lit8 v2, v2, -0x8

    .line 2208
    const/4 v1, 0x1

    .line 2209
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCode:I

    .line 2211
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2212
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER_REPONSE_CODE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2217
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 2218
    return v1

    .line 2212
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeUtf16([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1245
    rem-int/lit8 v1, p1, 0x2

    .line 1246
    .local v1, padding:I
    add-int v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    .line 1248
    :try_start_0
    new-instance v2, Ljava/lang/String;

    mul-int/lit8 v3, p2, 0x2

    const-string v4, "utf-16be"

    invoke-direct {v2, p0, p1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UTF-16 decode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static decodeUtf8([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1235
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-8 decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 2001
    const/16 v0, 0x30

    .line 2002
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2003
    .local v1, decodeSuccess:Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2004
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2005
    add-int/lit8 v2, v2, -0x30

    .line 2006
    const/4 v1, 0x1

    .line 2007
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2009
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2010
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALIDITY_PERIOD_ABSOLUTE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2015
    return v1

    .line 2010
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2042
    const/16 v0, 0x8

    .line 2043
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2044
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2045
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2046
    add-int/lit8 v2, v2, -0x8

    .line 2047
    const/4 v1, 0x1

    .line 2048
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    .line 2050
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2051
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALIDITY_PERIOD_RELATIVE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2056
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    .line 2057
    return v1

    .line 2051
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method public static encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B
    .locals 5
    .parameter "bData"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1117
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v4, :cond_d

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1120
    :try_start_0
    new-instance v1, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 1121
    .local v1, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1122
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1123
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v2, :cond_0

    .line 1124
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1125
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1127
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v2, :cond_1

    .line 1128
    const/16 v2, 0x8

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1129
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1131
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v2, :cond_3

    .line 1132
    :cond_2
    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1133
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1135
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-eqz v2, :cond_4

    .line 1136
    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1137
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1139
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v2, :cond_e

    .line 1140
    const/16 v2, 0x8

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1141
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1148
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_6

    .line 1149
    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1150
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1153
    :cond_6
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v2, :cond_7

    .line 1154
    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1155
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1157
    :cond_7
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v2, :cond_8

    .line 1158
    const/16 v2, 0x8

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1159
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1161
    :cond_8
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v2, :cond_9

    .line 1162
    const/16 v2, 0x8

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1163
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1165
    :cond_9
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v2, :cond_a

    .line 1166
    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1167
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1169
    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v2, :cond_b

    .line 1170
    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1171
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1173
    :cond_b
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_c

    .line 1174
    const/16 v2, 0x8

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1175
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1177
    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1183
    .end local v1           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :goto_2
    return-object v2

    :cond_d
    move v2, v3

    .line 1117
    goto/16 :goto_0

    .line 1144
    .restart local v1       #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :cond_e
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_5

    .line 1145
    const/16 v2, 0x8

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1146
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeValidityPeriodAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1178
    .end local v1           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v0

    .line 1179
    .local v0, ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BearerData encode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    .end local v0           #ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :goto_3
    const/4 v2, 0x0

    goto :goto_2

    .line 1180
    :catch_1
    move-exception v0

    .line 1181
    .local v0, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BearerData encode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 9
    .parameter "uData"
    .parameter "udhData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 775
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    .line 776
    .local v0, payload:[B
    array-length v5, p1

    add-int/lit8 v2, v5, 0x1

    .line 777
    .local v2, udhBytes:I
    add-int/lit8 v5, v2, 0x1

    div-int/lit8 v3, v5, 0x2

    .line 778
    .local v3, udhCodeUnits:I
    rem-int/lit8 v4, v2, 0x2

    .line 779
    .local v4, udhPadding:I
    array-length v5, v0

    div-int/lit8 v1, v5, 0x2

    .line 780
    .local v1, payloadCodeUnits:I
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 781
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 782
    add-int v5, v3, v1

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 783
    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 784
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 785
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    invoke-static {p1, v8, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    add-int v6, v2, v4

    array-length v7, v0

    invoke-static {v0, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    return-void
.end method

.method private static encode7bitAscii(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .locals 7
    .parameter "msg"
    .parameter "septetOffset"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 666
    if-nez p2, :cond_0

    :goto_0
    :try_start_0
    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->stringTo7BitAsciiPacked(Ljava/lang/String;IZ)[B

    move-result-object v1

    .line 667
    .local v1, fullData:[B
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerData$1;)V

    .line 668
    .local v2, result:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    .line 669
    const/4 v3, 0x1

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    const/4 v5, 0x0

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 670
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    return-object v2

    .end local v1           #fullData:[B
    .end local v2           #result:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_0
    move v3, v4

    .line 666
    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "7bit GSM encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encode7bitAscii(Ljava/lang/String;Z)[B
    .locals 9
    .parameter "msg"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 622
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 623
    .local v4, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 624
    .local v3, msgLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 625
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 626
    .local v0, charCode:I
    if-ne v0, v8, :cond_1

    .line 627
    if-eqz p1, :cond_0

    .line 628
    const/4 v5, 0x7

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 624
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot ASCII encode ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v0           #charCode:I
    .end local v2           #i:I
    .end local v3           #msgLen:I
    .end local v4           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v1

    .line 638
    .local v1, ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "7bit ASCII encode failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 633
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

    .line 636
    .end local v0           #charCode:I
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method private static encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .parameter "uData"
    .parameter "udhData"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 646
    array-length v3, p1

    add-int/lit8 v1, v3, 0x1

    .line 649
    .local v1, udhBytes:I
    mul-int/lit8 v3, v1, 0x8

    rem-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_0

    .line 650
    mul-int/lit8 v3, v1, 0x8

    div-int/lit8 v2, v3, 0x7

    .line 653
    .local v2, udhSeptets:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v0

    .line 654
    .local v0, gcr:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 655
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 656
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 657
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 658
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 659
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    return-void

    .line 652
    .end local v0           #gcr:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .end local v2           #udhSeptets:I
    :cond_0
    mul-int/lit8 v3, v1, 0x8

    div-int/lit8 v3, v3, 0x7

    add-int/lit8 v2, v3, 0x1

    .restart local v2       #udhSeptets:I
    goto :goto_0
.end method

.method private static encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .parameter "uData"
    .parameter "udhData"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 761
    array-length v3, p1

    add-int/lit8 v1, v3, 0x1

    .line 762
    .local v1, udhBytes:I
    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x6

    div-int/lit8 v2, v3, 0x7

    .line 763
    .local v2, udhSeptets:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v0

    .line 764
    .local v0, gcr:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 765
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 766
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 767
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 768
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 769
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    return-void
.end method

.method private static encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .locals 7
    .parameter "msg"
    .parameter "septetOffset"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 747
    if-nez p2, :cond_0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, p1, v3, v4, v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v1

    .line 748
    .local v1, fullData:[B
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerData$1;)V

    .line 749
    .local v2, result:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    .line 750
    const/4 v3, 0x1

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    const/4 v5, 0x0

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    return-object v2

    .end local v1           #fullData:[B
    .end local v2           #result:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_0
    move v3, v4

    .line 747
    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "7bit GSM encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 996
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 997
    const/16 v3, 0x9

    .line 998
    .local v3, paramBits:I
    const/4 v1, 0x0

    .line 999
    .local v1, dataBits:I
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v6, :cond_2

    .line 1000
    add-int/lit8 v3, v3, 0x7

    .line 1001
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x8

    .line 1005
    :goto_0
    add-int/2addr v3, v1

    .line 1006
    div-int/lit8 v8, v3, 0x8

    rem-int/lit8 v5, v3, 0x8

    if-lez v5, :cond_3

    move v5, v6

    :goto_1
    add-int v4, v8, v5

    .line 1007
    .local v4, paramBytes:I
    mul-int/lit8 v5, v4, 0x8

    sub-int v2, v5, v3

    .line 1008
    .local v2, paddingBits:I
    invoke-virtual {p1, v9, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1009
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v6, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1010
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v6, :cond_0

    .line 1011
    const/4 v5, 0x3

    iget v6, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1012
    const/4 v5, 0x4

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1014
    :cond_0
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v9, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1015
    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {p1, v1, v5}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 1016
    if-lez v2, :cond_1

    invoke-virtual {p1, v2, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1017
    :cond_1
    return-void

    .line 1003
    .end local v2           #paddingBits:I
    .end local v4           #paramBytes:I
    :cond_2
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x4

    goto :goto_0

    :cond_3
    move v5, v7

    .line 1006
    goto :goto_1
.end method

.method private static encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 5
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 964
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v2, v4, :cond_1

    .line 966
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v3, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 971
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 974
    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 975
    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractPureNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, pureNumber:Ljava/lang/String;
    :try_start_1
    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 981
    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    if-eqz v2, :cond_0

    .line 982
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 983
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 984
    iput v4, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 985
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    goto :goto_0

    .line 978
    :catch_1
    move-exception v0

    .line 979
    .restart local v0       #ex:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v3, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static encodeCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1058
    const/4 v0, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Landroid/text/format/Time;->year:I

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1062
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1063
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Landroid/text/format/Time;->second:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1065
    return-void
.end method

.method private static encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1087
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1088
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1089
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1090
    return-void
.end method

.method private static encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 10
    .parameter "address"

    .prologue
    .line 939
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 940
    .local v3, digits:I
    mul-int/lit8 v1, v3, 0x4

    .line 941
    .local v1, dataBits:I
    div-int/lit8 v2, v1, 0x8

    .line 942
    .local v2, dataBytes:I
    rem-int/lit8 v7, v1, 0x8

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    add-int/2addr v2, v7

    .line 943
    new-array v5, v2, [B

    .line 944
    .local v5, rawData:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_5

    .line 945
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 946
    .local v0, c:C
    const/4 v6, 0x0

    .line 947
    .local v6, val:I
    const/16 v7, 0x31

    if-lt v0, v7, :cond_1

    const/16 v7, 0x39

    if-gt v0, v7, :cond_1

    add-int/lit8 v6, v0, -0x30

    .line 952
    :goto_2
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v5, v7

    rem-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 944
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 942
    .end local v0           #c:C
    .end local v4           #i:I
    .end local v5           #rawData:[B
    .end local v6           #val:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 948
    .restart local v0       #c:C
    .restart local v4       #i:I
    .restart local v5       #rawData:[B
    .restart local v6       #val:I
    :cond_1
    const/16 v7, 0x30

    if-ne v0, v7, :cond_2

    const/16 v6, 0xa

    goto :goto_2

    .line 949
    :cond_2
    const/16 v7, 0x2a

    if-ne v0, v7, :cond_3

    const/16 v6, 0xb

    goto :goto_2

    .line 950
    :cond_3
    const/16 v7, 0x23

    if-ne v0, v7, :cond_4

    const/16 v6, 0xc

    goto :goto_2

    .line 951
    :cond_4
    const/4 v5, 0x0

    .line 954
    .end local v0           #c:C
    .end local v5           #rawData:[B
    .end local v6           #val:I
    :cond_5
    return-object v5
.end method

.method private static encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 5
    .parameter "uData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 792
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v1

    .line 793
    .local v1, headerData:[B
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v2, :cond_3

    .line 794
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 795
    invoke-static {p0, v1, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    .line 812
    :goto_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiEncodeEmsUserDataGsmDcs(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 814
    return-void

    .line 796
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 797
    invoke-static {p0, v1, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_0

    .line 798
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 799
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0

    .line 801
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported EMS user data encoding ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 806
    :cond_3
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0
.end method

.method private static encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1080
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1081
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1082
    return-void
.end method

.method private static encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 5
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/16 v3, 0x8

    .line 409
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 410
    const/4 v0, 0x4

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 411
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 412
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 413
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 414
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 415
    return-void

    .line 413
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1030
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1031
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1032
    return-void
.end method

.method private static encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1103
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1104
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1105
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1106
    return-void
.end method

.method private static encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1022
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1023
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1024
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1025
    return-void
.end method

.method private static encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1095
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1096
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1097
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1098
    return-void
.end method

.method private static encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1072
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1073
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1074
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1075
    return-void
.end method

.method private static encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 3
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 930
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 931
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 932
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 933
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 934
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 935
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 936
    return-void

    :cond_0
    move v0, v2

    .line 931
    goto :goto_0

    :cond_1
    move v0, v2

    .line 932
    goto :goto_1

    :cond_2
    move v0, v2

    .line 933
    goto :goto_2

    :cond_3
    move v0, v2

    .line 934
    goto :goto_3
.end method

.method private static encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8c

    const/16 v9, 0xa

    const/16 v8, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 892
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 893
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 895
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    if-le v4, v7, :cond_1

    .line 896
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded user data too large ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move v4, v6

    .line 893
    goto :goto_0

    .line 908
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x8

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    sub-int v0, v4, v7

    .line 909
    .local v0, dataBits:I
    add-int/lit8 v2, v0, 0xd

    .line 910
    .local v2, paramBits:I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_3

    .line 912
    :cond_2
    add-int/lit8 v2, v2, 0x8

    .line 914
    :cond_3
    div-int/lit8 v7, v2, 0x8

    rem-int/lit8 v4, v2, 0x8

    if-lez v4, :cond_7

    move v4, v5

    :goto_1
    add-int v3, v7, v4

    .line 915
    .local v3, paramBytes:I
    mul-int/lit8 v4, v3, 0x8

    sub-int v1, v4, v2

    .line 916
    .local v1, paddingBits:I
    invoke-virtual {p1, v8, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 917
    const/4 v4, 0x5

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {p1, v4, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 918
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_5

    .line 920
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 922
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 923
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {p1, v0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 924
    if-lez v1, :cond_6

    invoke-virtual {p1, v1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 925
    :cond_6
    return-void

    .end local v1           #paddingBits:I
    .end local v3           #paramBytes:I
    :cond_7
    move v4, v6

    .line 914
    goto :goto_1
.end method

.method private static encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 8
    .parameter "uData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 819
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v3, :cond_0

    .line 820
    const-string v3, "SMS"

    const-string v4, "user data with null payloadStr"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 824
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v3, :cond_1

    .line 825
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 882
    :goto_0
    return-void

    .line 830
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->encodeMoSmsWithShiftJis()Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 832
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcMessageHelper;->encodeShiftJis(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 833
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 834
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 835
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v3, :cond_2

    :goto_1
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    goto :goto_1

    .line 841
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v3, :cond_a

    .line 842
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v3, :cond_5

    .line 843
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v3, :cond_4

    .line 844
    const-string v3, "SMS"

    const-string v4, "user data with octet encoding but null payload"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 846
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 848
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 849
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 852
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 853
    const-string v3, "SMS"

    const-string v4, "non-octet user data with null payloadStr"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 856
    :cond_6
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_7

    .line 857
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v1

    .line 858
    .local v1, gcr:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 859
    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 860
    .end local v1           #gcr:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_7
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v2, v6, :cond_8

    .line 861
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 862
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 863
    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v2, v7, :cond_9

    .line 864
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 865
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_0

    .line 867
    :cond_9
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported user data encoding ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 873
    :cond_a
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 874
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 880
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    goto/16 :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 877
    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2
.end method

.method private static encodeUtf16(Ljava/lang/String;)[B
    .locals 4
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 716
    :try_start_0
    const-string v1, "utf-16be"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeValidityPeriodAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1046
    const/4 v0, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1047
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Landroid/text/format/Time;->year:I

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1048
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1049
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1050
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1051
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Landroid/text/format/Time;->second:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1053
    return-void
.end method

.method private static encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1037
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1038
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1039
    return-void
.end method

.method public static getEncodingTypeFromDcs(B)I
    .locals 5
    .parameter "dataCodingScheme"

    .prologue
    const/16 v4, 0xe0

    .line 2449
    const/4 v1, 0x0

    .line 2450
    .local v1, userDataCompressed:Z
    const/16 v0, 0x9

    .line 2453
    .local v0, encodingType:I
    and-int/lit16 v2, p0, 0x80

    if-nez v2, :cond_2

    .line 2455
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2457
    :goto_0
    if-eqz v1, :cond_1

    .line 2458
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :goto_1
    return v0

    .line 2455
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2461
    :cond_1
    shr-int/lit8 v2, p0, 0x2

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 2463
    :pswitch_0
    const/16 v0, 0x9

    .line 2464
    goto :goto_1

    .line 2467
    :pswitch_1
    const/4 v0, 0x4

    .line 2468
    goto :goto_1

    .line 2472
    :pswitch_2
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    const/4 v0, 0x0

    goto :goto_1

    .line 2478
    :cond_2
    and-int/lit16 v2, p0, 0xf0

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_4

    .line 2479
    and-int/lit8 v2, p0, 0x4

    if-nez v2, :cond_3

    .line 2481
    const/16 v0, 0x9

    goto :goto_1

    .line 2484
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 2486
    :cond_4
    and-int/lit16 v2, p0, 0xf0

    const/16 v3, 0xc0

    if-eq v2, v3, :cond_5

    and-int/lit16 v2, p0, 0xf0

    const/16 v3, 0xd0

    if-eq v2, v3, :cond_5

    and-int/lit16 v2, p0, 0xf0

    if-ne v2, v4, :cond_8

    .line 2495
    :cond_5
    and-int/lit16 v2, p0, 0xf0

    if-ne v2, v4, :cond_6

    .line 2496
    const/4 v0, 0x4

    .line 2503
    :goto_2
    and-int/lit8 v2, p0, 0x3

    if-nez v2, :cond_7

    .line 2504
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MWI for Voicemail Message Waiting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2498
    :cond_6
    const/16 v0, 0x9

    goto :goto_2

    .line 2508
    :cond_7
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MWI for fax, email, or other "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2512
    :cond_8
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static kddiDecodeExtendSubparam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2587
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 2588
    .local v0, subparamLen:I
    mul-int/lit8 v1, v0, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2589
    return-void
.end method

.method private static kddiDecodeShiftJis(Lcom/android/internal/telephony/cdma/sms/UserData;II)Ljava/lang/String;
    .locals 7
    .parameter "userData"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2556
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->KddiReplaceUserData(Lcom/android/internal/telephony/cdma/sms/UserData;II)[B

    move-result-object v1

    .line 2558
    .local v1, pureData:[B
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discard? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 2570
    :goto_0
    return-object v3

    .line 2563
    :cond_0
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiChangeCmailPictCharCode([BI)[B

    move-result-object v2

    .line 2566
    .local v2, replaceData:[B
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replaceData> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    array-length v5, v2

    const-string v6, "kddi-emoji"

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2572
    :catch_0
    move-exception v0

    .line 2573
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SJIS decode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static kddiEncodeEmsUserDataGsmDcs(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 3
    .parameter "uData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2524
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2527
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 2528
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 2535
    :goto_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2536
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgEncoding 0x>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgType 0x>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    :cond_0
    return-void

    .line 2529
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2530
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    goto :goto_0

    .line 2532
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported EMS user data encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static kddiJudgeCmail(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z
    .locals 7
    .parameter "userData"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2884
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2885
    .local v0, data:[B
    array-length v4, v0

    sub-int/2addr v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 2895
    :cond_0
    :goto_0
    return v2

    .line 2887
    :cond_1
    aget-byte v4, v0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 2888
    .local v1, typeId:I
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMAIL?> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiSmsTypeCmail(I)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 2891
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 2892
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    move v2, v3

    .line 2893
    goto :goto_0
.end method

.method private static kddiJudgeOptionsServices(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z
    .locals 7
    .parameter "userData"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2598
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2599
    .local v0, data:[B
    array-length v4, v0

    sub-int/2addr v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 2608
    :cond_0
    :goto_0
    return v2

    .line 2600
    :cond_1
    aget-byte v4, v0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 2601
    .local v1, typeId:I
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Optional services?> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOptionService(I)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 2603
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 2604
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 2605
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    move v2, v3

    .line 2606
    goto :goto_0
.end method

.method private static kddiJudgeOtherServices(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z
    .locals 6
    .parameter "userData"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2618
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2619
    .local v0, data:[B
    array-length v4, v0

    sub-int/2addr v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 2632
    :cond_0
    :goto_0
    return v2

    .line 2620
    :cond_1
    aget-byte v4, v0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 2623
    .local v1, typeId:I
    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOtherService(I)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 2624
    const-string v2, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "other services> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 2626
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 2627
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    move v2, v3

    .line 2629
    goto :goto_0
.end method

.method private static skipUnsupportedType(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 4
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1367
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 1368
    .local v0, paramBits:I
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1369
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported type len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/4 v1, 0x1

    return v1
.end method

.method public static stringTo7BitAsciiPacked(Ljava/lang/String;IZ)[B
    .locals 12
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 679
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 680
    .local v2, dataLen:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int v7, v8, p1

    .line 681
    .local v7, septetCount:I
    const/16 v8, 0xff

    if-le v7, v8, :cond_0

    .line 682
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    const-string v9, "Payload cannot exceed 255 septets"

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 684
    :cond_0
    mul-int/lit8 v8, v7, 0x7

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v0, v8, 0x8

    .line 685
    .local v0, byteCount:I
    add-int/lit8 v8, v0, 0x1

    new-array v6, v8, [B

    .line 688
    .local v6, ret:[B
    :try_start_0
    new-instance v5, Lcom/android/internal/util/BitwiseOutputStream;

    add-int/lit8 v8, v0, 0x1

    invoke-direct {v5, v8}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 689
    .local v5, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    mul-int/lit8 v8, p1, 0x7

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v5, v8}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 690
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 691
    sget-object v8, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 692
    .local v1, charCode:I
    if-ne v1, v11, :cond_2

    .line 693
    if-nez p2, :cond_1

    .line 694
    const/4 v8, 0x7

    const/16 v9, 0x20

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 690
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 696
    :cond_1
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot ASCII encode ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    .end local v1           #charCode:I
    .end local v4           #i:I
    .end local v5           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v3

    .line 704
    .local v3, ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "7bit ASCII encode failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 699
    .end local v3           #ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    .restart local v1       #charCode:I
    .restart local v4       #i:I
    .restart local v5       #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :cond_2
    const/4 v8, 0x7

    :try_start_1
    invoke-virtual {v5, v8, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    .line 702
    .end local v1           #charCode:I
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 707
    const/4 v8, 0x0

    int-to-byte v9, v7

    aput-byte v9, v6, v8

    .line 708
    return-object v6
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "BearerData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ messageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", privacy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", displayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", errorClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgCenterTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :goto_a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deliveryAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", readAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", reportReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberOfMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", callbackNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", depositIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hasUserDataHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 376
    :cond_0
    const-string v1, "unset"

    goto/16 :goto_0

    .line 377
    :cond_1
    const-string v1, "unset"

    goto/16 :goto_1

    .line 378
    :cond_2
    const-string v1, "unset"

    goto/16 :goto_2

    .line 379
    :cond_3
    const-string v1, "unset"

    goto/16 :goto_3

    .line 380
    :cond_4
    const-string v1, "unset"

    goto/16 :goto_4

    .line 381
    :cond_5
    const-string v1, "unset"

    goto/16 :goto_5

    .line 382
    :cond_6
    const-string v1, "unset"

    goto/16 :goto_6

    .line 383
    :cond_7
    const-string v1, "unset"

    goto/16 :goto_7

    .line 385
    :cond_8
    const-string v1, "unset"

    goto/16 :goto_8

    .line 387
    :cond_9
    const-string v1, "unset"

    goto/16 :goto_9

    .line 389
    :cond_a
    const-string v1, "unset"

    goto/16 :goto_a

    .line 391
    :cond_b
    const-string v1, "unset"

    goto/16 :goto_b
.end method
