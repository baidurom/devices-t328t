.class final Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;
.super Landroid/os/Handler;
.source "HtcTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephony;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/HtcTelephony;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephony;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .parameter "msg"

    .prologue
    .line 236
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 930
    :goto_0
    :pswitch_0
    return-void

    .line 238
    :pswitch_1
    const-string v2, "HtcTelephony"

    const-string v3, "send cw query cave"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 240
    .local v28, request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x67

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryCAVE(Landroid/os/Message;)V

    goto :goto_0

    .line 244
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_2
    const-string v2, "HtcTelephony"

    const-string v3, "get cw query cave result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 246
    .local v11, ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 247
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 248
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 249
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 254
    :goto_1
    monitor-enter v28

    .line 255
    :try_start_0
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit v28

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 251
    :cond_0
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 252
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 259
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_3
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request cave"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 261
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 262
    .local v26, randu:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x65

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->requestCAVE(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 267
    .end local v26           #randu:Ljava/lang/String;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_4
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request cave result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 269
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 270
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 271
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 272
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    .line 273
    .local v30, strArr:[Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    .line 275
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 278
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 280
    .end local v18           #i:I
    .end local v30           #strArr:[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 281
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 284
    :cond_3
    monitor-enter v28

    .line 285
    :try_start_1
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 286
    monitor-exit v28

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 290
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_5
    const-string v2, "HtcTelephony"

    const-string v3, "send cw query MD5"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 292
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x6b

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 296
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_6
    const-string v2, "HtcTelephony"

    const-string v3, "get cw query MD5 result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 298
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 299
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 300
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    .line 301
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 306
    :goto_3
    monitor-enter v28

    .line 307
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 308
    monitor-exit v28

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 303
    :cond_4
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 304
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 311
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_7
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request MD5"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 313
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v17, v2, v3

    .line 314
    .local v17, chapid:Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v16, v2, v3

    .line 315
    .local v16, chapchallengelength:Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v15, v2, v3

    .line 316
    .local v15, chapchallenge:Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chapid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; chapchallengelength:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; chapchallenge:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x69

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1, v15, v3}, Lcom/android/internal/telephony/Phone;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 321
    .end local v15           #chapchallenge:Ljava/lang/String;
    .end local v16           #chapchallengelength:Ljava/lang/String;
    .end local v17           #chapid:Ljava/lang/String;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_8
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request MD5 result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 323
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 324
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 325
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7

    .line 326
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    .line 327
    .restart local v30       #strArr:[Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 329
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 331
    :cond_5
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 335
    .end local v18           #i:I
    .end local v30           #strArr:[Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_6

    .line 336
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 339
    :cond_6
    monitor-enter v28

    .line 340
    :try_start_3
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 341
    monitor-exit v28

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 333
    :cond_7
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 345
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_9
    const-string v2, "HtcTelephony"

    const-string v3, "send cw query VPM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 347
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x6f

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 351
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_a
    const-string v2, "HtcTelephony"

    const-string v3, "get cw query VPM result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 353
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 354
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 355
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_8

    .line 356
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 362
    :goto_6
    monitor-enter v28

    .line 363
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 364
    monitor-exit v28

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 358
    :cond_8
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 359
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 367
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_b
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request VPM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 369
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x6d

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->requestVPM(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 373
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_c
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request VPM result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 375
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 376
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 377
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_a

    .line 378
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    .line 379
    .restart local v30       #strArr:[Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_7
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_9

    .line 381
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 384
    :cond_9
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 386
    .end local v18           #i:I
    .end local v30           #strArr:[Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_b

    .line 387
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 390
    :cond_b
    monitor-enter v28

    .line 391
    :try_start_5
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 392
    monitor-exit v28

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v28
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    .line 396
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_d
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request SSD UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 398
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 399
    .local v25, randssd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x71

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 403
    .end local v25           #randssd:Ljava/lang/String;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_e
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request SSD UPDATE result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 405
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 406
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 407
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_d

    .line 408
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    .line 409
    .restart local v30       #strArr:[Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_8
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_c

    .line 411
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 413
    :cond_c
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 415
    .end local v18           #i:I
    .end local v30           #strArr:[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_e

    .line 416
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 419
    :cond_e
    monitor-enter v28

    .line 420
    :try_start_6
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 421
    monitor-exit v28

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v28
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    .line 424
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_f
    const-string v2, "HtcTelephony"

    const-string v3, "send cw query SSD UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 426
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x73

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 430
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_10
    const-string v2, "HtcTelephony"

    const-string v3, "get cw query SSD UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 432
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 433
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 434
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    .line 435
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 441
    :goto_9
    monitor-enter v28

    .line 442
    :try_start_7
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 443
    monitor-exit v28

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v28
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v2

    .line 437
    :cond_f
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 438
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 446
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_11
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request SSD UPDATE CONFIRM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 448
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v13, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 449
    .local v13, authbs:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x75

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v13, v3}, Lcom/android/internal/telephony/Phone;->requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 458
    .end local v13           #authbs:Ljava/lang/String;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 459
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 460
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 461
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    .line 462
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request SSD UPDATE CONFIRM result: success"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 469
    :goto_a
    monitor-enter v28

    .line 470
    :try_start_8
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 471
    monitor-exit v28

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v28
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v2

    .line 465
    :cond_10
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get cw request SSD UPDATE CONFIRM result: fail. exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v2, Ljava/lang/String;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_a

    .line 475
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_13
    const-string v2, "HtcTelephony"

    const-string v3, "send CMD_HTC_CW_QUERY_UIMAUTH"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 477
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x77

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryUIMAUTH(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 482
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_14
    const-string v2, "HtcTelephony"

    const-string v3, "get CMD_HTC_CW_QUERY_UIMAUTH result!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 484
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 485
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 486
    const/4 v14, 0x0

    .line 488
    .local v14, authenSupported:I
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_15

    .line 489
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v32, v2

    check-cast v32, [Ljava/lang/String;

    .line 490
    .local v32, uimauth:[Ljava/lang/String;
    const-string v33, ""

    .line 491
    .local v33, uimauthList:Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len of uimauth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_b
    move-object/from16 v0, v32

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_14

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v32, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 494
    aget-object v2, v32, v18

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cave"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 495
    add-int/lit8 v14, v14, 0x1

    .line 492
    :cond_11
    :goto_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 496
    :cond_12
    aget-object v2, v32, v18

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "md5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 497
    add-int/lit8 v14, v14, 0x2

    goto :goto_c

    .line 498
    :cond_13
    aget-object v2, v32, v18

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "akacave"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 499
    add-int/lit8 v14, v14, 0x4

    goto :goto_c

    .line 502
    :cond_14
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uimauthList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v18           #i:I
    .end local v32           #uimauth:[Ljava/lang/String;
    .end local v33           #uimauthList:Ljava/lang/String;
    :goto_d
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 508
    monitor-enter v28

    .line 509
    :try_start_9
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 510
    monitor-exit v28

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v28
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v2

    .line 504
    :cond_15
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 515
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #authenSupported:I
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_15
    const-string v2, "HtcTelephony"

    const-string v3, "send CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 517
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x79

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->requestGetVolteSipRegFailure(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 521
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_16
    const-string v2, "HtcTelephony"

    const-string v3, "get CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE_RESULT result!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 523
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 524
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 525
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_16

    .line 526
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v27, v2

    check-cast v27, [I

    .line 527
    .local v27, registration:[I
    const/4 v2, 0x0

    aget v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 534
    .end local v27           #registration:[I
    :goto_e
    monitor-enter v28

    .line 535
    :try_start_a
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 536
    monitor-exit v28

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v28
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v2

    .line 529
    :cond_16
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 530
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 539
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_17
    const-string v2, "HtcTelephony"

    const-string v3, "send CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 541
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 542
    .local v20, ifcname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x7c

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 546
    .end local v20           #ifcname:Ljava/lang/String;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_18
    const-string v2, "HtcTelephony"

    const-string v3, "get CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES_RESULT"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 548
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 549
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 550
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_19

    .line 551
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    .line 552
    .restart local v30       #strArr:[Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_f
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_17

    .line 554
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 556
    :cond_17
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 560
    .end local v18           #i:I
    .end local v30           #strArr:[Ljava/lang/String;
    :goto_10
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_18

    .line 561
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 564
    :cond_18
    monitor-enter v28

    .line 565
    :try_start_b
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 566
    monitor-exit v28

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v28
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v2

    .line 558
    :cond_19
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 571
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 572
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v12, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;

    .line 574
    .local v12, argument:Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;
    const/16 v2, 0x7e

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 576
    .local v10, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget v3, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->cla:I

    iget v4, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->command:I

    iget v5, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->channel:I

    iget v6, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p1:I

    iget v7, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p2:I

    iget v8, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p3:I

    iget-object v9, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/IccCard;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 582
    .end local v10           #onCompleted:Landroid/os/Message;
    .end local v12           #argument:Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 583
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 584
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1a

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1a

    .line 585
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 589
    :goto_11
    monitor-enter v28

    .line 590
    :try_start_c
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 591
    monitor-exit v28

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v28
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v2

    .line 587
    :cond_1a
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_11

    .line 594
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 595
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/16 v2, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 596
    .restart local v10       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v10}, Lcom/android/internal/telephony/IccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 600
    .end local v10           #onCompleted:Landroid/os/Message;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 601
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 602
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1b

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1b

    .line 603
    new-instance v3, Ljava/lang/Integer;

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 608
    :goto_12
    monitor-enter v28

    .line 609
    :try_start_d
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 610
    monitor-exit v28

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v28
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v2

    .line 605
    :cond_1b
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    #setter for: Lcom/android/internal/telephony/HtcTelephony;->lastError:I
    invoke-static {v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$102(Lcom/android/internal/telephony/HtcTelephony;I)I

    goto :goto_12

    .line 613
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 614
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/16 v2, 0x82

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 616
    .restart local v10       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2, v10}, Lcom/android/internal/telephony/IccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 621
    .end local v10           #onCompleted:Landroid/os/Message;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_1e
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 622
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 623
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1c

    .line 624
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 628
    :goto_13
    monitor-enter v28

    .line 629
    :try_start_e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 630
    monitor-exit v28

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v28
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v2

    .line 626
    :cond_1c
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_13

    .line 636
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_1f
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_UICC_AUTHENTICATION"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 638
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 639
    .local v6, uiccAuthParam:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const-string v4, "7FFF"

    const-string v5, "11"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0x86

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->requestQueryQmiUimAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 648
    .end local v6           #uiccAuthParam:Ljava/lang/String;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_20
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 650
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 651
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/IccIoResult;

    .line 652
    .local v19, iccIoResult:Lcom/android/internal/telephony/IccIoResult;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 653
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1e

    .line 654
    new-instance v29, Landroid/os/Bundle;

    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 655
    .local v29, result:Landroid/os/Bundle;
    const-string v2, "sw1"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 656
    const-string v2, "sw2"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 657
    const-string v2, "payload"

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 658
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 663
    .end local v29           #result:Landroid/os/Bundle;
    :goto_14
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_1d

    .line 664
    const-string v2, "HtcTelephony"

    const-string v3, "result is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 668
    :cond_1d
    monitor-enter v28

    .line 669
    :try_start_f
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 670
    monitor-exit v28

    goto/16 :goto_0

    :catchall_f
    move-exception v2

    monitor-exit v28
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v2

    .line 660
    :cond_1e
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 674
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v19           #iccIoResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_21
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_GET_SECTOR_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 676
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x84

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetSectorID(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 680
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_22
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_GET_SECTOR_ID_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 682
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 683
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 684
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_20

    .line 685
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 690
    :goto_15
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_1f

    .line 691
    const-string v2, "HtcTelephony"

    const-string v3, "result is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 695
    :cond_1f
    monitor-enter v28

    .line 696
    :try_start_10
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 697
    monitor-exit v28

    goto/16 :goto_0

    :catchall_10
    move-exception v2

    monitor-exit v28
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v2

    .line 687
    :cond_20
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 702
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_23
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_CSIM_AUTH_RSP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 706
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$300(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 707
    if-eqz v11, :cond_21

    :try_start_11
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_21

    .line 708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    #setter for: Lcom/android/internal/telephony/HtcTelephony;->mCSIMResult:Landroid/os/Bundle;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$402(Lcom/android/internal/telephony/HtcTelephony;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 711
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$300(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 712
    monitor-exit v3

    goto/16 :goto_0

    :catchall_11
    move-exception v2

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v2

    .line 718
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_24
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_PERMANENT_DETACH_LTE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    const-string v3, "C8260A0000"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v7, 0x89

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 722
    :pswitch_25
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP2"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 724
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 725
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/HtcTelephony;->access$502(Lcom/android/internal/telephony/HtcTelephony;Ljava/lang/String;)Ljava/lang/String;

    .line 727
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_23

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$502(Lcom/android/internal/telephony/HtcTelephony;Ljava/lang/String;)Ljava/lang/String;

    .line 729
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOldNV_10: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-ge v2, v3, :cond_24

    .line 736
    :cond_22
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can not get NV#10"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 737
    monitor-enter v28

    .line 738
    :try_start_12
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 739
    monitor-exit v28

    goto/16 :goto_0

    :catchall_12
    move-exception v2

    monitor-exit v28
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v2

    .line 731
    :cond_23
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 742
    :cond_24
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x8a

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 747
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_26
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 749
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 750
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 751
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_25

    .line 752
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> CMD_HTC_PERMANENT_DETACH_LTE_DONE, mOldNV_10.substring(10): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v7, 0xe

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C8270A0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v7, 0xe

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v7, 0x8b

    move-object/from16 v0, v28

    invoke-virtual {v5, v7, v0}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 756
    :cond_25
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to set PreferNetwork to CDMA/EvDo!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 758
    monitor-enter v28

    .line 759
    :try_start_13
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 760
    monitor-exit v28

    goto/16 :goto_0

    :catchall_13
    move-exception v2

    monitor-exit v28
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v2

    .line 764
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_27
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_PERMANENT_DETACH_LTE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 766
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 767
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_26

    .line 768
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_26
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_27

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_17
    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 771
    monitor-enter v28

    .line 772
    :try_start_14
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 773
    monitor-exit v28

    goto/16 :goto_0

    :catchall_14
    move-exception v2

    monitor-exit v28
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw v2

    .line 770
    :cond_27
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_17

    .line 778
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_28
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_AKA"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 780
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;

    .line 781
    .local v21, mAuth1:Lcom/android/internal/telephony/HtcTelephony$AuthRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->rand:[B

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0x8d

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->uiccAkaAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 785
    .end local v21           #mAuth1:Lcom/android/internal/telephony/HtcTelephony$AuthRequest;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_29
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_GBA_BOOTSTRAP"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 787
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;

    .line 788
    .local v22, mAuth2:Lcom/android/internal/telephony/HtcTelephony$AuthRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->rand:[B

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0x8f

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateBootstrap(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 792
    .end local v22           #mAuth2:Lcom/android/internal/telephony/HtcTelephony$AuthRequest;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_2a
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_GBA_NAF"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 794
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v24, v2

    check-cast v24, [B

    .line 795
    .local v24, nafid:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x91

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateNaf(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 799
    .end local v24           #nafid:[B
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_2b
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_WRITE_GBA_PARAM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 801
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;

    .line 802
    .local v23, mParam:Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;->mEfid:I

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;->mData:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0x93

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(Ljava/lang/String;I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 812
    .end local v23           #mParam:Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_2c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 813
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 814
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 815
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_29

    .line 816
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :goto_18
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_28

    .line 822
    const-string v2, "HtcTelephony"

    const-string v3, "result is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 826
    :cond_28
    monitor-enter v28

    .line 827
    :try_start_15
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 828
    monitor-exit v28

    goto/16 :goto_0

    :catchall_15
    move-exception v2

    monitor-exit v28
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    throw v2

    .line 818
    :cond_29
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_18

    .line 834
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 835
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Integer;

    .line 836
    .local v31, type:Ljava/lang/Integer;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x95

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType_wifi_call(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 841
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    .end local v31           #type:Ljava/lang/Integer;
    :pswitch_2e
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 843
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 844
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 845
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2a

    .line 846
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 851
    :goto_19
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    monitor-enter v28

    .line 854
    :try_start_16
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 855
    monitor-exit v28

    goto/16 :goto_0

    :catchall_16
    move-exception v2

    monitor-exit v28
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    throw v2

    .line 848
    :cond_2a
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_19

    .line 860
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnQuery(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$600(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    goto/16 :goto_0

    .line 863
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnQueryContResult(ILandroid/os/AsyncResult;)V
    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$700(Lcom/android/internal/telephony/HtcTelephony;ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 866
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnQueryResponse(ILandroid/os/AsyncResult;)V
    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$800(Lcom/android/internal/telephony/HtcTelephony;ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 869
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnUpdate(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$900(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    goto/16 :goto_0

    .line 872
    :pswitch_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnUpdateResponse(IILandroid/os/AsyncResult;)V
    invoke-static {v3, v4, v5, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$1000(Lcom/android/internal/telephony/HtcTelephony;IILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 875
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnChangeTakeEffect()V
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$1100(Lcom/android/internal/telephony/HtcTelephony;)V

    goto/16 :goto_0

    .line 880
    :pswitch_35
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_REQUEST_GET_LTETxRx_INFO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 882
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x97

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->requestGetLTETxRxInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 885
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_36
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_REQUEST_GET_LTETxRx_INFO_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 887
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 888
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 889
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2c

    .line 890
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 895
    :goto_1a
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_2b

    .line 896
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 899
    :cond_2b
    monitor-enter v28

    .line 900
    :try_start_17
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 901
    monitor-exit v28

    goto/16 :goto_0

    :catchall_17
    move-exception v2

    monitor-exit v28
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    throw v2

    .line 892
    :cond_2c
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 905
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_37
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 907
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x99

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->requestGetLTERFBandInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 910
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_38
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 912
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 913
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 914
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2e

    .line 915
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 920
    :goto_1b
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_2d

    .line 921
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 924
    :cond_2d
    monitor-enter v28

    .line 925
    :try_start_18
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 926
    monitor-exit v28

    goto/16 :goto_0

    :catchall_18
    move-exception v2

    monitor-exit v28
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    throw v2

    .line 917
    :cond_2e
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_21
        :pswitch_22
        :pswitch_1f
        :pswitch_20
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_2c
        :pswitch_29
        :pswitch_2c
        :pswitch_2a
        :pswitch_2c
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
    .end packed-switch
.end method
