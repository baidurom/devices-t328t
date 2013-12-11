.class public Lcom/android/internal/telephony/UIDRecord;
.super Ljava/lang/Object;
.source "UIDRecord.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UIDRecord"


# instance fields
.field mRecordData:[B

.field mRecordNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 267
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 269
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    .line 275
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput p1, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    .line 277
    iput-object p2, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    .line 278
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/UIDRecord;-><init>(I[B)V

    .line 273
    return-void
.end method


# virtual methods
.method public buildUIDString(I)[B
    .locals 5
    .parameter "recordSize"

    .prologue
    const/4 v4, 0x0

    .line 303
    new-array v1, p1, [B

    .line 305
    .local v1, recordString:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 306
    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    const/16 v3, 0xff

    if-ge v2, v3, :cond_1

    .line 310
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    iget-object v3, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    const-string v2, "UIDRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uidRecord.mRecordNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 317
    const-string v2, "UIDRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uidRecord.mRecordData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    aget-byte v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 322
    :cond_1
    return-object v1
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    return-object v0
.end method
