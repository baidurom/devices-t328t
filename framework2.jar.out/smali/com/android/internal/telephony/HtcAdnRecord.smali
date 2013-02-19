.class public Lcom/android/internal/telephony/HtcAdnRecord;
.super Ljava/lang/Object;
.source "HtcAdnRecord.java"


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DAILING_NUMBER_END:I = 0xb

.field static final ADN_DAILING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field alphaTag:Ljava/lang/String;

.field efid:I

.field extRecord:I

.field mClearExt1Record:Z

.field number:Ljava/lang/String;

.field recordNumber:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    .line 347
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    .line 296
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    .line 297
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->mClearExt1Record:Z

    .line 348
    iput p1, p0, Lcom/android/internal/telephony/HtcAdnRecord;->efid:I

    .line 349
    iput p2, p0, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    .line 350
    iput-object p3, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    .line 351
    iput-object p4, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    .line 330
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    .line 296
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    .line 297
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->mClearExt1Record:Z

    .line 331
    iput p1, p0, Lcom/android/internal/telephony/HtcAdnRecord;->efid:I

    .line 332
    iput p2, p0, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    .line 333
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/HtcAdnRecord;->parseRecord([B)V

    .line 334
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    .line 336
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    .line 296
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    .line 297
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->mClearExt1Record:Z

    .line 337
    iput p1, p0, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    .line 338
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/HtcAdnRecord;->parseRecord([B)V

    .line 339
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 342
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/HtcAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/HtcAdnRecord;-><init>(II[B)V

    .line 328
    return-void
.end method

.method private parseRecord([B)V
    .locals 5
    .parameter "record"

    .prologue
    .line 557
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    .line 560
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 562
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 564
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 566
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    .line 587
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 577
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    .line 580
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 583
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    .line 585
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 524
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 533
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(Ljava/util/ArrayList;I)[B
    .locals 13
    .parameter
    .parameter "recordSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;I)[B"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, ext1RecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    const/4 v2, 0x0

    .line 402
    .local v2, byteTag:[B
    const/4 v0, 0x0

    .line 403
    .local v0, adnString:[B
    add-int/lit8 v6, p2, -0xe

    .line 405
    .local v6, footerOffset:I
    new-array v0, p2, [B

    .line 406
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, p2, :cond_0

    .line 407
    const/4 v10, -0x1

    aput-byte v10, v0, v7

    .line 406
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 411
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 413
    :cond_2
    const-string v10, "GSM"

    const-string v11, "[buildAdnString] Empty alpha tag or number"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-eqz p1, :cond_3

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/telephony/HtcAdnRecord;->hasExtendedRecord()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 417
    iget v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    if-lez v10, :cond_3

    iget v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v10, v11, :cond_3

    .line 418
    iget v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v10}, Lcom/android/internal/telephony/HtcExt1Record;->clear()V

    .line 419
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->mClearExt1Record:Z

    .line 514
    .end local v0           #adnString:[B
    :cond_3
    :goto_1
    return-object v0

    .line 424
    .restart local v0       #adnString:[B
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 425
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v6, :cond_5

    .line 426
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildAdnString] Max length of tag is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v0, 0x0

    goto :goto_1

    .line 430
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 431
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .line 444
    :goto_2
    if-eqz v2, :cond_6

    .line 445
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v2

    invoke-static {v2, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 452
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v8, 0x15

    .line 455
    .local v8, maxADNNumberLength:I
    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v8, :cond_f

    .line 456
    const-string v10, "GSM"

    const-string v11, "[buildAdnString] Max length of dailing number is 20"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 459
    .local v1, bcdNumber:[B
    if-eqz p1, :cond_e

    .line 460
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, ext1SubString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/HtcAdnRecord;->hasExtendedRecord()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 463
    iget v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    if-lez v10, :cond_7

    iget v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v10, v11, :cond_7

    .line 464
    add-int/lit8 v10, v6, 0xd

    iget v11, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 466
    iget v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/HtcExt1Record;

    .line 467
    .local v4, ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 485
    .end local v4           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    :cond_7
    add-int/lit8 v10, v6, 0xd

    iget v11, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 503
    .end local v5           #ext1SubString:Ljava/lang/String;
    :goto_4
    if-eqz v1, :cond_11

    .line 504
    const/4 v10, 0x0

    add-int/lit8 v11, v6, 0x1

    array-length v12, v1

    invoke-static {v1, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    add-int/lit8 v10, v6, 0x0

    array-length v11, v1

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 512
    .end local v1           #bcdNumber:[B
    .end local v8           #maxADNNumberLength:I
    :cond_8
    :goto_5
    add-int/lit8 v10, v6, 0xc

    const/4 v11, -0x1

    aput-byte v11, v0, v10

    goto/16 :goto_1

    .line 435
    :cond_9
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    const-string v11, "utf-16be"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 436
    .local v9, temp:[B
    array-length v10, v9

    add-int/lit8 v10, v10, 0x1

    new-array v2, v10, [B

    .line 437
    const/4 v10, 0x0

    const/16 v11, -0x80

    aput-byte v11, v2, v10

    .line 438
    const/4 v10, 0x0

    const/4 v11, 0x1

    array-length v12, v9

    invoke-static {v9, v10, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 439
    .end local v9           #temp:[B
    :catch_0
    move-exception v3

    .line 440
    .local v3, e1:Ljava/io/UnsupportedEncodingException;
    const-string v10, "GSM"

    const-string v11, "alphaTag encode failed!! "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 452
    .end local v3           #e1:Ljava/io/UnsupportedEncodingException;
    :cond_a
    const/16 v8, 0x14

    goto/16 :goto_3

    .line 470
    .restart local v1       #bcdNumber:[B
    .restart local v5       #ext1SubString:Ljava/lang/String;
    .restart local v8       #maxADNNumberLength:I
    :cond_b
    const/4 v4, 0x0

    .line 471
    .restart local v4       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_c

    .line 472
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v10}, Lcom/android/internal/telephony/HtcExt1Record;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 473
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    check-cast v4, Lcom/android/internal/telephony/HtcExt1Record;

    .line 474
    .restart local v4       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 475
    iget v10, v4, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    iput v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    .line 480
    :cond_c
    if-nez v4, :cond_7

    .line 481
    const-string v10, "GSM"

    const-string v11, "cannot find empty ext1 record "

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 471
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 487
    .end local v4           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v5           #ext1SubString:Ljava/lang/String;
    :cond_e
    const-string v10, "GSM"

    const-string v11, " EF-Ext1 does not exist"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 491
    .end local v1           #bcdNumber:[B
    :cond_f
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 492
    .restart local v1       #bcdNumber:[B
    if-eqz p1, :cond_10

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/telephony/HtcAdnRecord;->hasExtendedRecord()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 495
    iget v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    if-lez v10, :cond_10

    iget v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v10, v11, :cond_10

    .line 496
    iget v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v10}, Lcom/android/internal/telephony/HtcExt1Record;->clear()V

    .line 497
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->mClearExt1Record:Z

    .line 501
    :cond_10
    add-int/lit8 v10, v6, 0xd

    const/4 v11, -0x1

    aput-byte v11, v0, v10

    goto/16 :goto_4

    .line 507
    :cond_11
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/16 v10, 0x91

    :goto_7
    int-to-byte v10, v10

    aput-byte v10, v0, v6

    .line 508
    add-int/lit8 v10, v6, 0x0

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    goto/16 :goto_5

    .line 507
    :cond_12
    const/16 v10, 0x81

    goto :goto_7
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 379
    iget v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
