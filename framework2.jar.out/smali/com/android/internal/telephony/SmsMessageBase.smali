.class public abstract Lcom/android/internal/telephony/SmsMessageBase;
.super Ljava/lang/Object;
.source "SmsMessageBase.java"

# interfaces
.implements Lcom/android/internal/telephony/HtcIfSmsMessageBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;,
        Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMS"


# instance fields
.field protected absoluteValidityPeriod:J

.field protected destinationAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected dischargeTimeMillis:J

.field protected emailBody:Ljava/lang/String;

.field protected emailFrom:Ljava/lang/String;

.field public encodingType:I

.field protected indexOnIcc:I

.field public isCdmaFormat:Z

.field protected isEmail:Z

.field private isFromEVDO:Z

.field protected isMwi:Z

.field protected isOutGoingSms:Z

.field protected mCmas:Landroid/telephony/HtcCmasMessage;

.field protected mPdu:[B

.field protected mTpdu:[B

.field protected messageBody:Ljava/lang/String;

.field protected messageId:J

.field public messageRef:I

.field protected mwiDontStore:Z

.field protected mwiSense:Z

.field protected originatingAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected pseudoSubject:Ljava/lang/String;

.field protected scAddress:Ljava/lang/String;

.field protected scTimeMillis:J

.field private scToa:I

.field protected smsphonetype:I

.field protected statusOnIcc:I

.field protected userData:[B

.field protected userDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    .line 92
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 104
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isOutGoingSms:Z

    .line 121
    iput v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    .line 130
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isFromEVDO:Z

    .line 132
    iput-wide v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->absoluteValidityPeriod:J

    .line 133
    iput-wide v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageId:J

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mCmas:Landroid/telephony/HtcCmasMessage;

    .line 139
    iput v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->smsphonetype:I

    .line 196
    return-void
.end method

.method public static final getNliFromLocale(Ljava/util/Locale;)I
    .locals 3
    .parameter "locale"

    .prologue
    const/4 v1, -0x1

    .line 520
    if-nez p0, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v1

    .line 523
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, sLocale:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 528
    const-string v2, "tr_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_2

    const-string v2, "tr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 529
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 530
    :cond_3
    const-string v2, "es_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_4

    const-string v2, "es"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 531
    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    .line 532
    :cond_5
    const-string v2, "el_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_6

    const-string v2, "el"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 533
    :cond_6
    const/16 v1, 0xe

    goto :goto_0

    .line 534
    :cond_7
    const-string v2, "pt_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v2, "pt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method protected extractEmailAddressFromMessageBody()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 476
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const-string v2, "( /)|( )"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, parts:[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, v3, :cond_0

    .line 481
    :goto_0
    return-void

    .line 478
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    .line 479
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    .line 480
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    goto :goto_0
.end method

.method public getAbsoluteValidityPeriod()J
    .locals 2

    .prologue
    .line 589
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->absoluteValidityPeriod:J

    return-wide v0
.end method

.method public getCallBackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    const-string v0, ""

    return-object v0
.end method

.method public getCmasMessage()Lcom/android/internal/telephony/CmasMessage;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mCmas:Landroid/telephony/HtcCmasMessage;

    check-cast v0, Lcom/android/internal/telephony/CmasMessage;

    return-object v0
.end method

.method public getDateOfReport()J
    .locals 2

    .prologue
    .line 507
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->dischargeTimeMillis:J

    return-wide v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    .line 498
    const/4 v0, 0x0

    .line 501
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    .line 262
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    .line 237
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mCmas:Landroid/telephony/HtcCmasMessage;

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 593
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageId:J

    return-wide v0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    return v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public getPrivacyInd()I
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getProtocolIdentifier()I
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->pseudoSubject:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->pseudoSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRawSmsc()[B
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 652
    const/4 v0, -0x1

    return v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getStatus()I
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    return-wide v0
.end method

.method public getToaOfOriginatingAddress()I
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    .line 550
    const/4 v0, 0x0

    .line 553
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v0, v0, Lcom/android/internal/telephony/SmsAddress;->toa:I

    goto :goto_0
.end method

.method public getToaOfScAddress()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scToa:I

    return v0
.end method

.method public getTpdu()[B
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mTpdu:[B

    return-object v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method public abstract getdataCodingScheme()I
.end method

.method public getsinglesmsPhoneType()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->smsphonetype:I

    return v0
.end method

.method public isCMAS()Z
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isCphsMwiMessage()Z
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    return v0
.end method

.method public isFromEVDO()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isFromEVDO:Z

    return v0
.end method

.method public isKddiBCSMS()Z
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public isKddiProprietaryServiceCategory()Z
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isMWIClearMessage()Z
.end method

.method public abstract isMWISetMessage()Z
.end method

.method public abstract isMwiDontStore()Z
.end method

.method public isOutGoingSms()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isOutGoingSms:Z

    return v0
.end method

.method public abstract isReplace()Z
.end method

.method public abstract isReplyPathPresent()Z
.end method

.method public abstract isStatusReportMessage()Z
.end method

.method public isUnsupportedMessage()Z
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract kddiGetMessageId()I
.end method

.method protected parseMessageBody()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractEmailAddressFromMessageBody()V

    .line 454
    :cond_0
    return-void
.end method

.method public setCmasMessage(Lcom/android/internal/telephony/CmasMessage;)V
    .locals 0
    .parameter "cmas"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mCmas:Landroid/telephony/HtcCmasMessage;

    .line 610
    return-void
.end method

.method public setFromEVDO(Z)V
    .locals 0
    .parameter "bfromevdo"

    .prologue
    .line 580
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isFromEVDO:Z

    .line 581
    return-void
.end method

.method public setHtcCmasMessage(Landroid/telephony/HtcCmasMessage;)V
    .locals 0
    .parameter "cmas"

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mCmas:Landroid/telephony/HtcCmasMessage;

    .line 620
    return-void
.end method

.method public setIndexOnIcc(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 428
    iput p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 429
    return-void
.end method

.method public setMessageBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    .line 666
    return-void
.end method

.method public setsinglesmsPhoneType(I)V
    .locals 0
    .parameter "phonetype"

    .prologue
    .line 674
    iput p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->smsphonetype:I

    .line 675
    return-void
.end method
