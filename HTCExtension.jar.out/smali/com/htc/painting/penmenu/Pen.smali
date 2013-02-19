.class public Lcom/htc/painting/penmenu/Pen;
.super Ljava/lang/Object;
.source "Pen.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Pen"

.field private static final SEPARATOR_TOKEN:Ljava/lang/String; = ","

.field public static final SN_NEW_PEN:I = -0x1


# instance fields
.field private mCap:Landroid/graphics/Paint$Cap;

.field private mColor:I

.field private mHistorySeqNo:I

.field private mIsUsed:Z

.field private mSizeId:I

.field private mType:I

.field private mUniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v2, p0, Lcom/htc/painting/penmenu/Pen;->mColor:I

    .line 38
    iput v1, p0, Lcom/htc/painting/penmenu/Pen;->mSizeId:I

    .line 43
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/htc/painting/penmenu/Pen;->mCap:Landroid/graphics/Paint$Cap;

    .line 49
    iput v1, p0, Lcom/htc/painting/penmenu/Pen;->mType:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/painting/penmenu/Pen;->mUniqueName:Ljava/lang/String;

    .line 60
    iput-boolean v2, p0, Lcom/htc/painting/penmenu/Pen;->mIsUsed:Z

    .line 65
    iput v1, p0, Lcom/htc/painting/penmenu/Pen;->mHistorySeqNo:I

    .line 68
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 3
    .parameter "color"
    .parameter "sizeId"
    .parameter "uniqueName"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v2, p0, Lcom/htc/painting/penmenu/Pen;->mColor:I

    .line 38
    iput v1, p0, Lcom/htc/painting/penmenu/Pen;->mSizeId:I

    .line 43
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/htc/painting/penmenu/Pen;->mCap:Landroid/graphics/Paint$Cap;

    .line 49
    iput v1, p0, Lcom/htc/painting/penmenu/Pen;->mType:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/painting/penmenu/Pen;->mUniqueName:Ljava/lang/String;

    .line 60
    iput-boolean v2, p0, Lcom/htc/painting/penmenu/Pen;->mIsUsed:Z

    .line 65
    iput v1, p0, Lcom/htc/painting/penmenu/Pen;->mHistorySeqNo:I

    .line 71
    iput p1, p0, Lcom/htc/painting/penmenu/Pen;->mColor:I

    .line 72
    iput p2, p0, Lcom/htc/painting/penmenu/Pen;->mSizeId:I

    .line 73
    iput-object p3, p0, Lcom/htc/painting/penmenu/Pen;->mUniqueName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static parseString(Ljava/lang/String;)Lcom/htc/painting/penmenu/Pen;
    .locals 11
    .parameter "penString"

    .prologue
    const/4 v5, 0x0

    .line 104
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 105
    :cond_0
    const-string v8, "Pen"

    const-string v9, "parseString - null or empty string!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return-object v5

    .line 113
    :cond_1
    const/4 v6, 0x0

    .line 114
    .local v6, sizeId:I
    const/4 v0, 0x0

    .line 115
    .local v0, color:I
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, strArray:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 117
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_3

    .line 118
    aget-object v4, v7, v2

    .line 120
    .local v4, part:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 121
    .local v3, number:I
    packed-switch v2, :pswitch_data_0

    .line 117
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :pswitch_0
    move v6, v3

    .line 124
    goto :goto_2

    .line 126
    :pswitch_1
    move v0, v3

    goto :goto_2

    .line 130
    .end local v3           #number:I
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v8, "Pen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseString exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #i:I
    .end local v4           #part:Ljava/lang/String;
    :cond_2
    const-string v8, "Pen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseString - error format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .restart local v2       #i:I
    :cond_3
    new-instance v5, Lcom/htc/painting/penmenu/Pen;

    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v7, v8

    invoke-direct {v5, v0, v6, v8}, Lcom/htc/painting/penmenu/Pen;-><init>(IILjava/lang/String;)V

    .line 145
    .local v5, ret:Lcom/htc/painting/penmenu/Pen;
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clone()Lcom/htc/painting/penmenu/Pen;
    .locals 4

    .prologue
    .line 362
    new-instance v0, Lcom/htc/painting/penmenu/Pen;

    iget v1, p0, Lcom/htc/painting/penmenu/Pen;->mColor:I

    iget v2, p0, Lcom/htc/painting/penmenu/Pen;->mSizeId:I

    iget-object v3, p0, Lcom/htc/painting/penmenu/Pen;->mUniqueName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/painting/penmenu/Pen;-><init>(IILjava/lang/String;)V

    .line 363
    .local v0, ret:Lcom/htc/painting/penmenu/Pen;
    iget v1, p0, Lcom/htc/painting/penmenu/Pen;->mType:I

    iput v1, v0, Lcom/htc/painting/penmenu/Pen;->mType:I

    .line 364
    iget v1, p0, Lcom/htc/painting/penmenu/Pen;->mHistorySeqNo:I

    iput v1, v0, Lcom/htc/painting/penmenu/Pen;->mHistorySeqNo:I

    .line 365
    iget-boolean v1, p0, Lcom/htc/painting/penmenu/Pen;->mIsUsed:Z

    iput-boolean v1, v0, Lcom/htc/painting/penmenu/Pen;->mIsUsed:Z

    .line 366
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/Pen;->clone()Lcom/htc/painting/penmenu/Pen;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 403
    if-ne p0, p1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v1

    .line 405
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 406
    goto :goto_0

    .line 407
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 408
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 409
    check-cast v0, Lcom/htc/painting/penmenu/Pen;

    .line 411
    .local v0, other:Lcom/htc/painting/penmenu/Pen;
    iget v3, p0, Lcom/htc/painting/penmenu/Pen;->mColor:I

    iget v4, v0, Lcom/htc/painting/penmenu/Pen;->mColor:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 412
    goto :goto_0

    .line 414
    :cond_4
    iget v3, p0, Lcom/htc/painting/penmenu/Pen;->mSizeId:I

    iget v4, v0, Lcom/htc/painting/penmenu/Pen;->mSizeId:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 415
    goto :goto_0

    .line 417
    :cond_5
    iget-object v3, p0, Lcom/htc/painting/penmenu/Pen;->mUniqueName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 418
    iget-object v3, v0, Lcom/htc/painting/penmenu/Pen;->mUniqueName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 419
    goto :goto_0

    .line 420
    :cond_6
    iget-object v3, p0, Lcom/htc/painting/penmenu/Pen;->mUniqueName:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/painting/penmenu/Pen;->mUniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 421
    goto :goto_0
