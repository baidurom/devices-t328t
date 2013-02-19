.class public Lcom/android/internal/telephony/SimIdentify;
.super Landroid/os/Handler;
.source "SimIdentify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;
    }
.end annotation


# static fields
.field protected static final ALLREAD_MCC_MNC:Ljava/lang/String; = "46099"

.field protected static final APBW_MCC_MNC:Ljava/lang/String; = "46605"

.field protected static final CDMA_MCC_MNC:Ljava/lang/String; = "46003"

.field protected static final CHINA_MCC:Ljava/lang/String; = "460"

.field public static DBG:Z = false

.field protected static final EVENT_READ_CDMA_IMSI_DONE:I = 0x1

.field protected static final EVENT_READ_GSM_IMSI_DONE:I = 0x2

.field protected static final GSM_MCC_MNC:Ljava/lang/String; = "46001"

.field public static final SIM_TYPE_ALL_READ:I = 0x3

.field public static final SIM_TYPE_INVALID:I = -0x1

.field public static final SIM_TYPE_RUIM:I = 0x0

.field public static final SIM_TYPE_SIM:I = 0x1

.field public static final SIM_TYPE_TELECOM_DUALMODE:I = 0x4

.field public static final SIM_TYPE_UNICOM_DUALMODE:I = 0x2

.field public static final SIM_TYPE_UNKNOWN_DUALSIM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SimIdentify"

.field public static TEST:Z

.field private static testNum:I


# instance fields
.field protected mCIMSIDone:Z

.field protected mCallback:Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;

.field protected mCdmaImsi:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mGIMSIDone:Z

.field protected mGsmImsi:Ljava/lang/String;

.field protected mIccFh:Lcom/android/internal/telephony/IccFileHandler;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mSimType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SimIdentify;->DBG:Z

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/SimIdentify;->TEST:Z

    .line 57
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/telephony/SimIdentify;->testNum:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;)V
    .locals 3
    .parameter "phone"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    .line 78
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimIdentify;->mCIMSIDone:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimIdentify;->mGIMSIDone:Z

    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/SimIdentify;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 107
    iput-object p2, p0, Lcom/android/internal/telephony/SimIdentify;->mCallback:Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 109
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mContext:Landroid/content/Context;

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f22

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f07

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 113
    return-void
.end method

