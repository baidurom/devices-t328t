.class Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;
.super Ljava/lang/Object;
.source "KddiPacketSMSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KddiResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;


# direct methods
.method constructor <init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2624
    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2626
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x17

    const/4 v4, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 2630
    const/4 v9, 0x0

    .line 2631
    .local v9, size:I
    const/4 v8, 0x0

    .line 2633
    .local v8, result:[B
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2634
    const-string v1, "KddiPacketSMSManager"

    const-string v2, "KddiResultReceiver Thread Start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    :cond_0
    :try_start_0
    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2641
    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v9

    .line 2642
    if-lez v9, :cond_0

    .line 2645
    new-array v8, v9, [B

    .line 2646
    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1, v8}, Ljava/io/InputStream;->read([B)I

    .line 2654
    :cond_1
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v10, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2655
    const/4 v1, 0x4

    :try_start_1
    iget-object v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v2, v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v2, v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eqz v1, :cond_7

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v2, v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v2, v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eq v1, v2, :cond_7

    .line 2660
    invoke-static {v8}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiParseRetcode([B)I

    move-result v1

    sput v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2661
    sget v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    if-ne v11, v1, :cond_2

    .line 2662
    sget v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v11, v1, :cond_9

    .line 2663
    const/16 v1, 0x17

    sput v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2671
    :cond_2
    :goto_0
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2672
    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReturnSendResult:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    :cond_3
    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2678
    const/16 v1, 0x15

    sget v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    if-ne v1, v2, :cond_d

    sget v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-eq v4, v1, :cond_d

    .line 2681
    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_4

    .line 2682
    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 2683
    const/4 v1, 0x0

    sput-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    .line 2713
    :cond_4
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_6

    .line 2715
    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2717
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    const/4 v2, 0x6

    iput v2, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    .line 2721
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2722
    const-string v1, "KddiPacketSMSManager"

    const-string v2, "send store mode delay: 200"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    :cond_5
    new-instance v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;

    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDestNumber:Ljava/lang/String;

    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mMessageBody:Ljava/lang/String;

    iget-object v5, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v5, v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 2728
    .local v0, tracker:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #getter for: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$800(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #getter for: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$800(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2735
    .end local v0           #tracker:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;
    :cond_6
    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetRevThread:Ljava/lang/Thread;

    if-eqz v1, :cond_7

    .line 2736
    const/4 v1, 0x0

    sput-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetRevThread:Ljava/lang/Thread;

    .line 2762
    :cond_7
    :goto_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2764
    :try_start_2
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2765
    const-string v1, "KddiPacketSMSManager"

    const-string v2, "KddiResultReceiver End"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2791
    :cond_8
    :goto_2
    return-void

    .line 2664
    :cond_9
    :try_start_3
    sget v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v12, v1, :cond_c

    .line 2665
    const/16 v1, 0x2b

    sput v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto/16 :goto_0

    .line 2762
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2768
    :catch_0
    move-exception v7

    .line 2769
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 2770
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$600()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2771
    const-string v1, "KddiPacketSMSManager"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    :cond_a
    sget v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v11, v1, :cond_11

    .line 2776
    sput v13, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2785
    :goto_3
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2786
    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    :cond_b
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    goto :goto_2

    .line 2667
    .end local v7           #e:Ljava/io/IOException;
    :cond_c
    const/4 v1, 0x1

    :try_start_5
    sput v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto/16 :goto_0

    .line 2740
    :cond_d
    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2742
    sget v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v4, v1, :cond_e

    .line 2743
    const/16 v1, 0xa

    sget v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    if-ne v1, v2, :cond_f

    .line 2744
    const/4 v1, -0x1

    sput v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2753
    :goto_4
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$600()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2754
    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change Return Result["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    :cond_e
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    goto/16 :goto_1

    .line 2745
    :cond_f
    const/16 v1, 0xf

    sget v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    if-ne v1, v2, :cond_10

    .line 2749
    const/4 v1, 0x6

    sput v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_4

    .line 2751
    :cond_10
    const/4 v1, 0x1

    sput v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 2777
    .restart local v7       #e:Ljava/io/IOException;
    :cond_11
    sget v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v12, v1, :cond_12

    .line 2779
    const/16 v1, 0x2b

    sput v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto/16 :goto_3

    .line 2782
    :cond_12
    sput v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto/16 :goto_3
.end method
