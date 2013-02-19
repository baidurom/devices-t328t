.class public Lcom/android/internal/telephony/AnrRecord;
.super Ljava/lang/Object;
.source "AnrRecord.java"


# static fields
.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_ANR_NUMBER_LENGTH:I = 0xa

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa


# instance fields
.field mAdnRecordNumber:I

.field mAdnSFI:I

.field mAnrId:I

.field mClearExt1Record:Z

.field mExtRecord:I

.field mNumber:Ljava/lang/String;

.field mRecordNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 427
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 420
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 429
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "adnSFI"
    .parameter "recordNumber"
    .parameter "number"

    .prologue
    .line 455
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 420
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 456
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 457
    iput p2, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    .line 458
    iput-object p3, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    .line 440
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 420
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 441
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    .line 442
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/AnrRecord;->parseRecord([B)V

    .line 443
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1
    .parameter "recordNumber"
    .parameter "record"
    .parameter "isIAP"

    .prologue
    .line 447
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 420
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 448
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    .line 449
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/AnrRecord;->parseRecord(I[BZ)V

    .line 450
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    .line 435
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/AnrRecord;-><init>(I[B)V

    .line 436
    return-void
.end method

.method private parseRecord(I[BZ)V
    .locals 5
    .parameter "recordNumber"
    .parameter "record"
    .parameter "AnrPresentInIAP"

    .prologue
    .line 815
    const-string v2, "GSM"

    const-string v3, "parseRecord()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v1, 0x0

    .line 819
    .local v1, offset:I
    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 822
    const/4 v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v0, v2, 0xff

    .line 825
    .local v0, numberLength:I
    const/4 v2, 0x2

    invoke-static {p2, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 828
    const/16 v2, 0xe

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 830
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mExtRecord = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    if-eqz p3, :cond_1

    .line 834
    array-length v2, p2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 836
    const/16 v2, 0xf

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 838
    const/16 v2, 0x10

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 844
    :cond_0
    :goto_0
    const-string v2, "AnrRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAnrId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string v2, "AnrRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const-string v2, "AnrRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mExtRecord = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v2, "AnrRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAdnSFI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const-string v2, "AnrRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAdnRecordNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void

    .line 841
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    goto/16 :goto_0
.end method

.method private parseRecord([B)V
    .locals 5
    .parameter "record"

    .prologue
    .line 858
    const/4 v1, 0x0

    .line 859
    .local v1, offset:I
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 862
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    .line 865
    .local v0, numberLength:I
    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 868
    const/16 v2, 0xe

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 871
    const/16 v2, 0xf

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 874
    const/16 v2, 0x10

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 876
    const-string v2, "AnrRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAnrId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const-string v2, "AnrRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const-string v2, "AnrRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mExtRecord = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-string v2, "AnrRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAdnSFI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string v2, "AnrRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAdnRecordNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return-void
.end method


# virtual methods
.method public appendExtNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 477
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 487
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAnrString(Ljava/util/ArrayList;I)[B
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
    .local p1, ext1List:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v11, 0xff

    const/4 v10, 0x1

    .line 529
    new-array v6, p2, [B

    .line 532
    .local v6, recordString:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 533
    const/4 v7, -0x1

    aput-byte v7, v6, v3

    .line 532
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 537
    :cond_0
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    if-lez v7, :cond_d

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    if-ge v7, v11, :cond_d

    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 540
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v12

    .line 542
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    const-string v9, "+"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v5, 0x15

    .line 546
    .local v5, maxAnrNumberLength:I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v5, :cond_6

    .line 548
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 550
    .local v0, bcdNumber:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 552
    if-eqz p1, :cond_1

    .line 553
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 554
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->clear()V

    .line 555
    iput-boolean v10, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 609
    :cond_1
    :goto_2
    array-length v7, v0

    int-to-byte v7, v7

    aput-byte v7, v6, v10

    .line 612
    const/4 v7, 0x2

    array-length v8, v0

    invoke-static {v0, v12, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 614
    iget-boolean v7, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    if-eq v7, v10, :cond_2

    .line 616
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_2

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-ge v7, v11, :cond_2

    .line 618
    const/16 v7, 0xe

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 624
    :cond_2
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    if-lez v7, :cond_3

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    if-ge v7, v11, :cond_3

    .line 626
    const/16 v7, 0xf

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 630
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-ge v7, v11, :cond_4

    .line 632
    const/16 v7, 0x10

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 650
    .end local v0           #bcdNumber:[B
    .end local v5           #maxAnrNumberLength:I
    .end local v6           #recordString:[B
    :cond_4
    :goto_3
    return-object v6

    .line 542
    .restart local v6       #recordString:[B
    :cond_5
    const/16 v5, 0x14

    goto :goto_1

    .line 562
    .restart local v5       #maxAnrNumberLength:I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 565
    .restart local v0       #bcdNumber:[B
    if-eqz p1, :cond_c

    .line 566
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, ext1SubString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 568
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 570
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/HtcExt1Record;

    .line 571
    .local v1, ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    goto :goto_2

    .line 576
    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    :cond_7
    const/4 v1, 0x0

    .line 578
    .restart local v1       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSIMPhonebookbyIccIO()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 579
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 580
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 581
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/HtcExt1Record;

    .line 582
    .restart local v1       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 583
    iget v7, v1, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    iput v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 599
    :cond_8
    :goto_5
    if-nez v1, :cond_1

    move-object v6, v8

    .line 600
    goto :goto_3

    .line 579
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 588
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 589
    .local v4, j:I
    move v3, v4

    :goto_6
    if-ltz v3, :cond_8

    .line 590
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 591
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/HtcExt1Record;

    .line 592
    .restart local v1       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 593
    iget v7, v1, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    iput v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    goto :goto_5

    .line 589
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v2           #ext1SubString:Ljava/lang/String;
    .end local v4           #j:I
    :cond_c
    move-object v6, v8

    .line 604
    goto/16 :goto_3

    .line 639
    .end local v0           #bcdNumber:[B
    .end local v5           #maxAnrNumberLength:I
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 641
    if-eqz p1, :cond_4

    .line 642
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_4

    .line 643
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->clear()V

    .line 644
    iput-boolean v10, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    goto/16 :goto_3
.end method

.method public buildAnrString(Ljava/util/ArrayList;IZ)[B
    .locals 10
    .parameter
    .parameter "recordSize"
    .parameter "AnrPresentInIAP"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;IZ)[B"
        }
    .end annotation

    .prologue
    .line 661
    .local p1, ext1List:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    const-string v7, "GSM"

    const-string v8, "buildAnrString()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-array v6, p2, [B

    .line 665
    .local v6, recordString:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 666
    const/4 v7, -0x1

    aput-byte v7, v6, v3

    .line 665
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 669
    :cond_0
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    if-lez v7, :cond_d

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_d

    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 672
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 674
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v5, 0x15

    .line 678
    .local v5, maxAnrNumberLength:I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v5, :cond_6

    .line 680
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 682
    .local v0, bcdNumber:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 684
    if-eqz p1, :cond_1

    .line 685
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExtRecord_1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 687
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->clear()V

    .line 688
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 745
    :cond_1
    :goto_2
    const/4 v7, 0x1

    array-length v8, v0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 748
    const/4 v7, 0x0

    const/4 v8, 0x2

    array-length v9, v0

    invoke-static {v0, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 749
    iget-boolean v7, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 751
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_2

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_2

    .line 753
    const/16 v7, 0xe

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 754
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recordString[14] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xe

    aget-byte v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_2
    const/4 v7, 0x1

    if-ne p3, v7, :cond_4

    const/16 v7, 0x11

    if-lt p2, v7, :cond_4

    .line 761
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    if-lez v7, :cond_3

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_3

    .line 763
    const/16 v7, 0xf

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 767
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_4

    .line 769
    const/16 v7, 0x10

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 790
    .end local v0           #bcdNumber:[B
    .end local v5           #maxAnrNumberLength:I
    .end local v6           #recordString:[B
    :cond_4
    :goto_3
    return-object v6

    .line 674
    .restart local v6       #recordString:[B
    :cond_5
    const/16 v5, 0x14

    goto/16 :goto_1

    .line 695
    .restart local v5       #maxAnrNumberLength:I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 698
    .restart local v0       #bcdNumber:[B
    if-eqz p1, :cond_c

    .line 699
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 700
    .local v2, ext1SubString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 701
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExtRecord_2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 704
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/HtcExt1Record;

    .line 705
    .local v1, ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 710
    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    :cond_7
    const/4 v1, 0x0

    .line 712
    .restart local v1       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSIMPhonebookbyIccIO()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 713
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 714
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 715
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/HtcExt1Record;

    .line 716
    .restart local v1       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 717
    iget v7, v1, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    iput v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 734
    :cond_8
    :goto_5
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExtRecord_3 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    if-nez v1, :cond_1

    .line 736
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 713
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 722
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 723
    .local v4, j:I
    move v3, v4

    :goto_6
    if-ltz v3, :cond_8

    .line 724
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 725
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/HtcExt1Record;

    .line 726
    .restart local v1       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 727
    iget v7, v1, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    iput v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    goto :goto_5

    .line 723
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 740
    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v2           #ext1SubString:Ljava/lang/String;
    .end local v4           #j:I
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 777
    .end local v0           #bcdNumber:[B
    .end local v5           #maxAnrNumberLength:I
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 779
    if-eqz p1, :cond_4

    .line 780
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_4

    .line 781
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExtRecord_4 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->clear()V

    .line 784
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    goto/16 :goto_3
.end method

.method public clear()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 517
    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 518
    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 519
    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 520
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 467
    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

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
    .line 798
    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-nez v0, :cond_1

    .line 800
    :cond_0
    const/4 v0, 0x1

    .line 802
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
