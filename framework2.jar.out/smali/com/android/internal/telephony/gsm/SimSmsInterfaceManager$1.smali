.class Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "SimSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 105
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v7, :cond_0

    .line 106
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " SimSmsInterfaceManager drop event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    return-void

    .line 112
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 139
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 140
    :try_start_0
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4

    .line 141
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    #calls: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v8, v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v7, v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$302(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 147
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 148
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 114
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 115
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 116
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_2

    move v6, v5

    :cond_2
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v8, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 119
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-ne v6, v5, :cond_3

    .line 122
    :try_start_2
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    .local v4, values:[I
    if-eqz v4, :cond_3

    :try_start_3
    array-length v5, v4

    if-lez v5, :cond_3

    .line 129
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v6, 0x0

    aget v6, v4, v6

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mReturnedIndex:I
    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;I)I

    .line 134
    .end local v4           #values:[I
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 135
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 143
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v7, "Cannot load Sms records"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 144
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 145
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 152
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 153
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 154
    :try_start_6
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_5

    :goto_2
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v8, v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 155
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit v7

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    :cond_5
    move v5, v6

    .line 154
    goto :goto_2

    .line 160
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 161
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 162
    :try_start_7
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_7

    .line 163
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v7, v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$502(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;[B)[B

    .line 169
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 170
    monitor-exit v6

    goto/16 :goto_0

    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v5

    .line 165
    :cond_7
    :try_start_8
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v7, "Cannot load singleSms records"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 166
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)[B

    move-result-object v5

    if-eqz v5, :cond_6

    .line 167
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v7, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v5, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$502(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;[B)[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    .line 176
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 177
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v6, v5, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v6

    .line 178
    :try_start_9
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_8

    .line 179
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v7, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsc:Ljava/lang/String;

    .line 185
    :goto_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 186
    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v5

    .line 182
    :cond_8
    :try_start_a
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v7, "Cannot load Sms Center"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 183
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsc:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_4

    .line 189
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 190
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v6, v5, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v6

    .line 191
    :try_start_b
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_9

    .line 197
    :goto_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 198
    monitor-exit v6

    goto/16 :goto_0

    :catchall_5
    move-exception v5

    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v5

    .line 195
    :cond_9
    :try_start_c
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v7, "Cannot update Sms Center"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_5

    .line 203
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 204
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 205
    :try_start_d
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_a

    .line 206
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCarrierID:Ljava/lang/String;
    invoke-static {v7, v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$702(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    :goto_6
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 212
    monitor-exit v6

    goto/16 :goto_0

    :catchall_6
    move-exception v5

    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v5

    .line 208
    :cond_a
    :try_start_e
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v7, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCarrierID:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$702(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v7, "Cannot get carrier id"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_6

    .line 218
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 219
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 220
    :try_start_f
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_c

    .line 221
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v3, v0

    .line 223
    .local v3, ef:[B
    if-eqz v3, :cond_b

    .line 224
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    array-length v7, v3

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mTransparentEfSize:I
    invoke-static {v5, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;I)I

    .line 227
    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_GET_TRANSPARENT_EF_SIZE_DONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mTransparentEfSize:I
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 233
    .end local v3           #ef:[B
    :goto_7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 234
    monitor-exit v6

    goto/16 :goto_0

    :catchall_7
    move-exception v5

    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw v5

    .line 229
    :cond_c
    :try_start_10
    const-string v5, "SimSmsInterfaceManager"

    const-string v7, "handle message: EVENT_GET_TRANSPARENT_EF_SIZE_DONE"

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_7

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method
