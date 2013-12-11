.class public final Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;
.super Ljava/lang/Object;
.source "HtcCdmaCBMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;
    }
.end annotation


# static fields
.field static final CBHEAD_LEN:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "Cell broadcast"

.field static final MAX_CHANNELS:I = 0x14

.field static final MAX_DATE_LEN:I = 0x5d


# instance fields
.field CBmessageBody:Ljava/lang/String;

.field protected cb_msg:[B

.field protected dcs:I

.field protected gs:I

.field protected mDcs:Ljava/lang/String;

.field protected mMsgId:Ljava/lang/String;

.field mPdu:[B

.field messageClass:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

.field protected mode:Z

.field protected msg_id:I

.field protected msg_len:I

.field protected page:I

.field protected pages:I

.field protected septetCount:I

.field protected sn:I

.field protected updatenum:I

.field userData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static newFromCBM([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 107
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;-><init>()V

    .line 109
    .local v1, msg:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->parseCBPdu([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1           #msg:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, ex:Ljava/lang/Throwable;
    const-string v2, "Cell broadcast"

    const-string v3, "CB PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseCBPdu([B)V
    .locals 11
    .parameter "pdu"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 120
    const-string v3, "Cell broadcast"

    const-string v4, "2-parseCBPdu()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    array-length v3, p1

    add-int/lit8 v0, v3, -0x6

    .line 123
    .local v0, size:I
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    .line 124
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    aget-byte v4, v4, v9

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->sn:I

    .line 125
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->sn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xc0

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->gs:I

    .line 128
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->gs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    aget-byte v3, v3, v9

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->updatenum:I

    .line 131
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatenum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->updatenum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    if-gez v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    add-int/lit16 v3, v3, 0x100

    mul-int/lit16 v1, v3, 0x100

    .line 138
    .local v1, x:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    aget-byte v3, v3, v8

    if-gez v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    aget-byte v3, v3, v8

    add-int/lit16 v2, v3, 0x100

    .line 142
    .local v2, y:I
    :goto_1
    add-int v3, v1, v2

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->msg_id:I

    .line 143
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->msg_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    .line 146
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dcs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    aget-byte v3, v3, v10

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->page:I

    .line 149
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "page:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->page:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    aget-byte v3, v3, v10

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->pages:I

    .line 152
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total pages:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->pages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->cb_msg:[B

    .line 155
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->cb_msg:[B

    invoke-static {p1, v3, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->msg_len:I

    .line 157
    mul-int/lit8 v3, v0, 0x8

    div-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->septetCount:I

    .line 158
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "septetCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->septetCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->msg_len:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->parseCBUserData()Ljava/lang/String;

    .line 161
    return-void

    .line 137
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    mul-int/lit16 v1, v3, 0x100

    .restart local v1       #x:I
    goto/16 :goto_0

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    aget-byte v2, v3, v8

    .restart local v2       #y:I
    goto/16 :goto_1
.end method


# virtual methods
.method public getCBChannel()V
    .locals 3

    .prologue
    .line 329
    const-string v1, "Cell broadcast"

    const-string v2, "getCBChannel()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 332
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getCSCB()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCBMessageClass()Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->messageClass:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    return-object v0
.end method

.method public getCb_msg()[B
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->cb_msg:[B

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->page:I

    return v0
.end method

.method public getDcs()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    return v0
.end method

.method public getGs()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->gs:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->CBmessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg_id()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->msg_id:I

    return v0
.end method

.method public getMsg_len()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->msg_len:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->page:I

    return v0
.end method

.method public getPages()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->pages:I

    return v0
.end method

.method public getRowData()[B
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mPdu:[B

    return-object v0
.end method

.method public getSeptetCount()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->septetCount:I

    return v0
.end method

.method public getSn()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->sn:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->pages:I

    return v0
.end method

.method public getUpdatenum()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->updatenum:I

    return v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->cb_msg:[B

    return-object v0
.end method

.method public getmDcs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mDcs:Ljava/lang/String;

    return-object v0
.end method

.method public getmMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public isMode()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mode:Z

    return v0
.end method

.method public parseCBUserData()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    const/4 v9, 0x0

    .line 205
    .local v9, hasMessageClass:Z
    const/4 v12, 0x0

    .line 206
    .local v12, userDataCompressed:Z
    const/4 v7, 0x0

    .line 208
    .local v7, encodingType:I
    const-string v2, "Cell broadcast"

    const-string v3, "3-parseCBUserData()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    and-int/lit16 v2, v2, 0xf0

    if-nez v2, :cond_0

    .line 212
    const/4 v7, 0x1

    .line 260
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->getUserData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->userData:[B

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->userData:[B

    array-length v6, v0

    .line 263
    .local v6, count:I
    packed-switch v7, :pswitch_data_0

    .line 285
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->CBmessageBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 286
    .local v11, temp:Ljava/lang/String;
    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->CBmessageBody:Ljava/lang/String;

    .line 287
    const-string v0, "Cell broadcast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CB message body length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->CBmessageBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-nez v9, :cond_9

    .line 289
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->UNKNOWN:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->messageClass:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    .line 306
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->CBmessageBody:Ljava/lang/String;

    return-object v0

    .line 213
    .end local v6           #count:I
    .end local v11           #temp:Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 214
    const/4 v7, 0x1

    goto :goto_0

    .line 215
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2

    .line 216
    const/4 v7, 0x3

    goto :goto_0

    .line 217
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    and-int/lit8 v2, v2, 0x40

    if-ne v2, v0, :cond_6

    .line 219
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3

    move v12, v0

    .line 220
    :goto_3
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    move v9, v0

    .line 222
    :goto_4
    if-eqz v12, :cond_5

    .line 223
    const-string v0, "Cell broadcast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1- Unsupported CB data coding scheme (compression) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move v12, v1

    .line 219
    goto :goto_3

    :cond_4
    move v9, v1

    .line 220
    goto :goto_4

    .line 226
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 228
    :pswitch_0
    const/4 v7, 0x1

    .line 229
    goto/16 :goto_0

    .line 232
    :pswitch_1
    const/4 v7, 0x3

    .line 233
    goto/16 :goto_0

    .line 237
    :pswitch_2
    const-string v0, "Cell broadcast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2 - Unsupported CB data coding scheme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 243
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_8

    .line 244
    const/4 v9, 0x1

    .line 245
    const/4 v12, 0x0

    .line 247
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_7

    .line 249
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 252
    :cond_7
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 255
    :cond_8
    const-string v0, "Cell broadcast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3 - Unsupported CB data coding scheme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 266
    .restart local v6       #count:I
    :pswitch_3
    new-instance v10, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->userData:[B

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 267
    .local v10, strResult:Ljava/lang/String;
    iput-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->CBmessageBody:Ljava/lang/String;

    goto/16 :goto_1

    .line 271
    .end local v10           #strResult:Ljava/lang/String;
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->userData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->septetCount:I

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->CBmessageBody:Ljava/lang/String;

    goto/16 :goto_1

    .line 276
    :pswitch_5
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->userData:[B

    const/4 v2, 0x0

    const-string v3, "utf-16"

    invoke-direct {v0, v1, v2, v6, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->CBmessageBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 277
    :catch_0
    move-exception v8

    .line 278
    .local v8, ex:Ljava/io/UnsupportedEncodingException;
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->CBmessageBody:Ljava/lang/String;

    .line 279
    const-string v0, "Cell broadcast"

    const-string v1, "implausible UnsupportedEncodingException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 291
    .end local v8           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #temp:Ljava/lang/String;
    :cond_9
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_2

    .line 293
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->CLASS_0:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->messageClass:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 296
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->CLASS_1:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->messageClass:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 299
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->CLASS_2:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->messageClass:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 302
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->CLASS_3:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->messageClass:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 226
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 291
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setCB(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 345
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 346
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setCBEntry(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "mode"
    .parameter "mMsgId"
    .parameter "mDsc"

    .prologue
    .line 314
    const-string v1, "Cell broadcast"

    const-string v2, "setCBChannel()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 317
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/telephony/ISms;->setCSCB(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCb_msg([B)V
    .locals 0
    .parameter "cb_msg"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->cb_msg:[B

    .line 544
    return-void
.end method

.method public setDcs(I)V
    .locals 0
    .parameter "dcs"

    .prologue
    .line 447
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->dcs:I

    .line 448
    return-void
.end method

.method public setGs(I)V
    .locals 0
    .parameter "gs"

    .prologue
    .line 495
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->gs:I

    .line 496
    return-void
.end method

.method public setMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mode:Z

    .line 368
    return-void
.end method

.method public setMsg_id(I)V
    .locals 0
    .parameter "msg_id"

    .prologue
    .line 431
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->msg_id:I

    .line 432
    return-void
.end method

.method public setMsg_len(I)V
    .locals 0
    .parameter "msg_len"

    .prologue
    .line 527
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->msg_len:I

    .line 528
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 463
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->page:I

    .line 464
    return-void
.end method

.method public setPages(I)V
    .locals 0
    .parameter "pages"

    .prologue
    .line 479
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->pages:I

    .line 480
    return-void
.end method

.method public setSeptetCount(I)V
    .locals 0
    .parameter "septetCount"

    .prologue
    .line 559
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->septetCount:I

    .line 560
    return-void
.end method

.method public setSn(I)V
    .locals 0
    .parameter "sn"

    .prologue
    .line 415
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->sn:I

    .line 416
    return-void
.end method

.method public setUpdatenum(I)V
    .locals 0
    .parameter "updatenum"

    .prologue
    .line 511
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->updatenum:I

    .line 512
    return-void
.end method

.method public setmDcs(Ljava/lang/String;)V
    .locals 0
    .parameter "mDcs"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mDcs:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setmMsgId(Ljava/lang/String;)V
    .locals 0
    .parameter "mMsgId"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->mMsgId:Ljava/lang/String;

    .line 384
    return-void
.end method
