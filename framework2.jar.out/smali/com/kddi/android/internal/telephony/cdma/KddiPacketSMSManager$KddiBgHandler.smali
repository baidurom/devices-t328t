.class public Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;
.super Landroid/os/Handler;
.source "KddiPacketSMSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KddiBgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;


# direct methods
.method public constructor <init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1844
    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    .line 1845
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1846
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1851
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1852
    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BG handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_0
    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSendState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1878
    :goto_0
    return-void

    .line 1857
    :pswitch_0
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #getter for: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$100(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 1858
    :try_start_0
    const-string v1, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queue size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #getter for: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$100(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #getter for: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$100(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1860
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-nez v1, :cond_1

    .line 1861
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #getter for: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$100(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;

    .line 1862
    .local v0, tracker:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;
    const-string v1, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send remaing tracker: tracker@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v1, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiSendSmsMessage(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;)V

    .line 1866
    .end local v0           #tracker:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1871
    :pswitch_1
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v2, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v2

    .line 1872
    :try_start_1
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_2

    .line 1873
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;

    invoke-virtual {v3, v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiSendSmsMessage(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;)V

    .line 1875
    :cond_2
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1855
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
