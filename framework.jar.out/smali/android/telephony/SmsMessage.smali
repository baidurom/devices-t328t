.class public Landroid/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"

# interfaces
.implements Landroid/telephony/HtcIfSmsMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMessage$DeliveryPdu;,
        Landroid/telephony/SmsMessage$SubmitPdu;,
        Landroid/telephony/SmsMessage$MessageClass;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_KSC5601:I = 0x4

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static final MAX_USER_DATA_BYTES:I = 0x8c

.field public static final MAX_USER_DATA_BYTES_WITH_CONC_AND_HEADER:I = 0x80

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_FOR_KT:I = 0x5a

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_GREEK_NLI_HEADER:I = 0x99

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_NLI_HEADER:I = 0x92

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_SPANISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_TURKISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_GREEK_NLI_HEADER:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field public static final MAX_USER_DATA_SEPTETS_WITH_NLI_HEADER:I = 0x98

.field public static final MAX_USER_DATA_SEPTETS_WITH_SPANISH_NLI_HEADER:I = 0x9b

.field public static final MAX_USER_DATA_SEPTETS_WITH_TURKISH_NLI_HEADER:I = 0x9b

.field private static mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;


# instance fields
.field public mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Landroid/telephony/SmsMessage;->getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 181
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 0
    .parameter "smb"

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 185
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 1
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    .line 538
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)[I
    .locals 4
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "nli"

    .prologue
    .line 562
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 566
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 567
    .local v0, ret:[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 568
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 569
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 570
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 571
    return-object v0

    .line 562
    .end local v0           #ret:[I
    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZII)[I
    .locals 5
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "nli"
    .parameter "phoneType"

    .prologue
    const/4 v4, 0x2

    .line 580
    if-ne v4, p3, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 583
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 584
    .local v0, ret:[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 585
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 586
    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v2, v0, v4

    .line 587
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 588
    return-object v0

    .line 580
    .end local v0           #ret:[I
    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 954
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/String;ZI)[I
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"
    .parameter "nli"

    .prologue
    .line 959
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .parameter "msgBody"
    .parameter "address"
    .parameter "callback"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 594
    const/4 v1, 0x0

    .line 596
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 597
    invoke-static {p1, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    invoke-static {p2, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 602
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 603
    .local v0, ret:[I
    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v2, v0, v4

    .line 604
    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v2, v0, v5

    .line 605
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 606
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 607
    .end local v0           #ret:[I
    :goto_0
    return-object v0

    .line 600
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createFromEfRecord(I[B)Landroid/telephony/SmsMessage;
    .locals 3
    .parameter "index"
    .parameter "data"

    .prologue
    .line 414
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 416
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 417
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 424
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v2

    .line 420
    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 424
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "index"
    .parameter "data"
    .parameter "phoneType"

    .prologue
    .line 447
    const/4 v1, 0x2

    if-ne v1, p2, :cond_1

    .line 448
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 450
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    if-eqz v0, :cond_0

    .line 451
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    .line 459
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 453
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 455
    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    if-eqz v0, :cond_0

    .line 456
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    goto :goto_0

    .line 459
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "index"
    .parameter "data"
    .parameter "isCdmaFormat"

    .prologue
    .line 466
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 467
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 474
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 470
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 474
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsMessage;
    .locals 3
    .parameter "pdu"

    .prologue
    .line 215
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v1

    .line 216
    .local v1, isCdmaFormat:Z
    if-eqz v1, :cond_0

    const-string v0, "3gpp2"

    .line 218
    .local v0, format:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    return-object v2

    .line 216
    .end local v0           #format:Ljava/lang/String;
    :cond_0
    const-string v0, "3gpp"

    goto :goto_0
.end method

.method public static createFromPdu([BI)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "pdu"
    .parameter "messageType"

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, smsMsg:Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .line 269
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    packed-switch p1, :pswitch_data_0

    .line 277
    invoke-static {p0}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 280
    :goto_0
    if-nez v0, :cond_0

    .line 281
    if-eqz v1, :cond_0

    .line 282
    new-instance v0, Landroid/telephony/SmsMessage;

    .end local v0           #smsMsg:Landroid/telephony/SmsMessage;
    invoke-direct {v0, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 285
    .restart local v0       #smsMsg:Landroid/telephony/SmsMessage;
    :cond_0
    return-object v0

    .line 271
    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .line 272
    goto :goto_0

    .line 274
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 275
    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 6
    .parameter "pdu"
    .parameter "format"

    .prologue
    const/4 v2, 0x0

    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, isCdmaFormat:Z
    const-string v3, "3gpp2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    const/4 v0, 0x1

    .line 237
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 248
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-nez v1, :cond_0

    .line 249
    const-string v3, "3gpp2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 250
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .line 261
    :cond_0
    :goto_1
    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_2
    return-object v2

    .line 238
    :cond_1
    const-string v3, "3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 241
    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_2
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFromPdu(): unsupported message format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 251
    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_3
    const-string v3, "3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 252
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    goto :goto_1

    .line 254
    :cond_4
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFromPdu(): unsupported message format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static findAsciiSeptetLimitIndex(Ljava/lang/String;II)I
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 747
    .local v2, size:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 748
    add-int/lit8 v0, v0, 0x1

    .line 749
    if-le v0, p2, :cond_0

    .line 753
    .end local v1           #i:I
    :goto_1
    return v1

    .line 747
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 753
    goto :goto_1
.end method

.method public static fragmentDataText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 883
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 884
    .local v0, activePhone:I
    const/16 v1, 0x80

    .line 887
    .local v1, limit:I
    const/4 v4, 0x0

    .line 888
    .local v4, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 890
    .local v7, textLen:I
    const/4 v5, 0x0

    .line 892
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v8, 0x86

    if-ge v7, v8, :cond_0

    .line 893
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 894
    .restart local v5       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v5

    .line 919
    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, result:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v6

    .line 904
    .end local v6           #result:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    div-int v2, v7, v1

    .line 906
    .local v2, msgCount:I
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 907
    .restart local v5       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-ge v4, v7, :cond_1

    .line 908
    const/4 v3, 0x0

    .line 909
    .local v3, nextPos:I
    sub-int v8, v7, v4

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v3, v4, v8

    .line 911
    if-le v3, v4, :cond_1

    if-le v3, v7, :cond_2

    .end local v3           #nextPos:I
    :cond_1
    move-object v6, v5

    .line 919
    .restart local v6       #result:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 916
    .end local v6           #result:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #nextPos:I
    :cond_2
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    move v4, v3

    .line 918
    goto :goto_1
.end method

.method public static fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 12
    .parameter "text"
    .parameter "nli"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v0, 0x86

    const/16 v7, 0x8c

    const/16 v6, 0xa0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 781
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-static {p0, v5, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v5

    :goto_0
    sput-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .line 786
    const-string v5, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encoding detail>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportEMS()Z

    move-result v5

    if-nez v5, :cond_4

    .line 796
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v5, v10, :cond_3

    .line 797
    const/16 v0, 0x8c

    .line 838
    .local v0, limit:I
    :goto_1
    const/4 v2, 0x0

    .line 839
    .local v2, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 840
    .local v4, textLen:I
    new-instance v3, Ljava/util/ArrayList;

    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 841
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    if-ge v2, v4, :cond_1

    .line 842
    const/4 v1, 0x0

    .line 844
    .local v1, nextPos:I
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->encodeMoSmsWithShiftJis()Z

    move-result v5

    if-ne v5, v10, :cond_1c

    .line 845
    sub-int v5, v4, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v1, v2, v5

    .line 870
    :goto_3
    if-le v1, v2, :cond_0

    if-le v1, v4, :cond_23

    .line 871
    :cond_0
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fragmentText failed ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v1           #nextPos:I
    :cond_1
    return-object v3

    .line 781
    .end local v0           #limit:I
    .end local v2           #pos:I
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #textLen:I
    :cond_2
    const/4 v5, 0x0

    invoke-static {p0, v5, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v5

    goto/16 :goto_0

    .line 799
    :cond_3
    const/16 v0, 0xa0

    .restart local v0       #limit:I
    goto :goto_1

    .line 800
    .end local v0           #limit:I
    :cond_4
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xd2

    if-ne v5, v8, :cond_5

    .line 802
    const/16 v0, 0x50

    .restart local v0       #limit:I
    goto :goto_1

    .line 804
    .end local v0           #limit:I
    :cond_5
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x50

    if-ne v5, v8, :cond_6

    .line 805
    const/16 v0, 0x5a

    .restart local v0       #limit:I
    goto :goto_1

    .line 807
    .end local v0           #limit:I
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->encodeMoSmsWithShiftJis()Z

    move-result v5

    if-ne v5, v10, :cond_7

    .line 808
    const/16 v0, 0x8c

    .restart local v0       #limit:I
    goto/16 :goto_1

    .line 811
    .end local v0           #limit:I
    :cond_7
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-le v5, v10, :cond_10

    .line 812
    const/4 v5, 0x2

    if-ne p1, v5, :cond_a

    .line 813
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v10, :cond_8

    if-ne p1, v11, :cond_9

    const/16 v0, 0x99

    .restart local v0       #limit:I
    :cond_8
    :goto_4
    goto/16 :goto_1

    .end local v0           #limit:I
    :cond_9
    const/16 v0, 0x95

    goto :goto_4

    .line 815
    :cond_a
    if-ne p1, v10, :cond_d

    .line 816
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v10, :cond_b

    if-ne p1, v11, :cond_c

    const/16 v0, 0x99

    .restart local v0       #limit:I
    :cond_b
    :goto_5
    goto/16 :goto_1

    .end local v0           #limit:I
    :cond_c
    const/16 v0, 0x95

    goto :goto_5

    .line 819
    :cond_d
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v10, :cond_e

    if-ne p1, v11, :cond_f

    const/16 v0, 0x99

    .restart local v0       #limit:I
    :cond_e
    :goto_6
    goto/16 :goto_1

    .end local v0           #limit:I
    :cond_f
    const/16 v0, 0x92

    goto :goto_6

    .line 822
    :cond_10
    const/4 v5, 0x2

    if-ne p1, v5, :cond_13

    .line 823
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v10, :cond_12

    if-ne p1, v11, :cond_11

    move v0, v6

    .restart local v0       #limit:I
    :goto_7
    goto/16 :goto_1

    .end local v0           #limit:I
    :cond_11
    const/16 v0, 0x9b

    goto :goto_7

    :cond_12
    move v0, v7

    goto :goto_7

    .line 825
    :cond_13
    if-ne p1, v10, :cond_16

    .line 826
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v10, :cond_15

    if-ne p1, v11, :cond_14

    move v0, v6

    .restart local v0       #limit:I
    :goto_8
    goto/16 :goto_1

    .end local v0           #limit:I
    :cond_14
    const/16 v0, 0x9b

    goto :goto_8

    :cond_15
    move v0, v7

    goto :goto_8

    .line 828
    :cond_16
    const/16 v5, 0xe

    if-ne p1, v5, :cond_19

    .line 829
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v10, :cond_18

    if-ne p1, v11, :cond_17

    move v0, v6

    .restart local v0       #limit:I
    :goto_9
    goto/16 :goto_1

    .end local v0           #limit:I
    :cond_17
    move v0, v6

    goto :goto_9

    :cond_18
    move v0, v7

    goto :goto_9

    .line 832
    :cond_19
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v10, :cond_1b

    if-ne p1, v11, :cond_1a

    move v0, v6

    .restart local v0       #limit:I
    :goto_a
    goto/16 :goto_1

    .end local v0           #limit:I
    :cond_1a
    const/16 v0, 0x98

    goto :goto_a

    :cond_1b
    move v0, v7

    goto :goto_a

    .line 847
    .restart local v0       #limit:I
    .restart local v1       #nextPos:I
    .restart local v2       #pos:I
    .restart local v3       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #textLen:I
    :cond_1c
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v10, :cond_20

    .line 851
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v5

    if-eqz v5, :cond_1d

    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-eq v5, v10, :cond_1e

    :cond_1d
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportEMS()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 855
    :cond_1e
    sub-int v5, v4, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v1, v2, v5

    goto/16 :goto_3

    .line 858
    :cond_1f
    invoke-static {p0, v2, v0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;III)I

    move-result v1

    goto/16 :goto_3

    .line 862
    :cond_20
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd2

    if-ne v5, v6, :cond_22

    .line 863
    const/16 v0, 0x50

    .line 868
    :cond_21
    :goto_b
    div-int/lit8 v5, v0, 0x2

    sub-int v6, v4, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v1, v2, v5

    goto/16 :goto_3

    .line 864
    :cond_22
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x50

    if-ne v5, v6, :cond_21

    .line 865
    const/16 v0, 0x5a

    goto :goto_b

    .line 875
    :cond_23
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    move v2, v1

    .line 877
    goto/16 :goto_2
.end method

.method public static fragmentTextExt(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .parameter "text"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 694
    if-ne v9, p1, :cond_2

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .line 703
    .local v4, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    iget v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-le v6, v8, :cond_4

    .line 704
    iget v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_3

    const/16 v0, 0x99

    .line 711
    .local v0, limit:I
    :goto_1
    const/4 v2, 0x0

    .line 712
    .local v2, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 713
    .local v5, textLen:I
    new-instance v3, Ljava/util/ArrayList;

    iget v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 714
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    if-ge v2, v5, :cond_1

    .line 715
    const/4 v1, 0x0

    .line 716
    .local v1, nextPos:I
    iget v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_7

    .line 717
    if-ne p1, v9, :cond_6

    iget v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-ne v6, v8, :cond_6

    .line 719
    sub-int v6, v5, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v1, v2, v6

    .line 727
    :goto_3
    if-le v1, v2, :cond_0

    if-le v1, v5, :cond_8

    .line 728
    :cond_0
    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fragmentText failed ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    .end local v1           #nextPos:I
    :cond_1
    return-object v3

    .line 694
    .end local v0           #limit:I
    .end local v2           #pos:I
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v5           #textLen:I
    :cond_2
    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    goto :goto_0

    .line 704
    .restart local v4       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_3
    const/16 v0, 0x86

    goto :goto_1

    .line 707
    :cond_4
    iget v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_5

    const/16 v0, 0xa0

    .restart local v0       #limit:I
    :goto_4
    goto :goto_1

    .end local v0           #limit:I
    :cond_5
    const/16 v0, 0x8c

    goto :goto_4

    .line 722
    .restart local v0       #limit:I
    .restart local v1       #nextPos:I
    .restart local v2       #pos:I
    .restart local v3       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #textLen:I
    :cond_6
    const/4 v6, -0x1

    invoke-static {p0, v2, v0, v6}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;III)I

    move-result v1

    goto :goto_3

    .line 725
    :cond_7
    div-int/lit8 v6, v0, 0x2

    sub-int v7, v5, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v1, v2, v6

    goto :goto_3

    .line 732
    :cond_8
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    move v2, v1

    .line 734
    goto/16 :goto_2
.end method

.method public static fragmentTextForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .parameter "text"
    .parameter "sAddress"
    .parameter "sCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    const/4 v1, 0x0

    .line 614
    .local v1, address:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v2, 0x0

    .line 615
    .local v2, callback:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 616
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    .line 617
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 618
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 620
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v13

    sput-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .line 626
    if-nez v1, :cond_4

    const/4 v13, 0x0

    :goto_0
    add-int/lit8 v13, v13, 0x5

    add-int/lit8 v13, v13, 0x3

    add-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x5

    add-int/lit8 v14, v13, 0x2

    if-nez v2, :cond_5

    const/4 v13, 0x0

    :goto_1
    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x8

    add-int/lit8 v12, v13, 0x3

    .line 638
    .local v12, totalBytes:I
    rsub-int v4, v12, 0xac

    .line 639
    .local v4, maxBytes:I
    mul-int/lit8 v13, v4, 0x8

    div-int/lit8 v7, v13, 0x7

    .line 642
    .local v7, maxSeptets:I
    move v5, v4

    .line 644
    .local v5, maxConcatenatedBytes:I
    mul-int/lit8 v13, v5, 0x8

    div-int/lit8 v6, v13, 0x7

    .line 646
    .local v6, maxConcatenatedSeptets:I
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_7

    .line 647
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    move v3, v6

    .line 654
    .local v3, limit:I
    :goto_2
    const/4 v9, 0x0

    .line 655
    .local v9, pos:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 656
    .local v11, textLen:I
    new-instance v10, Ljava/util/ArrayList;

    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 657
    .local v10, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ge v9, v11, :cond_3

    .line 658
    const/4 v8, 0x0

    .line 659
    .local v8, nextPos:I
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 660
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 662
    sub-int v13, v11, v9

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int v8, v9, v13

    .line 670
    :goto_4
    if-le v8, v9, :cond_2

    if-le v8, v11, :cond_b

    .line 671
    :cond_2
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fragmentTextForCSIM failed ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " >= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " >= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v8           #nextPos:I
    :cond_3
    return-object v10

    .line 626
    .end local v3           #limit:I
    .end local v4           #maxBytes:I
    .end local v5           #maxConcatenatedBytes:I
    .end local v6           #maxConcatenatedSeptets:I
    .end local v7           #maxSeptets:I
    .end local v9           #pos:I
    .end local v10           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #textLen:I
    .end local v12           #totalBytes:I
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v13

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v13

    goto/16 :goto_1

    .restart local v4       #maxBytes:I
    .restart local v5       #maxConcatenatedBytes:I
    .restart local v6       #maxConcatenatedSeptets:I
    .restart local v7       #maxSeptets:I
    .restart local v12       #totalBytes:I
    :cond_6
    move v3, v5

    .line 647
    goto :goto_2

    .line 650
    :cond_7
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    move v3, v7

    .restart local v3       #limit:I
    :goto_5
    goto :goto_2

    .end local v3           #limit:I
    :cond_8
    move v3, v4

    goto :goto_5

    .line 665
    .restart local v3       #limit:I
    .restart local v8       #nextPos:I
    .restart local v9       #pos:I
    .restart local v10       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #textLen:I
    :cond_9
    move-object/from16 v0, p0

    invoke-static {v0, v9, v3}, Landroid/telephony/SmsMessage;->findAsciiSeptetLimitIndex(Ljava/lang/String;II)I

    move-result v8

    goto :goto_4

    .line 668
    :cond_a
    div-int/lit8 v13, v3, 0x2

    sub-int v14, v11, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int v8, v9, v13

    goto :goto_4

    .line 675
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    move v9, v8

    .line 677
    goto/16 :goto_3
.end method

.method private static fragmentTextHtcNli(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 10
    .parameter "text"
    .parameter "nli"
    .parameter "phonetype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1679
    move v0, p2

    .line 1683
    .local v0, activePhone:I
    const/4 v7, 0x2

    if-ne v7, v0, :cond_5

    const/4 v7, 0x0

    invoke-static {p0, v7, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    :goto_0
    sput-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .line 1687
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encoding detail>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportEMS()Z

    move-result v1

    .line 1696
    .local v1, bsupportems:Z
    const/4 v7, 0x1

    if-ne v7, v0, :cond_0

    .line 1697
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSpecialNonEMS()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1698
    const-string v7, "Goven"

    const-string v8, " is special non EMS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const/4 v1, 0x0

    .line 1705
    :cond_0
    if-nez v1, :cond_7

    .line 1708
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    .line 1709
    const/16 v2, 0x8c

    .line 1746
    .local v2, limit:I
    :goto_1
    const/4 v4, 0x0

    .line 1747
    .local v4, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1748
    .local v6, textLen:I
    new-instance v5, Ljava/util/ArrayList;

    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1749
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    if-ge v4, v6, :cond_4

    .line 1750
    const/4 v3, 0x0

    .line 1751
    .local v3, nextPos:I
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1f

    .line 1752
    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    :cond_1
    if-nez v1, :cond_1e

    .line 1754
    :cond_2
    sub-int v7, v6, v4

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v3, v4, v7

    .line 1769
    :goto_3
    if-le v3, v4, :cond_3

    if-le v3, v6, :cond_22

    .line 1770
    :cond_3
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText failed ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    .end local v3           #nextPos:I
    :cond_4
    return-object v5

    .line 1683
    .end local v1           #bsupportems:Z
    .end local v2           #limit:I
    .end local v4           #pos:I
    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #textLen:I
    :cond_5
    const/4 v7, 0x0

    invoke-static {p0, v7, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    goto/16 :goto_0

    .line 1711
    .restart local v1       #bsupportems:Z
    :cond_6
    const/16 v2, 0xa0

    .restart local v2       #limit:I
    goto :goto_1

    .line 1712
    .end local v2           #limit:I
    :cond_7
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xd2

    if-ne v7, v8, :cond_8

    .line 1714
    const/16 v2, 0x50

    .restart local v2       #limit:I
    goto :goto_1

    .line 1716
    .end local v2           #limit:I
    :cond_8
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x50

    if-ne v7, v8, :cond_9

    .line 1717
    const/16 v2, 0x5a

    .restart local v2       #limit:I
    goto/16 :goto_1

    .line 1719
    .end local v2           #limit:I
    :cond_9
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_12

    .line 1720
    const/4 v7, 0x2

    if-ne p1, v7, :cond_c

    .line 1721
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    const/4 v7, -0x1

    if-ne p1, v7, :cond_a

    const/16 v2, 0x99

    .restart local v2       #limit:I
    :goto_4
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_a
    const/16 v2, 0x95

    goto :goto_4

    :cond_b
    const/16 v2, 0x86

    goto :goto_4

    .line 1723
    :cond_c
    const/4 v7, 0x1

    if-ne p1, v7, :cond_f

    .line 1724
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    const/4 v7, -0x1

    if-ne p1, v7, :cond_d

    const/16 v2, 0x99

    .restart local v2       #limit:I
    :goto_5
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_d
    const/16 v2, 0x95

    goto :goto_5

    :cond_e
    const/16 v2, 0x86

    goto :goto_5

    .line 1727
    :cond_f
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    const/4 v7, -0x1

    if-ne p1, v7, :cond_10

    const/16 v2, 0x99

    .restart local v2       #limit:I
    :goto_6
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_10
    const/16 v2, 0x92

    goto :goto_6

    :cond_11
    const/16 v2, 0x86

    goto :goto_6

    .line 1730
    :cond_12
    const/4 v7, 0x2

    if-ne p1, v7, :cond_15

    .line 1731
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_14

    const/4 v7, -0x1

    if-ne p1, v7, :cond_13

    const/16 v2, 0xa0

    .restart local v2       #limit:I
    :goto_7
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_13
    const/16 v2, 0x9b

    goto :goto_7

    :cond_14
    const/16 v2, 0x8c

    goto :goto_7

    .line 1733
    :cond_15
    const/4 v7, 0x1

    if-ne p1, v7, :cond_18

    .line 1734
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_17

    const/4 v7, -0x1

    if-ne p1, v7, :cond_16

    const/16 v2, 0xa0

    .restart local v2       #limit:I
    :goto_8
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_16
    const/16 v2, 0x9b

    goto :goto_8

    :cond_17
    const/16 v2, 0x8c

    goto :goto_8

    .line 1736
    :cond_18
    const/16 v7, 0xe

    if-ne p1, v7, :cond_1b

    .line 1737
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1a

    const/4 v7, -0x1

    if-ne p1, v7, :cond_19

    const/16 v2, 0xa0

    .restart local v2       #limit:I
    :goto_9
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_19
    const/16 v2, 0xa0

    goto :goto_9

    :cond_1a
    const/16 v2, 0x8c

    goto :goto_9

    .line 1740
    :cond_1b
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1d

    const/4 v7, -0x1

    if-ne p1, v7, :cond_1c

    const/16 v2, 0xa0

    .restart local v2       #limit:I
    :goto_a
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_1c
    const/16 v2, 0x98

    goto :goto_a

    :cond_1d
    const/16 v2, 0x8c

    goto :goto_a

    .line 1757
    .restart local v2       #limit:I
    .restart local v3       #nextPos:I
    .restart local v4       #pos:I
    .restart local v5       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #textLen:I
    :cond_1e
    invoke-static {p0, v4, v2, p1}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;III)I

    move-result v3

    goto/16 :goto_3

    .line 1761
    :cond_1f
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xd2

    if-ne v7, v8, :cond_21

    .line 1762
    const/16 v2, 0x50

    .line 1767
    :cond_20
    :goto_b
    div-int/lit8 v7, v2, 0x2

    sub-int v8, v6, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v3, v4, v7

    goto/16 :goto_3

    .line 1763
    :cond_21
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x50

    if-ne v7, v8, :cond_20

    .line 1764
    const/16 v2, 0x5a

    goto :goto_b

    .line 1774
    :cond_22
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    move v4, v3

    .line 1776
    goto/16 :goto_2
.end method

.method public static fragmentTextNliExt(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "nli"
    .parameter "phonetype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1675
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->fragmentTextHtcNli(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;I)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "phoneType"

    .prologue
    .line 431
    const/4 v1, 0x2

    if-ne v1, p4, :cond_0

    .line 432
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 438
    .local v0, pdu:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 435
    .end local v0           #pdu:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0       #pdu:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 2
    .parameter "sOriginatorAddress"
    .parameter "lTimeMilli"
    .parameter "sMessage"
    .parameter "bIs7Bit"
    .parameter "bundle"

    .prologue
    .line 1514
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v1

    .line 1515
    .local v1, isCdmaFormat:Z
    if-eqz v1, :cond_0

    .line 1517
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    .line 1524
    .local v0, deliveruPdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    :goto_0
    return-object v0

    .line 1520
    .end local v0           #deliveruPdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    .restart local v0       #deliveruPdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    goto :goto_0
.end method

.method public static final getNliFromLocale(Ljava/util/Locale;)I
    .locals 1
    .parameter "locale"

    .prologue
    .line 1471
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getNliFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static getPhoneType()I
    .locals 1

    .prologue
    .line 1181
    const/4 v0, -0x1

    return v0
.end method

.method private static final getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2

    .prologue
    .line 1611
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v0

    .line 1612
    .local v0, isCdmaFormat:Z
    if-eqz v0, :cond_0

    .line 1614
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1616
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    goto :goto_0
.end method

.method private static final getSmsFacility(I)Lcom/android/internal/telephony/SmsMessageBase;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 1662
    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    .line 1663
    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1665
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "originPort"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    .line 1124
    const/4 v1, 0x1

    if-ne v1, p6, :cond_0

    .line 1125
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1132
    .local v0, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    .end local v0           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    return-object v1

    .line 1130
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 1035
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v0

    .line 1036
    .local v0, isCdmaFormat:Z
    if-eqz v0, :cond_0

    .line 1038
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 1045
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 1041
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    .line 1142
    const/4 v1, 0x2

    if-ne v1, p4, :cond_0

    .line 1143
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1150
    .local v0, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1146
    .end local v0           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 5
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    .line 982
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v0

    .line 983
    .local v0, isCdmaFormat:Z
    if-eqz v0, :cond_1

    .line 985
    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    :goto_0
    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 988
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cdma getSubmitPdu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :goto_1
    new-instance v2, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 985
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 990
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 992
    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gsm getSubmitPdu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "nli"

    .prologue
    .line 1102
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v7

    .line 1103
    .local v7, isCdmaFormat:Z
    if-eqz v7, :cond_1

    .line 1106
    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 1114
    .local v8, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_1
    new-instance v0, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v0, v8}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v0

    .line 1106
    .end local v8           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1110
    :cond_1
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    .restart local v8       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    .line 1070
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v0

    .line 1071
    .local v0, isCdmaFormat:Z
    if-eqz v0, :cond_0

    .line 1073
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 1080
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 1076
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    .line 1160
    const/4 v1, 0x2

    if-ne v1, p5, :cond_0

    .line 1161
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1168
    .local v0, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1164
    .end local v0           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .parameter "pdu"

    .prologue
    .line 491
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v0

    .line 492
    .local v0, isCdmaFormat:Z
    if-eqz v0, :cond_0

    .line 494
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v1

    .line 496
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;I)I
    .locals 1
    .parameter "pdu"
    .parameter "phoneType"

    .prologue
    .line 504
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 505
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    .line 507
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static htcCreateFromPdu([BI)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "pdu"
    .parameter "phoneType"

    .prologue
    .line 190
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 191
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 195
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 193
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static is7BitAfterFragmentText()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 925
    sget-object v1, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    if-nez v1, :cond_1

    .line 931
    :cond_0
    :goto_0
    return v0

    .line 928
    :cond_1
    sget-object v1, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v1, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v1, v0, :cond_0

    .line 931
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newFromCDS(Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 3
    .parameter "line"

    .prologue
    .line 353
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 355
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 356
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 361
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v2

    .line 358
    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromCDS(Ljava/lang/String;I)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "line"
    .parameter "phoneType"

    .prologue
    .line 369
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 370
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 375
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 372
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "lines"

    .prologue
    .line 300
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 303
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromCMT([Ljava/lang/String;I)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "lines"
    .parameter "phoneType"

    .prologue
    .line 311
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 312
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 317
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 314
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method protected static newFromCMTI(Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 3
    .parameter "line"

    .prologue
    .line 324
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 326
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 327
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 332
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v2

    .line 329
    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromCMTI(Ljava/lang/String;I)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "line"
    .parameter "phoneType"

    .prologue
    .line 340
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 341
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 346
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 343
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "p"

    .prologue
    .line 382
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 385
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromParcel(Landroid/os/Parcel;I)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "p"
    .parameter "phoneType"

    .prologue
    .line 393
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 394
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 399
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 396
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 1176
    return-void
.end method


# virtual methods
.method public getAbsoluteValidityPeriod()J
    .locals 2

    .prologue
    .line 1559
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getAbsoluteValidityPeriod()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallBackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getCallBackNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCmasMessage()Lcom/android/internal/telephony/CmasMessage;
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getCmasMessage()Lcom/android/internal/telephony/CmasMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDateOfReport()J
    .locals 2

    .prologue
    .line 1467
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDateOfReport()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;

    move-result-object v0

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getIndexOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1384
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 1224
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()I
    .locals 2

    .prologue
    .line 1649
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    .line 1650
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageId()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1652
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->kddiGetMessageId()I

    move-result v0

    goto :goto_0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 1596
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v0

    return v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPriority()I

    move-result v0

    return v0
.end method

.method public getPrivacyInd()I
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPrivacyInd()I

    move-result v0

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawSmsc()[B
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getRawSmsc()[B

    move-result-object v0

    return-object v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCategory()I

    move-result v0

    return v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getStatusOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1360
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToaOfOriginatingAddress()I
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getToaOfOriginatingAddress()I

    move-result v0

    return v0
.end method

.method public getToaOfScAddress()I
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getToaOfScAddress()I

    move-result v0

    return v0
.end method

.method public getTpdu()[B
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTpdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    return-object v0
.end method

.method public getdataCodingScheme()I
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getdataCodingScheme()I

    move-result v0

    return v0
.end method

.method public getsinglesmsPhoneType()I
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getsinglesmsPhoneType()I

    move-result v0

    return v0
.end method

.method public isCMAS()Z
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCMAS()Z

    move-result v0

    return v0
.end method

.method public isCdmaFormat()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1543
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eq v1, v0, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-ne v1, v2, :cond_2

    .line 1545
    :cond_0
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    .line 1547
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    move-result v0

    return v0
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    move-result v0

    return v0
.end method

.method public isFromEVDO()Z
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isFromEVDO()Z

    move-result v0

    return v0
.end method

.method public isKddiBCSMS()Z
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isKddiBCSMS()Z

    move-result v0

    return v0
.end method

.method public isKddiProprietaryServiceCategory()Z
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isKddiProprietaryServiceCategory()Z

    move-result v0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    move-result v0

    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    move-result v0

    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    move-result v0

    return v0
.end method

.method public isOutGoingSms()Z
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isOutGoingSms()Z

    move-result v0

    return v0
.end method

.method public isReplace()Z
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    move-result v0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    return v0
.end method

.method public isUnsupportedMessage()Z
    .locals 1

    .prologue
    .line 1483
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isUnsupportedMessage()Z

    move-result v0

    return v0
.end method

.method public setCmasMessage(Lcom/android/internal/telephony/CmasMessage;)V
    .locals 1
    .parameter "cmas"

    .prologue
    .line 1575
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setCmasMessage(Lcom/android/internal/telephony/CmasMessage;)V

    .line 1576
    return-void
.end method

.method public setHtcCmasMessage(Landroid/telephony/HtcCmasMessage;)V
    .locals 1
    .parameter "cmas"

    .prologue
    .line 1584
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setHtcCmasMessage(Landroid/telephony/HtcCmasMessage;)V

    .line 1585
    return-void
.end method

.method public setIndexOnIcc(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 1401
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setIndexOnIcc(I)V

    .line 1402
    return-void
.end method

.method public setsinglesmsPhoneType(I)V
    .locals 1
    .parameter "phonetype"

    .prologue
    .line 1786
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setsinglesmsPhoneType(I)V

    .line 1787
    return-void
.end method