.method private bcdToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 463
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int v3, p2, p3

    if-ge v0, v3, :cond_0

    .line 467
    aget-byte v3, p1, v0

    and-int/lit8 v2, v3, 0xf

    .line 468
    .local v2, v:I
    if-le v2, v4, :cond_1

    .line 476
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 469
    .restart local v2       #v:I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    aget-byte v3, p1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 472
    if-gt v2, v4, :cond_0

    .line 473
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private byteArrToHex([B)Ljava/lang/String;
    .locals 4
    .parameter "ba"

    .prologue
    .line 266
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 267
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SimIdentify;->byteToHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_0
    return-object v1
.end method

.method private byteToHex(B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v1, sb:Ljava/lang/StringBuilder;
    and-int/lit16 v0, p1, 0xff

    .line 260
    .local v0, bi:I
    const-string v2, "0123456789ABCDEF"

    shr-int/lit8 v3, v0, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    const-string v2, "0123456789ABCDEF"

    and-int/lit8 v3, v0, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private genCDMAImsi([B)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    .line 431
    if-eqz p1, :cond_0

    array-length v6, p1

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    .line 432
    :cond_0
    const-string v6, "SimIdentify"

    const-string v7, "Invalid CDMA IMSI"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    return-void

    .line 436
    :cond_1
    const-string v6, "SimIdentify"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimIdentify;->byteArrToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v6, 0x7

    aget-byte v0, p1, v6

    .line 439
    .local v0, addrNum:B
    and-int/lit16 v6, v0, 0x80

    if-nez v6, :cond_2

    .line 440
    const-string v6, "SimIdentify"

    const-string v7, "CDMA IMSI not programmed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 446
    .local v5, str:Ljava/lang/String;
    aget-byte v6, p1, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, p1, v10

    and-int/lit16 v7, v7, 0xff

    or-int v4, v6, v7

    .line 447
    .local v4, s2:I
    const/4 v6, 0x5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    const/4 v7, 0x4

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v3, v6, v7

    .line 448
    .local v3, s1:I
    const/4 v6, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v2, v6, 0xff

    .line 449
    .local v2, mnc:I
    const/16 v6, 0x9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v1, v6, v7

    .line 451
    .local v1, mcc:I
    const-string v6, "%03d%02d"

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimIdentify;->genCDMAMcc(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->genCDMAMnc(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/SimIdentify;->genCDMAMinStr(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    .line 453
    const-string v6, "SimIdentify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CDMA IMSI: ori(mcc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mnc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " s1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " s2 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", imsi "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private genCDMAMcc(I)I
    .locals 7
    .parameter "mcc"

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, d1:I
    const/4 v1, 0x0

    .line 276
    .local v1, d2:I
    const/4 v2, 0x0

    .line 277
    .local v2, d3:I
    const/4 v3, 0x0

    .line 279
    .local v3, t:I
    add-int/lit8 v3, p1, 0x6f

    .line 281
    rem-int/lit8 v2, v3, 0xa

    .line 282
    div-int/lit8 v3, v3, 0xa

    .line 283
    if-nez v2, :cond_0

    .line 284
    add-int/lit8 v3, v3, -0x1

    .line 287
    :cond_0
    rem-int/lit8 v1, v3, 0xa

    .line 288
    div-int/lit8 v3, v3, 0xa

    .line 289
    if-nez v1, :cond_1

    .line 290
    add-int/lit8 v3, v3, -0x1

    .line 293
    :cond_1
    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 294
    const/4 v0, 0x0

    .line 299
    :goto_0
    mul-int/lit8 v4, v0, 0x64

    mul-int/lit8 v5, v1, 0xa

    add-int/2addr v4, v5

    add-int v3, v4, v2

    .line 301
    const-string v4, "SimIdentify"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDMA MCC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v3

    .line 297
    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private genCDMAMinStr(II)Ljava/lang/String;
    .locals 10
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/16 v7, 0xa

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, first_3_digits:I
    const/4 v2, 0x0

    .line 334
    .local v2, second_3_digits:I
    const/4 v5, 0x0

    .line 335
    .local v5, thousands_digit:I
    const/4 v1, 0x0

    .line 337
    .local v1, last_3_digits:I
    const/4 v4, 0x0

    .line 338
    .local v4, temp1:I
    const/4 v3, 0x0

    .line 341
    .local v3, temp:I
    and-int/lit16 v0, p2, 0x3ff

    .line 342
    ushr-int/lit8 v6, p1, 0xe

    and-int/lit16 v2, v6, 0x3ff

    .line 343
    ushr-int/lit8 v6, p1, 0xa

    and-int/lit8 v5, v6, 0xf

    .line 344
    and-int/lit16 v1, p1, 0x3ff

    .line 348
    move v3, v0

    .line 349
    div-int/lit8 v4, v3, 0x64

    .line 350
    add-int/lit8 v4, v4, 0x1

    .line 351
    if-ne v4, v7, :cond_0

    .line 352
    const/4 v4, 0x0

    .line 353
    :cond_0
    rem-int/lit8 v3, v3, 0x64

    .line 354
    mul-int/lit8 v0, v4, 0x64

    .line 356
    div-int/lit8 v4, v3, 0xa

    .line 357
    add-int/lit8 v4, v4, 0x1

    .line 358
    if-ne v4, v7, :cond_1

    .line 359
    const/4 v4, 0x0

    .line 360
    :cond_1
    rem-int/lit8 v3, v3, 0xa

    .line 361
    mul-int/lit8 v6, v4, 0xa

    add-int/2addr v0, v6

    .line 363
    move v4, v3

    .line 364
    add-int/lit8 v4, v4, 0x1

    .line 365
    if-ne v4, v7, :cond_2

    .line 366
    const/4 v4, 0x0

    .line 367
    :cond_2
    add-int/2addr v0, v4

    .line 370
    move v3, v2

    .line 371
    div-int/lit8 v4, v3, 0x64

    .line 372
    add-int/lit8 v4, v4, 0x1

    .line 373
    if-ne v4, v7, :cond_3

    .line 374
    const/4 v4, 0x0

    .line 375
    :cond_3
    rem-int/lit8 v3, v3, 0x64

    .line 376
    mul-int/lit8 v2, v4, 0x64

    .line 378
    div-int/lit8 v4, v3, 0xa

    .line 379
    add-int/lit8 v4, v4, 0x1

    .line 380
    if-ne v4, v7, :cond_4

    .line 381
    const/4 v4, 0x0

    .line 382
    :cond_4
    rem-int/lit8 v3, v3, 0xa

    .line 383
    mul-int/lit8 v6, v4, 0xa

    add-int/2addr v2, v6

    .line 385
    move v4, v3

    .line 386
    add-int/lit8 v4, v4, 0x1

    .line 387
    if-ne v4, v7, :cond_5

    .line 388
    const/4 v4, 0x0

    .line 389
    :cond_5
    add-int/2addr v2, v4

    .line 392
    rem-int/lit8 v5, v5, 0xa

    .line 394
    move v3, v1

    .line 396
    div-int/lit8 v4, v3, 0x64

    .line 397
    add-int/lit8 v4, v4, 0x1

    .line 398
    if-ne v4, v7, :cond_6

    .line 399
    const/4 v4, 0x0

    .line 400
    :cond_6
    rem-int/lit8 v3, v3, 0x64

    .line 401
    mul-int/lit8 v1, v4, 0x64

    .line 403
    div-int/lit8 v4, v3, 0xa

    .line 404
    add-int/lit8 v4, v4, 0x1

    .line 405
    if-ne v4, v7, :cond_7

    .line 406
    const/4 v4, 0x0

    .line 407
    :cond_7
    rem-int/lit8 v3, v3, 0xa

    .line 408
    mul-int/lit8 v6, v4, 0xa

    add-int/2addr v1, v6

    .line 410
    move v4, v3

    .line 411
    add-int/lit8 v4, v4, 0x1

    .line 412
    if-ne v4, v7, :cond_8

    .line 413
    const/4 v4, 0x0

    .line 414
    :cond_8
    add-int/2addr v1, v4

    .line 416
    const-string v6, "SimIdentify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MIN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v6, "%03d%03d%01d%03d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private genCDMAMnc(I)I
    .locals 6
    .parameter "mnc"

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, d1:I
    const/4 v1, 0x0

    .line 309
    .local v1, d2:I
    const/4 v2, 0x0

    .line 311
    .local v2, t:I
    add-int/lit8 v2, p1, 0xb

    .line 312
    rem-int/lit8 v1, v2, 0xa

    .line 313
    div-int/lit8 v2, v2, 0xa

    .line 314
    if-nez v1, :cond_0

    .line 315
    add-int/lit8 v2, v2, -0x1

    .line 318
    :cond_0
    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 319
    const/4 v0, 0x0

    .line 325
    :goto_0
    mul-int/lit8 v3, v0, 0xa

    add-int v2, v3, v1

    .line 326
    const-string v3, "SimIdentify"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA MNC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return v2

    .line 322
    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private genGSMImsi([B)V
    .locals 4
    .parameter "data"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 482
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    if-ne v0, v3, :cond_0

    array-length v0, p1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 483
    :cond_0
    const-string v0, "SimIdentify"

    const-string v1, "Invalid GSM IMSI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_0
    return-void

    .line 487
    :cond_1
    const-string v0, "SimIdentify"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimIdentify;->byteArrToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-direct {p0, p1, v2, v3}, Lcom/android/internal/telephony/SimIdentify;->bcdToString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    .line 490
    const-string v0, "SimIdentify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSM IMSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hexCharToInt(C)I
    .locals 1
    .parameter "c"

    .prologue
    .line 233
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x30

    .line 237
    :goto_0
    return v0

    .line 234
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 235
    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x66

    if-gt p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 237
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 243
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 254
    :cond_0
    return-object v1

    .line 245
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 247
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 249
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 250
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SimIdentify;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SimIdentify;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 249
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private notifyClient()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 507
    iget-boolean v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCIMSIDone:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/SimIdentify;->mGIMSIDone:Z

    if-nez v2, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 511
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    .line 542
    :goto_1
    const-string v2, "SimIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCallback:Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCallback:Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;->onIdentifyDone(Lcom/android/internal/telephony/SimIdentify;)V

    goto :goto_0

    .line 513
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 514
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto :goto_1

    .line 516
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 517
    iput v4, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto :goto_1

    .line 521
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, cdmaMccMnc:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, gsmMccMnc:Ljava/lang/String;
    const-string v2, "46605"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 526
    iput v4, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto :goto_1

    .line 527
    :cond_5
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 528
    iput v3, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto :goto_1

    .line 529
    :cond_6
    const-string v2, "46001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 530
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto :goto_1

    .line 531
    :cond_7
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "460"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 532
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto :goto_1

    .line 533
    :cond_8
    const-string v2, "46099"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 536
    :cond_9
    iput v5, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto/16 :goto_1

    .line 538
    :cond_a
    iput v4, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto/16 :goto_1
.end method

.method private queryInITUList(Ljava/lang/String;)Z
    .locals 1
    .parameter "mccmnc"

    .prologue
    .line 502
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getCDMAImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 133
    const-string v0, ""

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGSMImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 148
    const-string v0, ""

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSimType()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 160
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 163
    .local v0, ar:Landroid/os/AsyncResult;
    iput-boolean v3, p0, Lcom/android/internal/telephony/SimIdentify;->mCIMSIDone:Z

    .line 166
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 167
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->genCDMAImsi([B)V

    .line 171
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SimIdentify;->notifyClient()V

    goto :goto_0

    .line 169
    :cond_0
    const-string v2, "SimIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_READ_CDMA_IMSI_DONE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 175
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 176
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iput-boolean v3, p0, Lcom/android/internal/telephony/SimIdentify;->mGIMSIDone:Z

    .line 178
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 179
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->genGSMImsi([B)V

    .line 220
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SimIdentify;->notifyClient()V

    goto :goto_0

    .line 181
    :cond_2
    const-string v2, "SimIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_READ_GSM_IMSI_DONE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-boolean v2, Lcom/android/internal/telephony/SimIdentify;->TEST:Z

    if-eqz v2, :cond_1

    .line 185
    const-string v2, "SimIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/SimIdentify;->testNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget v2, Lcom/android/internal/telephony/SimIdentify;->testNum:I

    packed-switch v2, :pswitch_data_1

    goto :goto_2

    .line 188
    :pswitch_2
    const-string v2, "084906102143658709"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 189
    .local v1, imsi:[B
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimIdentify;->genGSMImsi([B)V

    .line 190
    const-string v2, "SimIdentify"

    const-string v3, "Expect 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 193
    .end local v1           #imsi:[B
    :pswitch_3
    const-string v2, "084906992143658709"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 194
    .restart local v1       #imsi:[B
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimIdentify;->genGSMImsi([B)V

    .line 195
    const-string v2, "SimIdentify"

    const-string v3, "Expect 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 198
    .end local v1           #imsi:[B
    :pswitch_4
    const-string v2, "084906306614335259"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 199
    .restart local v1       #imsi:[B
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimIdentify;->genGSMImsi([B)V

    .line 200
    const-string v2, "SimIdentify"

    const-string v3, "Expect 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 203
    .end local v1           #imsi:[B
    :pswitch_5
    const-string v2, "080000006614335259"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 204
    .restart local v1       #imsi:[B
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimIdentify;->genGSMImsi([B)V

    .line 205
    const-string v2, "SimIdentify"

    const-string v3, "Expect 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 208
    .end local v1           #imsi:[B
    :pswitch_6
    const-string v2, "084921102143658709"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 209
    .restart local v1       #imsi:[B
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimIdentify;->genGSMImsi([B)V

    .line 210
    const-string v2, "SimIdentify"

    const-string v3, "Expect 4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 186
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