.end method

.method public getCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/htc/painting/penmenu/Pen;->mCap:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/htc/painting/penmenu/Pen;->mColor:I

    return v0
.end method

.method public getHistorySeqNo()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/htc/painting/penmenu/Pen;->mHistorySeqNo:I

    return v0
.end method

.method public getSizeId()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/htc/painting/penmenu/Pen;->mSizeId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/htc/painting/penmenu/Pen;->mType:I

    return v0
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/painting/penmenu/Pen;->mUniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 389
    const/16 v0, 0x1f

    .line 390
    .local v0, prime:I
    const/4 v1, 0x1

    .line 391
    .local v1, result:I
    iget v2, p0, Lcom/htc/painting/penmenu/Pen;->mColor:I

    add-int/lit8 v1, v2, 0x1f

    .line 392
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/htc/painting/penmenu/Pen;->mSizeId:I

    add-int v1, v2, v3

    .line 393
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/htc/painting/penmenu/Pen;->mUniqueName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 394
    return v1

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/htc/painting/penmenu/Pen;->mUniqueName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isFromHistory()Z
    .locals 2

    .prologue
    .line 274
    iget v0, p0, Lcom/htc/painting/penmenu/Pen;->mHistorySeqNo:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsed()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/Pen;->mIsUsed:Z

    return v0
.end method

.method public refreshHistorySeqNo()I
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/htc/painting/penmenu/history/HistoryQueue;->getNewHistorySN()I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/Pen;->mHistorySeqNo:I

    .line 288
    iget v0, p0, Lcom/htc/painting/penmenu/Pen;->mHistorySeqNo:I

    return v0
.end method

.method public set(Lcom/htc/painting/penmenu/Pen;)V
    .locals 1
    .parameter "pen"

    .prologue
    .line 374
    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/Pen;->setColor(I)V

    .line 376
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getSizeId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/Pen;->setSizeId(I)V

    .line 377
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/Pen;->setType(I)V

    .line 378
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->isUsed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/Pen;->setUsed(Z)V

    .line 379
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getHistorySeqNo()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/Pen;->setHistorySeqNo(I)V

    .line 381
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 184
    iget v0, p0, Lcom/htc/painting/penmenu/Pen;->mColor:I

    if-eq v0, p1, :cond_0

    .line 185
    iput p1, p0, Lcom/htc/painting/penmenu/Pen;->mColor:I

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/penmenu/Pen;->mHistorySeqNo:I

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/Pen;->mIsUsed:Z

    .line 189
    :cond_0
    return-void
.end method

.method public setHistorySeqNo(I)V
    .locals 0
    .parameter "seqNo"

    .prologue
    .line 314
    iput p1, p0, Lcom/htc/painting/penmenu/Pen;->mHistorySeqNo:I

    .line 315
    return-void
.end method

.method public setSizeId(I)V
    .locals 1
    .parameter "sizeId"

    .prologue
    .line 214
    iget v0, p0, Lcom/htc/painting/penmenu/Pen;->mSizeId:I

    if-eq v0, p1, :cond_0

    .line 215
    iput p1, p0, Lcom/htc/painting/penmenu/Pen;->mSizeId:I

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/penmenu/Pen;->mHistorySeqNo:I

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/Pen;->mIsUsed:Z

    .line 219
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 244
    iget v0, p0, Lcom/htc/painting/penmenu/Pen;->mType:I

    if-eq v0, p1, :cond_0

    .line 245
    iput p1, p0, Lcom/htc/painting/penmenu/Pen;->mType:I

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/penmenu/Pen;->mHistorySeqNo:I

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/Pen;->mIsUsed:Z

    .line 249
    :cond_0
    return-void
.end method

.method public setUniqueName(Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueName"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/htc/painting/penmenu/Pen;->mUniqueName:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setUsed(Z)V
    .locals 0
    .parameter "isUsed"

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/Pen;->mIsUsed:Z

    .line 328
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/htc/painting/penmenu/Pen;->mSizeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/painting/penmenu/Pen;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/painting/penmenu/Pen;->mUniqueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
