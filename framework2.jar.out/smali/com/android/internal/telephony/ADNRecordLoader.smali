.class Lcom/android/internal/telephony/ADNRecordLoader;
.super Landroid/os/Handler;
.source "HtcAdnRecord.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x2

.field static final EVENT_EXT_RECORD_UPDATE:I = 0x4

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "HtcADNRecord"


# instance fields
.field adnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field ef:I

.field mExt1List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;"
        }
    .end annotation
.end field

.field private mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field userResponse:Landroid/os/Message;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter
    .parameter "phone"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;",
            "Lcom/android/internal/telephony/PhoneBase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, ext1List:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/telephony/ADNRecordLoader;->ef:I

    .line 66
    iput-object p2, p0, Lcom/android/internal/telephony/ADNRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter
    .parameter "phone"
    .parameter "iccFileHandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;",
            "Lcom/android/internal/telephony/PhoneBase;",
            "Lcom/android/internal/telephony/IccFileHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, ext1List:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/telephony/ADNRecordLoader;->ef:I

    .line 75
    iput-object p2, p0, Lcom/android/internal/telephony/ADNRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    .line 77
    iput-object p3, p0, Lcom/android/internal/telephony/ADNRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 78
    return-void
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/ADNRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/ADNRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ADNRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/ADNRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 143
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 267
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ADNRecordLoader;->result:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 270
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    .line 272
    :cond_1
    :goto_1
    return-void

    .line 148
    :pswitch_1
    :try_start_1
    const-string v2, "HtcADNRecord"

    const-string v3, "EVENT_EF_LINEAR_RECORD_SIZE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 150
    .local v8, ar:Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/HtcAdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/HtcAdnRecord;

    move-object v7, v0

    .line 152
    .local v7, adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 153
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EF record size failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    .end local v7           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v10

    .line 257
    .local v10, exc:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 262
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 157
    .end local v10           #exc:Ljava/lang/RuntimeException;
    .restart local v7       #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .restart local v8       #ar:Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v15, v0

    .line 163
    .local v15, recordSize:[I
    array-length v2, v15

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v15, v3

    if-le v2, v3, :cond_4

    .line 164
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 168
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    const/4 v3, 0x0

    aget v3, v15, v3

    invoke-virtual {v7, v2, v3}, Lcom/android/internal/telephony/HtcAdnRecord;->buildAdnString(Ljava/util/ArrayList;I)[B

    move-result-object v4

    .line 170
    .local v4, data:[B
    if-nez v4, :cond_5

    .line 171
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "worong IAP format"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 177
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ADNRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 178
    .local v1, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v1, :cond_6

    .line 179
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/ADNRecordLoader;->recordNumber:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ADNRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 182
    :cond_6
    const-string v2, "HtcADNRecord"

    const-string v3, "mIccFileHandler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 189
    .end local v1           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    .end local v4           #data:[B
    .end local v7           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v15           #recordSize:[I
    :pswitch_2
    const-string v2, "HtcADNRecord"

    const-string v3, "EVENT_UPDATE_RECORD_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 192
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 193
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "update EF IAP record failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 196
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 206
    .end local v8           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v2, "HtcADNRecord"

    const-string v3, "EVENT_ADN_LOAD_ALL_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 209
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v9, v0

    .line 211
    .local v9, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 212
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 215
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->adnList:Ljava/util/ArrayList;

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->adnList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->result:Ljava/lang/Object;

    .line 218
    const/4 v13, 0x0

    .local v13, i:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, s:I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    .line 219
    new-instance v7, Lcom/android/internal/telephony/HtcAdnRecord;

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v7, v3, v2}, Lcom/android/internal/telephony/HtcAdnRecord;-><init>(I[B)V

    .line 220
    .restart local v7       #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->adnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    if-nez v13, :cond_a

    .line 223
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v14, v2

    .line 225
    .local v14, maxAlphaTagLength:I
    const/16 v2, 0xe

    if-ge v14, v2, :cond_c

    const/4 v14, 0x0

    .line 229
    :goto_3
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 230
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 231
    const-string v2, "gsm.sim.alpha-tag.length"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v14           #maxAlphaTagLength:I
    :cond_a
    :goto_4
    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcAdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 245
    iget v12, v7, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    .line 246
    .local v12, extindex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v12, v2, :cond_b

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    add-int/lit8 v3, v12, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/HtcExt1Record;

    .line 249
    .local v11, ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v11}, Lcom/android/internal/telephony/HtcExt1Record;->getBytes()[B

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/HtcAdnRecord;->appendExtRecord([B)V

    .line 218
    .end local v11           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v12           #extindex:I
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 225
    .restart local v14       #maxAlphaTagLength:I
    :cond_c
    add-int/lit8 v14, v14, -0xe

    goto :goto_3

    .line 232
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_e

    .line 233
    const-string v2, "gsm.sub.icc.alpha-tag.length"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 234
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 235
    const-string v2, "cdma.sim.alpha-tag.length"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 238
    :cond_f
    const-string v2, "gsm.usim.alpha-tag.length"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method loadAllFromEF(ILandroid/os/Message;)V
    .locals 3
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/internal/telephony/ADNRecordLoader;->ef:I

    .line 91
    iput-object p2, p0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/ADNRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 95
    .local v0, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ADNRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string v1, "HtcADNRecord"

    const-string v2, "mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateEF(IILcom/android/internal/telephony/HtcAdnRecord;Landroid/os/Message;)V
    .locals 3
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "adnRecord"
    .parameter "response"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/internal/telephony/ADNRecordLoader;->ef:I

    .line 120
    iput p2, p0, Lcom/android/internal/telephony/ADNRecordLoader;->recordNumber:I

    .line 121
    iput-object p4, p0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    .line 125
    invoke-direct {p0}, Lcom/android/internal/telephony/ADNRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 126
    .local v0, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 127
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/ADNRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v1, "HtcADNRecord"

    const-string v2, "mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
