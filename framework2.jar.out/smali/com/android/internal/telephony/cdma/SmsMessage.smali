.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"

# interfaces
.implements Lcom/android/internal/telephony/cdma/HtcIfSmsMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I = 0x0

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    .line 121
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 2
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 708
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"
    .parameter "nli"

    .prologue
    .line 714
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "msgBody"
    .parameter "address"
    .parameter "callback"

    .prologue
    .line 722
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetailsForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method private convertDtmfToAscii(B)B
    .locals 3
    .parameter "dtmfDigit"

    .prologue
    .line 1743
    packed-switch p1, :pswitch_data_0

    .line 1768
    const/16 v0, 0x20

    .line 1772
    .local v0, asciiDigit:B
    :goto_0
    return v0

    .line 1745
    .end local v0           #asciiDigit:B
    :pswitch_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1747
    :cond_0
    const/16 v0, 0x30

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1749
    .end local v0           #asciiDigit:B
    :cond_1
    const/16 v0, 0x44

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1752
    .end local v0           #asciiDigit:B
    :pswitch_1
    const/16 v0, 0x31

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1753
    .end local v0           #asciiDigit:B
    :pswitch_2
    const/16 v0, 0x32

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1754
    .end local v0           #asciiDigit:B
    :pswitch_3
    const/16 v0, 0x33

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1755
    .end local v0           #asciiDigit:B
    :pswitch_4
    const/16 v0, 0x34

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1756
    .end local v0           #asciiDigit:B
    :pswitch_5
    const/16 v0, 0x35

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1757
    .end local v0           #asciiDigit:B
    :pswitch_6
    const/16 v0, 0x36

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1758
    .end local v0           #asciiDigit:B
    :pswitch_7
    const/16 v0, 0x37

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1759
    .end local v0           #asciiDigit:B
    :pswitch_8
    const/16 v0, 0x38

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1760
    .end local v0           #asciiDigit:B
    :pswitch_9
    const/16 v0, 0x39

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1761
    .end local v0           #asciiDigit:B
    :pswitch_a
    const/16 v0, 0x30

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1762
    .end local v0           #asciiDigit:B
    :pswitch_b
    const/16 v0, 0x2a

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1763
    .end local v0           #asciiDigit:B
    :pswitch_c
    const/16 v0, 0x23

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1764
    .end local v0           #asciiDigit:B
    :pswitch_d
    const/16 v0, 0x41

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1765
    .end local v0           #asciiDigit:B
    :pswitch_e
    const/16 v0, 0x42

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1766
    .end local v0           #asciiDigit:B
    :pswitch_f
    const/16 v0, 0x43

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1743
    nop

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 7
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 334
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 336
    .local v1, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 348
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 349
    const-string v5, "CDMA"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 373
    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v1

    .line 352
    .restart local v1       #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    .line 357
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v3, v5, 0xff

    .line 361
    .local v3, size:I
    new-array v2, v3, [B

    .line 362
    .local v2, pdu:[B
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeRawDataAndGetSmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 370
    goto :goto_0

    .line 371
    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 372
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "CDMA"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 373
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 5
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    .line 129
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 132
    .local v1, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_start_0
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v1

    .line 134
    .restart local v1       #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :catch_0
    move-exception v0

    .line 135
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "CDMA"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 136
    goto :goto_0

    .line 137
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "CDMA"

    const-string v4, "SMS PDU parsing failed, OOM: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 139
    goto :goto_0
.end method

.method private createPdu()V
    .locals 8

    .prologue
    .line 1651
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1652
    .local v3, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1653
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1654
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1657
    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1658
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1659
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1661
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1662
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1663
    iget v5, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1664
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1665
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1666
    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1668
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1670
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1671
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1672
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1674
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1675
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1676
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1686
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1690
    :goto_0
    return-void

    .line 1687
    :catch_0
    move-exception v4

    .line 1688
    .local v4, ex:Ljava/io/IOException;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createRilPdu()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1694
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1695
    .local v3, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1696
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x64

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1697
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1700
    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1701
    iget-boolean v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->isServicePresented:Z

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1702
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1703
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1704
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1705
    iget v5, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1706
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1707
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1708
    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->rawAddressBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->rawAddressBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1709
    iget v5, v0, Lcom/android/internal/telephony/SmsAddress;->rawSubAddressType:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1710
    iget v5, v0, Lcom/android/internal/telephony/SmsAddress;->rawSubAddressOdd:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1711
    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->rawSubAddressBytes:[B

    if-eqz v5, :cond_1

    .line 1712
    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->rawSubAddressBytes:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1713
    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->rawSubAddressBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->rawSubAddressBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1718
    :goto_0
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1719
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1720
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1730
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mTpdu:[B

    .line 1734
    :goto_1
    return-void

    .line 1716
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1731
    :catch_0
    move-exception v4

    .line 1732
    .local v4, ex:Ljava/io/IOException;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static decodeRawDataAndGetSmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 11
    .parameter "msg"
    .parameter "pdu"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, decodeResult:Z
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;-><init>([B)V

    .line 384
    .local v2, decoder:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodePdu()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    :goto_0
    if-nez v2, :cond_1

    .line 397
    const/4 p0, 0x0

    .line 456
    .end local p0
    :cond_0
    :goto_1
    return-object p0

    .line 385
    .restart local p0
    :catch_0
    move-exception v5

    .line 387
    .local v5, r:Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    .line 388
    const/4 v1, 0x0

    .line 394
    goto :goto_0

    .line 389
    .end local v5           #r:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    .line 392
    .local v3, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 393
    const/4 v1, 0x0

    goto :goto_0

    .line 400
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v6, v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v6, v6, v8

    if-ne v6, v8, :cond_2

    iget-object v6, v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    if-eqz v6, :cond_2

    .line 402
    iget-object v6, v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 408
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 410
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 411
    .local v4, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->messageType()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 412
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->teleserviceCategory()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 413
    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 414
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 415
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getOriginatingAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 416
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getOriginatingAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .line 417
    :cond_3
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 418
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->replyOptionSeq()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 419
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->replyOptionSeq()I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 420
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->errorClass()I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 421
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->causeCode()I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 422
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getBearerData()[B

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 423
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 429
    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v4           #env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getOriginatingAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 430
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    .line 431
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getPseudoSubject()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->pseudoSubject:Ljava/lang/String;

    .line 435
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getTimestampMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 436
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getUserData()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 437
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBody()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    .line 438
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getNumberOfVoiceMail()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_5

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 442
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getDestinationAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 443
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v6, :cond_6

    :goto_3
    iput-boolean v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->isOutGoingSms:Z

    .line 445
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyEncoding()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    .line 446
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getBearerData()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 449
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    goto/16 :goto_1

    :cond_5
    move v6, v8

    .line 438
    goto :goto_2

    :cond_6
    move v8, v7

    .line 443
    goto :goto_3
.end method

.method public static declared-synchronized getCDMANextMessageId()I
    .locals 8

    .prologue
    .line 1408
    const-class v5, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v5

    const/4 v2, 0x1

    .line 1409
    .local v2, msgId:I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getPhoneContext()Landroid/content/Context;

    move-result-object v0

    .line 1411
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1412
    const-string v4, "cdma_msg_id"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1414
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1416
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "msg_id"

    const/4 v6, 0x1

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1417
    const-string v4, "msg_id"

    const v6, 0xffff

    rem-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1418
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1419
    const-string v4, "Jerry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSharedPreference msgId >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :goto_0
    monitor-exit v5

    return v2

    .line 1421
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v2

    .line 1422
    const-string v4, "Jerry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSystemPreference msgId >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1408
    .end local v0           #context:Landroid/content/Context;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    .line 2082
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 8
    .parameter "sOriginatorAddress"
    .parameter "lTimeMilli"
    .parameter "userData"
    .parameter "bIs7Bit"
    .parameter "bundle"

    .prologue
    const/4 v3, 0x0

    .line 1884
    if-eqz p3, :cond_0

    if-nez p0, :cond_1

    .line 1885
    :cond_0
    const/4 v0, 0x0

    .line 1900
    :goto_0
    return-object v0

    .line 1889
    :cond_1
    const/4 v6, 0x0

    .line 1890
    .local v6, callback:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1891
    .local v5, priority:I
    const/4 v7, 0x0

    .line 1893
    .local v7, messageId:I
    if-eqz p5, :cond_2

    .line 1894
    const-string v0, "CALLBACK"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1895
    const-string v0, "PRIORITY"

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1896
    const-string v0, "MESSAGE_ID"

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    :cond_2
    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    .line 1900
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetDeliveryPdu(Ljava/lang/String;JZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;I)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 8
    .parameter "sOriginatorAddress"
    .parameter "lTimeMilli"
    .parameter "sMessage"
    .parameter "bIs7Bit"
    .parameter "bundle"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1849
    if-eqz p3, :cond_0

    if-nez p0, :cond_1

    .line 1871
    :cond_0
    :goto_0
    return-object v0

    .line 1853
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1854
    .local v4, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1855
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1857
    const/4 v6, 0x0

    .line 1858
    .local v6, callback:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1859
    .local v5, priority:I
    const/4 v7, 0x0

    .line 1861
    .local v7, messageId:I
    if-eqz p5, :cond_2

    .line 1862
    const-string v0, "CALLBACK"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1863
    const-string v0, "PRIORITY"

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1864
    const-string v0, "MESSAGE_ID"

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    :cond_2
    move-object v0, p0

    move-wide v1, p1

    .line 1871
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetDeliveryPdu(Ljava/lang/String;JZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;I)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    goto :goto_0
.end method

.method private static getEncodeAddressBytes(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)I
    .locals 1
    .parameter "addr"

    .prologue
    .line 2096
    const/4 v0, 0x0

    return v0
.end method

.method private static declared-synchronized getNextMessageId()I
    .locals 6

    .prologue
    .line 1394
    const-class v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v3

    :try_start_0
    const-string v2, "persist.radio.cdma.msgid"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1395
    .local v0, msgId:I
    const v2, 0xffff

    rem-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1396
    .local v1, nextMsgId:Ljava/lang/String;
    const-string v2, "persist.radio.cdma.msgid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const-string v2, "CDMA:SMS"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1398
    const-string v2, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next persist.radio.cdma.msgid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const-string v2, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readback gets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.radio.cdma.msgid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    :cond_0
    monitor-exit v3

    return v0

    .line 1394
    .end local v1           #nextMsgId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"
    .parameter "priority"
    .parameter "callback"

    .prologue
    .line 600
    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"
    .parameter "priority"
    .parameter "callback"
    .parameter "lTimeMilli"

    .prologue
    .line 606
    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"
    .parameter "priority"
    .parameter "callback"
    .parameter "lTimeMilli"
    .parameter "messageId"

    .prologue
    .line 618
    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SmsHeader;Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "smsHeader"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    const/4 v4, 0x0

    .line 570
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 572
    .local v0, data:[B
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 573
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 574
    iput v4, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 575
    iput-boolean v4, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 577
    iput-object v1, p3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 579
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 580
    .local v2, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 581
    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 582
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 583
    iput-object v0, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 585
    const-string v3, ""

    invoke-static {p1, p5, v2, v4, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v4, 0x0

    .line 547
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 548
    .local v0, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 549
    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 550
    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 552
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 553
    .local v1, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 555
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 556
    .local v2, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 557
    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 558
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 559
    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 561
    const-string v3, ""

    invoke-static {p1, p4, v2, v4, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 6
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"

    .prologue
    .line 494
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"
    .parameter "bundle"

    .prologue
    .line 506
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 507
    :cond_0
    const/4 v3, 0x0

    .line 522
    :goto_0
    return-object v3

    .line 510
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 511
    .local v2, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 512
    iput-object p4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, callback:Ljava/lang/String;
    const/4 v1, 0x0

    .line 517
    .local v1, priority:I
    if-eqz p5, :cond_2

    .line 518
    const-string v3, "CALLBACK"

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    const-string v3, "PRIORITY"

    const/4 v4, 0x0

    invoke-virtual {p5, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 522
    :cond_2
    invoke-static {p1, p3, v2, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .parameter "pdu"

    .prologue
    .line 464
    const-string v0, "CDMA"

    const-string v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method private kddiSetTimeStamp()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 756
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    if-nez v1, :cond_0

    .line 761
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 762
    .local v0, ts:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    invoke-static {}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->switchTimezone(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->setToNow()V

    .line 764
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 765
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 766
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set timeStamp> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .end local v0           #ts:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    :cond_0
    return-void
.end method

.method protected static manageMalformedVMNSMS(I[B)I
    .locals 5
    .parameter "id"
    .parameter "smsData"

    .prologue
    .line 1070
    const/4 v0, 0x0

    .line 1071
    .local v0, foundMsgCount:Z
    array-length v1, p1

    .line 1072
    .local v1, len:I
    const/4 v2, 0x0

    .line 1073
    .local v2, tidx:I
    const/4 v3, 0x0

    .line 1076
    .local v3, tvalue:I
    :goto_0
    add-int/lit8 v4, v1, -0x2

    if-ge v2, v4, :cond_1

    .line 1077
    aget-byte v3, p1, v2

    .line 1078
    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 1079
    const/16 v4, 0x1003

    .line 1086
    :goto_1
    return v4

    .line 1081
    :cond_0
    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p1, v2

    .line 1082
    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v4

    goto :goto_0

    .line 1086
    :cond_1
    const/16 v4, 0x1002

    goto :goto_1
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 1
    .parameter "line"

    .prologue
    .line 2123
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .parameter "lines"

    .prologue
    .line 2106
    const-string v0, "CDMA"

    const-string v1, "newFromCMT: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 2114
    const-string v0, "CDMA"

    const-string v1, "newFromCMTI: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 12
    .parameter "p"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 149
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 150
    .local v7, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 151
    .local v5, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 152
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 159
    .local v8, subaddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 165
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-eqz v9, :cond_1

    move v9, v10

    :goto_0
    iput-boolean v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->isServicePresented:Z

    .line 166
    iget-boolean v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->isServicePresented:Z

    if-eqz v9, :cond_2

    .line 168
    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 178
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 180
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "teleService> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "messageType> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "serviceCategory> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .local v1, addressDigitMode:I
    and-int/lit16 v9, v1, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 186
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 187
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 188
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 189
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 190
    .local v2, count:B
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 191
    new-array v4, v2, [B

    .line 193
    .local v4, data:[B
    new-array v9, v2, [B

    iput-object v9, v0, Lcom/android/internal/telephony/SmsAddress;->rawAddressBytes:[B

    .line 196
    const/4 v6, 0x0

    .local v6, index:I
    :goto_2
    if-ge v6, v2, :cond_4

    .line 197
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 200
    iget-object v9, v0, Lcom/android/internal/telephony/SmsAddress;->rawAddressBytes:[B

    aget-byte v10, v4, v6

    aput-byte v10, v9, v6

    .line 204
    if-nez v1, :cond_0

    .line 205
    aget-byte v9, v4, v6

    invoke-direct {v7, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v9

    aput-byte v9, v4, v6

    .line 196
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v1           #addressDigitMode:I
    .end local v2           #count:B
    .end local v4           #data:[B
    .end local v6           #index:I
    :cond_1
    move v9, v11

    .line 165
    goto/16 :goto_0

    .line 171
    :cond_2
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v9, :cond_3

    .line 173
    const/4 v9, 0x2

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto/16 :goto_1

    .line 175
    :cond_3
    iput v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto/16 :goto_1

    .line 209
    .restart local v1       #addressDigitMode:I
    .restart local v2       #count:B
    .restart local v4       #data:[B
    .restart local v6       #index:I
    :cond_4
    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 212
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v9

    if-nez v9, :cond_7

    .line 218
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 219
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    iput-byte v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 220
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 222
    if-gez v2, :cond_5

    .line 223
    const/4 v2, 0x0

    .line 228
    :cond_5
    new-array v4, v2, [B

    .line 230
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_6

    .line 231
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 230
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 234
    :cond_6
    iput-object v4, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 266
    :goto_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 267
    .local v3, countInt:I
    if-lez v3, :cond_a

    .line 268
    new-array v4, v3, [B

    .line 270
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v3, :cond_9

    .line 271
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 270
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 238
    .end local v3           #countInt:I
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/SmsAddress;->rawSubAddressType:I

    .line 239
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/SmsAddress;->rawSubAddressOdd:I

    .line 240
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 241
    if-lez v2, :cond_8

    .line 242
    new-array v9, v2, [B

    iput-object v9, v0, Lcom/android/internal/telephony/SmsAddress;->rawSubAddressBytes:[B

    .line 244
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v2, :cond_8

    .line 245
    iget-object v9, v0, Lcom/android/internal/telephony/SmsAddress;->rawSubAddressBytes:[B

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    aput-byte v10, v9, v6

    .line 244
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 251
    :cond_8
    iget v9, v0, Lcom/android/internal/telephony/SmsAddress;->rawSubAddressType:I

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 252
    iget v9, v0, Lcom/android/internal/telephony/SmsAddress;->rawSubAddressOdd:I

    int-to-byte v9, v9

    iput-byte v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 253
    iget-object v9, v0, Lcom/android/internal/telephony/SmsAddress;->rawSubAddressBytes:[B

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    goto :goto_4

    .line 273
    .restart local v3       #countInt:I
    :cond_9
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 278
    :cond_a
    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 279
    iput-object v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 280
    iput-object v0, v7, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 283
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/16 v10, 0x1003

    if-ne v9, v10, :cond_b

    .line 284
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iget-object v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->manageMalformedVMNSMS(I[B)I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 286
    :cond_b
    iput-object v5, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 289
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .line 292
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 298
    :cond_c
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createRilPdu()V

    .line 300
    iget-object v9, v7, Lcom/android/internal/telephony/SmsMessageBase;->mTpdu:[B

    if-eqz v9, :cond_d

    .line 301
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RIL PDU> 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase;->mTpdu:[B

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_d
    iget-object v9, v7, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    if-eqz v9, :cond_e

    .line 306
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PDU> 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_e
    return-object v7
.end method

.method private parsePdu([B)V
    .locals 10
    .parameter "pdu"

    .prologue
    .line 1010
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1011
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1014
    .local v3, dis:Ljava/io/DataInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1015
    .local v4, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1018
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1019
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1020
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 1022
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1023
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 1024
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 1025
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1027
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 1028
    .local v6, length:B
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1029
    new-array v7, v6, [B

    iput-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 1030
    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 1032
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1034
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 1035
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 1036
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 1039
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1040
    .local v2, bearerDataLength:I
    new-array v7, v2, [B

    iput-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1041
    iget-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 1042
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    .end local v2           #bearerDataLength:I
    .end local v6           #length:B
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1049
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1050
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1051
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 1053
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 1056
    iget v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    if-nez v7, :cond_0

    .line 1057
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->setCallbackNumber(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    .line 1058
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiSetTimeStamp()V

    .line 1061
    :cond_0
    return-void

    .line 1043
    :catch_0
    move-exception v5

    .line 1044
    .local v5, ex:Ljava/lang/Exception;
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parsePduFromEfRecord([B)V
    .locals 24
    .parameter "pdu"

    .prologue
    .line 1094
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1095
    .local v5, bais:Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1096
    .local v8, dis:Ljava/io/DataInputStream;
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1097
    .local v9, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1098
    .local v2, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 1101
    .local v17, subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1103
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    move-result v21

    if-lez v21, :cond_9

    .line 1104
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    .line 1105
    .local v14, parameterId:I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v15

    .line 1106
    .local v15, parameterLen:I
    new-array v13, v15, [B

    .line 1108
    .local v13, parameterData:[B
    packed-switch v14, :pswitch_data_0

    .line 1208
    new-instance v21, Ljava/lang/Exception;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "unsupported parameterId ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    .end local v13           #parameterData:[B
    .end local v14           #parameterId:I
    .end local v15           #parameterLen:I
    :catch_0
    move-exception v10

    .line 1214
    .local v10, ex:Ljava/lang/Exception;
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    .end local v10           #ex:Ljava/lang/Exception;
    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1219
    iput-object v2, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1220
    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 1221
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1222
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 1225
    return-void

    .line 1115
    .restart local v13       #parameterData:[B
    .restart local v14       #parameterId:I
    .restart local v15       #parameterLen:I
    :pswitch_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1116
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "teleservice = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1123
    :pswitch_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    goto/16 :goto_0

    .line 1127
    :pswitch_2
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1128
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v3, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1129
    .local v3, addrBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1130
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 1131
    const/4 v12, 0x0

    .line 1132
    .local v12, numberType:I
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1133
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 1134
    iput v12, v2, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 1136
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 1137
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1140
    :cond_1
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1142
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v7, v0, [B

    .line 1143
    .local v7, data:[B
    const/4 v4, 0x0

    .line 1145
    .local v4, b:B
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 1147
    const/4 v11, 0x0

    .local v11, index:I
    :goto_2
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 1148
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    and-int/lit8 v21, v21, 0xf

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 1151
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v21

    aput-byte v21, v7, v11

    .line 1147
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1153
    .end local v11           #index:I
    :cond_2
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 1154
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 1155
    const/4 v11, 0x0

    .restart local v11       #index:I
    :goto_3
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 1156
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 1157
    aput-byte v4, v7, v11

    .line 1155
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1160
    .end local v11           #index:I
    :cond_3
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1161
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v12, v0, :cond_5

    .line 1162
    const-string v21, "CDMA"

    const-string v22, "TODO: Originating Addr is email id"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_4
    :goto_4
    iput-object v7, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 1173
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Originating Addr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1164
    :cond_5
    const-string v21, "CDMA"

    const-string v22, "TODO: Originating Addr is data network address"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1167
    :cond_6
    const-string v21, "CDMA"

    const-string v22, "Originating Addr is of incorrect type"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1170
    :cond_7
    const-string v21, "CDMA"

    const-string v22, "Incorrect Digit mode"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1177
    .end local v3           #addrBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v4           #b:B
    .end local v7           #data:[B
    .end local v12           #numberType:I
    :pswitch_3
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1178
    new-instance v18, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1179
    .local v18, subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 1180
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput-byte v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 1181
    const/16 v21, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v19

    .line 1182
    .local v19, subAddrLen:I
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 1183
    .local v20, subdata:[B
    const/4 v11, 0x0

    .restart local v11       #index:I
    :goto_5
    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    .line 1184
    const/16 v21, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 1186
    .restart local v4       #b:B
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v21

    aput-byte v21, v20, v11

    .line 1183
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1188
    .end local v4           #b:B
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    goto/16 :goto_0

    .line 1191
    .end local v11           #index:I
    .end local v18           #subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v19           #subAddrLen:I
    .end local v20           #subdata:[B
    :pswitch_4
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1192
    new-instance v16, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1193
    .local v16, replyOptBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    goto/16 :goto_0

    .line 1196
    .end local v16           #replyOptBis:Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_5
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1197
    new-instance v6, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v6, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1198
    .local v6, ccBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 1199
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 1200
    iget-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1201
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    goto/16 :goto_0

    .line 1204
    .end local v6           #ccBis:Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_6
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1205
    iput-object v13, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    goto/16 :goto_0

    .line 1211
    .end local v13           #parameterData:[B
    .end local v14           #parameterId:I
    .end local v15           #parameterLen:I
    :cond_9
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1212
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static privateGetDeliveryPdu(Ljava/lang/String;JZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;I)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 13
    .parameter "sOriginatorAddress"
    .parameter "lTimeMilli"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "priority"
    .parameter "callback"
    .parameter "messageId"

    .prologue
    .line 1927
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v7

    .line 1928
    .local v7, origAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v7, :cond_0

    const/4 v8, 0x0

    .line 2025
    :goto_0
    return-object v8

    .line 1930
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1935
    .local v2, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v10, 0x1

    iput v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1941
    if-nez p7, :cond_4

    .line 1942
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCDMANextMessageId()I

    move-result v10

    iput v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1948
    :goto_1
    move/from16 v0, p3

    iput-boolean v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1949
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1950
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1951
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1953
    move-object/from16 v0, p4

    iput-object v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1956
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 1957
    const/4 v10, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1959
    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1960
    move/from16 v0, p5

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1966
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-eqz v10, :cond_2

    .line 1967
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    iput-object v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1968
    iget-object v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(J)V

    .line 1969
    iget-object v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-static {}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->switchTimezone(Ljava/lang/String;)V

    .line 1973
    :cond_2
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v4

    .line 1974
    .local v4, encodedBearerData:[B
    const-string v10, "CDMA:SMS"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1975
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MO (encoded) BearerData = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MO raw BearerData = \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_3
    if-nez v4, :cond_5

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1944
    .end local v4           #encodedBearerData:[B
    :cond_4
    move/from16 v0, p7

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    goto/16 :goto_1

    .line 1980
    .restart local v4       #encodedBearerData:[B
    :cond_5
    iget-boolean v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v10, :cond_6

    const/16 v9, 0x1005

    .line 1983
    .local v9, teleservice:I
    :goto_2
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1984
    .local v5, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v10, 0x0

    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1985
    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1986
    iput-object v7, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1987
    const/4 v10, 0x1

    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1988
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 2000
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x64

    invoke-direct {v1, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2001
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2002
    .local v3, dos:Ljava/io/DataOutputStream;
    iget v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2003
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2004
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2005
    iget v10, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2006
    iget v10, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2007
    iget v10, v7, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2008
    iget v10, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2009
    iget v10, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2010
    iget-object v10, v7, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v11, 0x0

    iget-object v12, v7, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v12, v12

    invoke-virtual {v3, v10, v11, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2012
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2013
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2014
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2015
    array-length v10, v4

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2016
    const/4 v10, 0x0

    array-length v11, v4

    invoke-virtual {v3, v4, v10, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2017
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 2019
    new-instance v8, Landroid/telephony/SmsMessage$DeliveryPdu;

    invoke-direct {v8}, Landroid/telephony/SmsMessage$DeliveryPdu;-><init>()V

    .line 2020
    .local v8, pdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v8, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedMessage:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2022
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #dos:Ljava/io/DataOutputStream;
    .end local v8           #pdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    :catch_0
    move-exception v6

    .line 2023
    .local v6, ex:Ljava/io/IOException;
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "creating Delivery failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1980
    .end local v5           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v6           #ex:Ljava/io/IOException;
    .end local v9           #teleservice:I
    :cond_6
    const/16 v9, 0x1002

    goto/16 :goto_2
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "priority"
    .parameter "callback"

    .prologue
    const-wide/16 v5, 0x0

    .line 1435
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1440
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    goto :goto_0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "destAddr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "priority"
    .parameter "callback"
    .parameter "lTimeMilli"

    .prologue
    .line 612
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 20
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "priority"
    .parameter "callback"
    .parameter "lTimeMilli"
    .parameter "messageId"

    .prologue
    .line 1468
    const/4 v3, 0x0

    .line 1469
    .local v3, bNBPCD:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xa8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1471
    const-string v17, "ril.cdmaphoneapp.nbpcd.support"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1472
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Query NBPCD state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 1494
    .local v4, bRemovePlus:Z
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_2

    .line 1497
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toNBPCDAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1498
    .local v13, outAddrStr:Ljava/lang/String;
    move-object/from16 v0, p0

    if-eq v13, v0, :cond_2

    .line 1499
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xa8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1501
    const/4 v4, 0x1

    .line 1503
    :cond_1
    move-object/from16 p0, v13

    .line 1510
    .end local v13           #outAddrStr:Ljava/lang/String;
    :cond_2
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/4 v12, 0x1

    .line 1512
    .local v12, isAsiaChs:Z
    :goto_1
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xd8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    if-eqz v12, :cond_4

    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    const/16 v17, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-nez v17, :cond_4

    .line 1516
    const/4 v4, 0x1

    .line 1521
    :cond_4
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v7

    .line 1523
    .local v7, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v7, :cond_8

    const/4 v14, 0x0

    .line 1642
    :goto_2
    return-object v14

    .line 1475
    .end local v4           #bRemovePlus:Z
    .end local v7           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v12           #isAsiaChs:Z
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->forcePlusCodeTo011()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1477
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0x66

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const-string v17, "+1"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_6

    .line 1480
    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1481
    .local v15, substr:Ljava/lang/String;
    move-object/from16 p0, v15

    .line 1482
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "For MPCS final address: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1486
    .end local v15           #substr:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1510
    .restart local v4       #bRemovePlus:Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1525
    .restart local v7       #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v12       #isAsiaChs:Z
    :cond_8
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1526
    .local v6, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1531
    if-nez p7, :cond_11

    .line 1532
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCDMANextMessageId()I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1538
    :goto_3
    move/from16 v0, p1

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1539
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1540
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1541
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1543
    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1546
    if-eqz p4, :cond_c

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_c

    .line 1547
    const/4 v4, 0x0

    .line 1548
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_b

    .line 1551
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "before callback To NBPCD: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toNBPCDAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1553
    .restart local v13       #outAddrStr:Ljava/lang/String;
    move-object/from16 v0, p4

    if-eq v13, v0, :cond_a

    .line 1554
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xa8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1556
    const/4 v4, 0x1

    .line 1558
    :cond_9
    move-object/from16 p4, v13

    .line 1560
    :cond_a
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "after callback To NBPCD: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    .end local v13           #outAddrStr:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1565
    :cond_c
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1566
    move/from16 v0, p3

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1571
    const-wide/16 v17, 0x0

    cmp-long v17, p5, v17

    if-eqz v17, :cond_d

    .line 1572
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1573
    iget-object v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(J)V

    .line 1574
    iget-object v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->switchTimezone(Ljava/lang/String;)V

    .line 1579
    :cond_d
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xd8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    if-eqz v12, :cond_f

    .line 1580
    :cond_e
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 1581
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 1585
    :cond_f
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v9

    .line 1586
    .local v9, encodedBearerData:[B
    const-string v17, "CDMA:SMS"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1587
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MO (encoded) BearerData = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MO raw BearerData = \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_10
    if-nez v9, :cond_12

    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1534
    .end local v9           #encodedBearerData:[B
    :cond_11
    move/from16 v0, p7

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    goto/16 :goto_3

    .line 1593
    .restart local v9       #encodedBearerData:[B
    :cond_12
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xd8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    if-eqz v12, :cond_14

    .line 1594
    :cond_13
    const/16 v16, 0x1002

    .line 1599
    .local v16, teleservice:I
    :goto_4
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v10}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1600
    .local v10, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1601
    move/from16 v0, v16

    iput v0, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1602
    iput-object v7, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1603
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1604
    iput-object v9, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1616
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1617
    .local v5, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1618
    .local v8, dos:Ljava/io/DataOutputStream;
    iget v0, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1619
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1620
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1621
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1622
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1623
    iget v0, v7, Lcom/android/internal/telephony/SmsAddress;->ton:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1624
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1625
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1626
    iget-object v0, v7, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget-object v0, v7, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1628
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1629
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1630
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1631
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1632
    const/16 v17, 0x0

    array-length v0, v9

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v9, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1633
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 1635
    new-instance v14, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v14}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1636
    .local v14, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    .line 1637
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1639
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #dos:Ljava/io/DataOutputStream;
    .end local v14           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v11

    .line 1640
    .local v11, ex:Ljava/io/IOException;
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "creating SubmitPdu failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1596
    .end local v10           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v11           #ex:Ljava/io/IOException;
    .end local v16           #teleservice:I
    :cond_14
    iget-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    const/16 v16, 0x1005

    .restart local v16       #teleservice:I
    :goto_5
    goto/16 :goto_4

    .end local v16           #teleservice:I
    :cond_15
    const/16 v16, 0x1002

    goto :goto_5
.end method

.method private setCallbackNumber(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 9
    .parameter "env"

    .prologue
    const/4 v8, 0x1

    .line 775
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x51

    if-ne v5, v6, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v5

    if-nez v5, :cond_4

    .line 777
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_0

    .line 778
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callbackNumber> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    const/4 v2, 0x0

    .line 782
    .local v2, bOtherService:Z
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v5, :cond_2

    .line 783
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 784
    .local v4, userdata:Lcom/android/internal/telephony/cdma/sms/UserData;
    iget-boolean v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-ne v5, v8, :cond_2

    .line 785
    iget v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    invoke-static {v5}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOptionService(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    invoke-static {v5}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOtherService(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 789
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 790
    const/4 v2, 0x1

    .line 795
    .end local v4           #userdata:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_5

    .line 796
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 797
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v5, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 825
    :cond_3
    :goto_0
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change ori addr> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    .end local v2           #bOtherService:Z
    :cond_4
    return-void

    .line 800
    .restart local v2       #bOtherService:Z
    :cond_5
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_6

    if-ne v2, v8, :cond_3

    .line 803
    :cond_6
    const/16 v5, 0xc

    new-array v1, v5, [B

    fill-array-data v1, :array_0

    .line 811
    .local v1, addrResult:[B
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 813
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    array-length v7, v1

    const-string v8, "SJIS"

    invoke-direct {v5, v1, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 819
    iput-object v0, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    goto :goto_0

    .line 814
    :catch_0
    move-exception v3

    .line 815
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SJIS decode fake address fail."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v5, ""

    iput-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto :goto_1

    .line 803
    nop

    :array_0
    .array-data 0x1
        0x95t
        0x73t
        0x96t
        0xbet
        0x82t
        0xc8t
        0x91t
        0x97t
        0x90t
        0x4dt
        0x8et
        0xd2t
    .end array-data
.end method

.method private static writePdu(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)[B
    .locals 1
    .parameter "env"

    .prologue
    .line 2088
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method KddiGetMessageEncoding()I
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    return v0
.end method

.method public getCallBackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    .line 1825
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getEncodedBearerData()[B
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    return-object v0
.end method

.method getIncomingSmsFingerprint()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1790
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1792
    .local v0, output:Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1793
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1794
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1796
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    if-eqz v1, :cond_0

    .line 1797
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1800
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_0

    .line 1349
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    .line 1351
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    return v0
.end method

.method getNumOfVoicemails()I
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1812
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrivacyInd()I
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 1834
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    .prologue
    .line 626
    const-string v0, "CDMA"

    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method getTeleService()I
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public getdataCodingScheme()I
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public isCMAS()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 847
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 848
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x10ff

    if-gt v1, v2, :cond_0

    .line 853
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommercialKddiEarthquakeAlert()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 906
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiEarthquakeAlert()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 907
    const/4 v0, 0x0

    .line 908
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    .prologue
    .line 650
    const-string v0, "CDMA"

    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v0, 0x0

    return v0
.end method

.method public isKddiBCSMS()Z
    .locals 1

    .prologue
    .line 974
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiEmergencyMessage()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiProprietaryServiceCategory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 977
    :cond_1
    const/4 v0, 0x1

    .line 979
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKddiBroadcastSmsReceived()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 937
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 940
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x28

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_1

    .line 959
    :cond_0
    :goto_0
    return v0

    .line 946
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0x8001

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0x8023

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0x8026

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0x8028

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0x803f

    if-le v1, v2, :cond_0

    .line 952
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0xc001

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0xc023

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0xc026

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0xc028

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0xc03f

    if-le v1, v2, :cond_0

    .line 959
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKddiEarthquakeAlert()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 871
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 872
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    sparse-switch v1, :sswitch_data_0

    .line 891
    :cond_0
    const/4 v0, 0x0

    :sswitch_0
    return v0

    .line 872
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x26 -> :sswitch_0
        0x8001 -> :sswitch_0
        0x8021 -> :sswitch_0
        0x8022 -> :sswitch_0
        0x8026 -> :sswitch_0
        0xc001 -> :sswitch_0
        0xc021 -> :sswitch_0
        0xc022 -> :sswitch_0
        0xc026 -> :sswitch_0
    .end sparse-switch
.end method

.method public isKddiEmergencyMessage()Z
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    sparse-switch v0, :sswitch_data_0

    .line 925
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 923
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 919
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8001 -> :sswitch_0
        0xc001 -> :sswitch_0
    .end sparse-switch
.end method

.method public isKddiProprietaryServiceCategory()Z
    .locals 2

    .prologue
    .line 992
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 993
    .local v0, category:I
    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_2

    :cond_0
    const v1, 0x8001

    if-lt v0, v1, :cond_1

    const v1, 0x803f

    if-le v0, v1, :cond_2

    :cond_1
    const v1, 0xc001

    if-lt v0, v1, :cond_3

    const v1, 0xc03f

    if-gt v0, v1, :cond_3

    .line 997
    :cond_2
    const/4 v1, 0x1

    .line 999
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 641
    const-string v0, "CDMA"

    const-string v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    .prologue
    .line 695
    const-string v0, "CDMA"

    const-string v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kddiGetMessageId()I
    .locals 1

    .prologue
    .line 2037
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    return v0
.end method

.method public kddiGetSmsTypeId()I
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    return v0
.end method

.method public kddiHasSmsTypeId()Z
    .locals 1

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    return v0
.end method

.method kddiIsDiscard()Z
    .locals 1

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    return v0
.end method

.method protected parseSms()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1234
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 1235
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    if-ne v0, v4, :cond_8

    .line 1246
    const-string v0, "CDMA"

    const-string v1, "broadcast message. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCBM(Lcom/android/internal/telephony/cdma/SmsMessage;)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 1254
    :goto_1
    const-string v0, "CDMA:SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MT raw BearerData = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MT (decoded) BearerData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 1261
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-ne v0, v1, :cond_3

    .line 1262
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_3

    .line 1263
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-nez v0, :cond_3

    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->KddiformatSlamdownMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1271
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_5

    .line 1272
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    .line 1273
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1274
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    .line 1277
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCMAS()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    if-eqz v0, :cond_5

    .line 1278
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getAlertTextStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    .line 1279
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mCmas:Landroid/telephony/HtcCmasMessage;

    .line 1280
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getExpires()Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1281
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mCmas:Landroid/telephony/HtcCmasMessage;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getExpires()Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;->toMillis(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/HtcCmasMessage;->setExpiredMillis(J)V

    .line 1283
    :cond_4
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set CMAS content> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expired time> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mCmas:Landroid/telephony/HtcCmasMessage;

    invoke-virtual {v2}, Landroid/telephony/HtcCmasMessage;->getExpiredMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :try_start_0
    const-string v0, "CDMA"

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mCmas:Landroid/telephony/HtcCmasMessage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_6

    .line 1293
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1296
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-eqz v0, :cond_6

    .line 1297
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->judgeAndPrependPlus()V

    .line 1304
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_9

    .line 1305
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 1311
    :goto_3
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS SC timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 1322
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_b

    .line 1323
    const-string v1, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    if-nez v0, :cond_a

    const-string v0, "also missing"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " userData)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iput v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 1336
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1338
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto/16 :goto_0

    .line 1251
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    goto/16 :goto_1

    .line 1308
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    goto :goto_3

    .line 1323
    :cond_a
    const-string v0, "does have"

    goto :goto_4

    .line 1328
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 1329
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_5

    .line 1331
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v4, :cond_7

    .line 1332
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1339
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1287
    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method
