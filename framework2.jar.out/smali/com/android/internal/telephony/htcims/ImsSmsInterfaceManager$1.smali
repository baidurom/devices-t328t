.class Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "ImsSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v10, 0xa

    .line 73
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 76
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 77
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_0

    move v5, v6

    :cond_0
    #setter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z
    invoke-static {v8, v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;Z)Z

    .line 80
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ne v5, v6, :cond_1

    .line 83
    :try_start_1
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .local v4, values:[I
    if-eqz v4, :cond_1

    :try_start_2
    array-length v5, v4

    if-lez v5, :cond_1

    .line 90
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const/4 v6, 0x0

    aget v6, v4, v6

    #setter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mReturnedIndex:I
    invoke-static {v5, v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;I)I

    .line 95
    .end local v4           #values:[I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 96
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 84
    :catch_0
    move-exception v3

    .line 85
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 99
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 100
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 101
    :try_start_4
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3

    .line 103
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 104
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    const/4 v9, 0x0

    #calls: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    invoke-static {v8, v5, v9}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 106
    :cond_3
    :try_start_5
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v7, "Cannot load Sms records"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 115
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 116
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 117
    :try_start_6
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_5

    .line 119
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 120
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    const/4 v9, 0x1

    #calls: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    invoke-static {v8, v5, v9}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 127
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    .line 122
    :cond_5
    :try_start_7
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v7, "Cannot load Sms records"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 132
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 133
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 134
    :try_start_8
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_7

    .line 135
    iget-object v7, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    #setter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v7, v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;[B)[B

    .line 141
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 142
    monitor-exit v6

    goto/16 :goto_0

    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v5

    .line 137
    :cond_7
    :try_start_9
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v7, "Cannot load singleSms records"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 138
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)[B

    move-result-object v5

    if-eqz v5, :cond_6

    .line 139
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const/4 v7, 0x0

    #setter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v5, v7}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;[B)[B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    .line 148
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 149
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v6, v5, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v6

    .line 150
    :try_start_a
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_8

    .line 151
    iget-object v7, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v7, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmsc:Ljava/lang/String;

    .line 157
    :goto_4
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v5, v5, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 158
    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v5

    .line 154
    :cond_8
    :try_start_b
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v7, "Cannot load Sms Center"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 155
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmsc:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_4

    .line 161
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 162
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v6, v5, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v6

    .line 163
    :try_start_c
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_9

    .line 169
    :goto_5
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v5, v5, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 170
    monitor-exit v6

    goto/16 :goto_0

    :catchall_5
    move-exception v5

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v5

    .line 167
    :cond_9
    :try_start_d
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v7, "Cannot update Sms Center"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_5

    .line 175
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 176
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 177
    :try_start_e
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_c

    .line 178
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 179
    .local v2, code:Ljava/lang/String;
    const-string v5, "EVENT_UPDATE_SMSFORMAT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_a

    .line 181
    const-string v5, "EVENT_UPDATE_SMSFORMAT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x8

    const/16 v10, 0xa

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v5, "01"

    const/16 v8, 0x8

    const/16 v9, 0xa

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_b

    .line 183
    const-string v5, "EVENT_UPDATE_SMSFORMAT"

    const-string v6, "change to 3gpp"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v5, "gsm.vzw.sms.format"

    const-string v6, "3gpp"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local v2           #code:Ljava/lang/String;
    :cond_a
    :goto_6
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 197
    monitor-exit v7

    goto/16 :goto_0

    :catchall_6
    move-exception v5

    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v5

    .line 187
    .restart local v2       #code:Ljava/lang/String;
    :cond_b
    :try_start_f
    const-string v5, "EVENT_UPDATE_SMSFORMAT"

    const-string v6, "change to 3gpp2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v5, "gsm.vzw.sms.format"

    const-string v6, "3gpp2"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 194
    .end local v2           #code:Ljava/lang/String;
    :cond_c
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v6, "Cannot update smsformat"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_6

    .line 201
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 202
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 203
    :try_start_10
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_f

    .line 204
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 205
    .restart local v2       #code:Ljava/lang/String;
    const-string v5, "EVENT_UPDATE_WRITEUICC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_d

    .line 207
    const-string v5, "EVENT_UPDATE_WRITEUICC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x8

    const/16 v10, 0xa

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v5, "01"

    const/16 v8, 0x8

    const/16 v9, 0xa

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_e

    .line 209
    const-string v5, "EVENT_UPDATE_WRITEUICC"

    const-string v6, "change to 1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v5, "gsm.vzw.sms.writeuicc"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .end local v2           #code:Ljava/lang/String;
    :cond_d
    :goto_7
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 221
    monitor-exit v7

    goto/16 :goto_0

    :catchall_7
    move-exception v5

    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v5

    .line 212
    .restart local v2       #code:Ljava/lang/String;
    :cond_e
    :try_start_11
    const-string v5, "EVENT_UPDATE_WRITEUICC"

    const-string v6, "change to 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v5, "gsm.vzw.sms.writeuicc"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 218
    .end local v2           #code:Ljava/lang/String;
    :cond_f
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v6, "Cannot update smsformat"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_7

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
