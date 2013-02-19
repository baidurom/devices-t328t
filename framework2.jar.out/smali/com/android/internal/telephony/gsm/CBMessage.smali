.class public final Lcom/android/internal/telephony/gsm/CBMessage;
.super Ljava/lang/Object;
.source "CBMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/CBMessage$2;,
        Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;
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

.field protected mEncodingType:I

.field protected mEncodingTypeSet:Z

.field protected mMsgId:Ljava/lang/String;

.field mPdu:[B

.field messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

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
    .locals 1

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    return-void
.end method

.method public static newFromCBM([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/CBMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 116
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/CBMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/CBMessage;-><init>()V

    .line 118
    .local v1, msg:Lcom/android/internal/telephony/gsm/CBMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/CBMessage;->parseCBPdu([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/CBMessage;
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, ex:Ljava/lang/Throwable;
    const-string v2, "Cell broadcast"

    const-string v3, "CB PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCBChannel()V
    .locals 3

    .prologue
    .line 362
    const-string v1, "Cell broadcast"

    const-string v2, "getCBChannel()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 365
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getCSCB()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCBMessageClass()Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    return-object v0
.end method

.method public getCb_msg()[B
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    return v0
.end method

.method public getDcs()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    return v0
.end method

.method public getGs()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    .prologue
    .line 390
    sget-object v0, Lcom/android/internal/telephony/gsm/CBMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$CBMessage$CBMessageClass:[I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 400
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    :goto_0
    return-object v0

    .line 392
    :pswitch_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 394
    :pswitch_1
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 396
    :pswitch_2
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 398
    :pswitch_3
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMsg_id()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    return v0
.end method

.method public getMsg_len()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    return v0
.end method

.method public getPages()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    return v0
.end method

.method public getRowData()[B
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    return-object v0
.end method

.method public getSeptetCount()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    return v0
.end method

.method public getSn()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    return v0
.end method

.method public getUpdatenum()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    return v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    return-object v0
.end method

.method public getmDcs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mDcs:Ljava/lang/String;

    return-object v0
.end method

.method public getmEncodingType()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingType:I

    return v0
.end method

.method public getmMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public isMode()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mode:Z

    return v0
.end method

.method public ismEncodingTypeSet()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    return v0
.end method

.method public parseCBPdu([B)V
    .locals 11
    .parameter "pdu"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 130
    const-string v3, "Cell broadcast"

    const-string v4, "2-parseCBPdu()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    array-length v3, p1

    add-int/lit8 v0, v3, -0x6

    .line 133
    .local v0, size:I
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    .line 134
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v4, v4, v9

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    .line 135
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xc0

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    .line 138
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v9

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    .line 141
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatenum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    if-gez v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    add-int/lit16 v3, v3, 0x100

    mul-int/lit16 v1, v3, 0x100

    .line 148
    .local v1, x:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v8

    if-gez v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v8

    add-int/lit16 v2, v3, 0x100

    .line 152
    .local v2, y:I
    :goto_1
    add-int v3, v1, v2

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    .line 153
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    .line 156
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dcs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v10

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    .line 159
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "page:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v10

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    .line 162
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total pages:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    .line 165
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    invoke-static {p1, v3, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iput v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    .line 167
    mul-int/lit8 v3, v0, 0x8

    div-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    .line 168
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "septetCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/CBMessage;->parseCBUserData()Ljava/lang/String;

    .line 171
    return-void

    .line 147
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    mul-int/lit16 v1, v3, 0x100

    .restart local v1       #x:I
    goto/16 :goto_0

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v2, v3, v8

    .restart local v2       #y:I
    goto/16 :goto_1
.end method

.method public parseCBUserData()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    const/4 v9, 0x0

    .line 214
    .local v9, hasMessageClass:Z
    const/4 v12, 0x0

    .line 215
    .local v12, userDataCompressed:Z
    const/4 v7, 0x0

    .line 217
    .local v7, encodingType:I
    const-string v2, "Cell broadcast"

    const-string v3, "3-parseCBUserData()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget v2, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v2, v2, 0xf0

    if-nez v2, :cond_1

    .line 221
    const/4 v7, 0x1

    .line 270
    :goto_0
    if-eqz v7, :cond_0

    .line 271
    iput v7, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingType:I

    .line 272
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/CBMessage;->getUserData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    array-length v6, v0

    .line 279
    .local v6, count:I
    packed-switch v7, :pswitch_data_0

    .line 301
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 302
    .local v11, temp:Ljava/lang/String;
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    .line 303
    const-string v0, "Cell broadcast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CB message body length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-nez v9, :cond_a

    .line 305
    sget-object v0, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->UNKNOWN:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    .line 322
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    return-object v0

    .line 222
    .end local v6           #count:I
    .end local v11           #temp:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 223
    const/4 v7, 0x1

    goto :goto_0

    .line 224
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x11

    if-ne v2, v3, :cond_3

    .line 225
    const/4 v7, 0x3

    goto :goto_0

    .line 226
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v2, v2, 0x40

    if-ne v2, v0, :cond_7

    .line 228
    iget v2, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_4

    move v12, v0

    .line 229
    :goto_3
    iget v2, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    move v9, v0

    .line 231
    :goto_4
    if-eqz v12, :cond_6

    .line 232
    const-string v2, "Cell broadcast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1- Unsupported CB data coding scheme (compression) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move v12, v1

    .line 228
    goto :goto_3

    :cond_5
    move v9, v1

    .line 229
    goto :goto_4

    .line 235
    :cond_6
    iget v2, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    shr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 237
    :pswitch_0
    const/4 v7, 0x1

    .line 238
    goto/16 :goto_0

    .line 241
    :pswitch_1
    const/4 v7, 0x3

    .line 242
    goto/16 :goto_0

    .line 246
    :pswitch_2
    const-string v2, "Cell broadcast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2 - Unsupported CB data coding scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 252
    :cond_7
    iget v2, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_9

    .line 253
    const/4 v9, 0x1

    .line 254
    const/4 v12, 0x0

    .line 256
    iget v2, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_8

    .line 258
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 261
    :cond_8
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 264
    :cond_9
    const-string v2, "Cell broadcast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3 - Unsupported CB data coding scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 282
    .restart local v6       #count:I
    :pswitch_3
    new-instance v10, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 283
    .local v10, strResult:Ljava/lang/String;
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    goto/16 :goto_1

    .line 287
    .end local v10           #strResult:Ljava/lang/String;
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    goto/16 :goto_1

    .line 292
    :pswitch_5
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    const/4 v2, 0x0

    const-string v3, "utf-16"

    invoke-direct {v0, v1, v2, v6, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 293
    :catch_0
    move-exception v8

    .line 294
    .local v8, ex:Ljava/io/UnsupportedEncodingException;
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    .line 295
    const-string v0, "Cell broadcast"

    const-string v1, "implausible UnsupportedEncodingException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 307
    .end local v8           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #temp:Ljava/lang/String;
    :cond_a
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_2

    .line 309
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->CLASS_0:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 312
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->CLASS_1:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 315
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->CLASS_2:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 318
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->CLASS_3:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 235
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 307
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
    .line 378
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 379
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 380
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setCBEntry(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "mode"
    .parameter "mMsgId"
    .parameter "mDsc"

    .prologue
    .line 329
    const-string v2, "Cell broadcast"

    const-string v3, "setCBChannel()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :try_start_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x26

    if-ne v2, v3, :cond_0

    .line 333
    move-object v0, p2

    .line 334
    .local v0, sChannels:Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/gsm/CBMessage$1;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/gsm/CBMessage$1;-><init>(Lcom/android/internal/telephony/gsm/CBMessage;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 349
    .end local v0           #sChannels:Ljava/lang/String;
    :cond_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 350
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/telephony/ISms;->setCSCB(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setCb_msg([B)V
    .locals 0
    .parameter "cb_msg"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    .line 594
    return-void
.end method

.method public setDcs(I)V
    .locals 0
    .parameter "dcs"

    .prologue
    .line 497
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    .line 498
    return-void
.end method

.method public setGs(I)V
    .locals 0
    .parameter "gs"

    .prologue
    .line 545
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    .line 546
    return-void
.end method

.method public setMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mode:Z

    .line 418
    return-void
.end method

.method public setMsg_id(I)V
    .locals 0
    .parameter "msg_id"

    .prologue
    .line 481
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    .line 482
    return-void
.end method

.method public setMsg_len(I)V
    .locals 0
    .parameter "msg_len"

    .prologue
    .line 577
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    .line 578
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 513
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    .line 514
    return-void
.end method

.method public setPages(I)V
    .locals 0
    .parameter "pages"

    .prologue
    .line 529
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    .line 530
    return-void
.end method

.method public setSeptetCount(I)V
    .locals 0
    .parameter "septetCount"

    .prologue
    .line 609
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    .line 610
    return-void
.end method

.method public setSn(I)V
    .locals 0
    .parameter "sn"

    .prologue
    .line 465
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    .line 466
    return-void
.end method

.method public setUpdatenum(I)V
    .locals 0
    .parameter "updatenum"

    .prologue
    .line 561
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    .line 562
    return-void
.end method

.method public setmDcs(Ljava/lang/String;)V
    .locals 0
    .parameter "mDcs"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mDcs:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public setmEncodingType(I)V
    .locals 0
    .parameter "mEncodingType"

    .prologue
    .line 625
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingType:I

    .line 626
    return-void
.end method

.method public setmEncodingTypeSet(Z)V
    .locals 0
    .parameter "mEncodingTypeSet"

    .prologue
    .line 641
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    .line 642
    return-void
.end method

.method public setmMsgId(Ljava/lang/String;)V
    .locals 0
    .parameter "mMsgId"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mMsgId:Ljava/lang/String;

    .line 434
    return-void
.end method
