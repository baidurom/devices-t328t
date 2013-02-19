.class Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"

# interfaces
.implements Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcCommonInfoScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;
    }
.end annotation


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field protected final mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

.field protected final mPowerManager:Landroid/os/PowerManager;

.field private final mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 451
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 452
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HtcCommonInfoScheduler"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    .line 453
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 454
    new-instance v2, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;-><init>(Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    .line 456
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 457
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 458
    .local v1, service:Landroid/os/IPowerManager;
    new-instance v2, Landroid/os/PowerManager;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v1, v3}, Landroid/os/PowerManager;-><init>(Landroid/os/IPowerManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    .line 460
    invoke-virtual {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->createInfoOperators(Landroid/content/Context;)[Lcom/htc/server/HtcInfoOperator;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .line 462
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 463
    return-void
.end method


# virtual methods
.method public addANR(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    return-void
.end method

.method public addCrash(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 545
    return-void
.end method

.method public addSysCrash()V
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 553
    return-void
.end method

.method public appDied(I)V
    .locals 4
    .parameter "pid"

    .prologue
    .line 490
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 491
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 492
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "pid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 494
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 495
    return-void
.end method

.method protected createInfoOperators(Landroid/content/Context;)[Lcom/htc/server/HtcInfoOperator;
    .locals 3
    .parameter "context"

    .prologue
    .line 467
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/server/HtcInfoOperator;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/server/HtcReleaseInfoOperator;

    invoke-direct {v2}, Lcom/htc/server/HtcReleaseInfoOperator;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 524
    return-void
.end method

.method public killAllProcess()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 541
    return-void
.end method

.method public killProcess(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 537
    return-void
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 563
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 564
    .local v5, processName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 565
    .local v2, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 721
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->onHandleMessage(Landroid/os/Message;)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 569
    :pswitch_1
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const-string v8, "HtcUBFlushWakeLock"

    invoke-virtual {v7, v9, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    .line 571
    .local v6, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 573
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v0, arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 574
    .local v4, op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->flush()V

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 575
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_1
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 580
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v6           #wl:Landroid/os/PowerManager$WakeLock;
    :pswitch_2
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const-string v8, "HtcUBFlushWakeLock"

    invoke-virtual {v7, v9, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    .line 582
    .restart local v6       #wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 583
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 584
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->flushUsageTime()V

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 585
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_2
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 590
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v6           #wl:Landroid/os/PowerManager$WakeLock;
    :pswitch_3
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const-string v8, "HtcUBFlushWakeLock"

    invoke-virtual {v7, v9, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    .line 592
    .restart local v6       #wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 593
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_3
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 594
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->flushClientStatistic()V

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 595
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_3
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 600
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v6           #wl:Landroid/os/PowerManager$WakeLock;
    :pswitch_4
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_4
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 601
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4, v5}, Lcom/htc/server/HtcInfoOperator;->update(Ljava/lang/String;)V

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 602
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_4
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 603
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$600()J

    move-result-wide v8

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 608
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :pswitch_5
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_5
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 609
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4, v5}, Lcom/htc/server/HtcInfoOperator;->setTop(Ljava/lang/String;)V

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 614
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_6
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_6
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 615
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4, v5}, Lcom/htc/server/HtcInfoOperator;->addCrash(Ljava/lang/String;)V

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 620
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_7
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_7
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 621
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4, v5}, Lcom/htc/server/HtcInfoOperator;->addANR(Ljava/lang/String;)V

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 626
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_8
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_8
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 627
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->addSystemCrash()V

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 632
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_9
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_9
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 633
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->addKernelCrash()V

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 638
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_a
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_a
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 639
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->addRadioCrash()V

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 644
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_b
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_b
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 645
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v7, v8, v5}, Lcom/htc/server/HtcInfoOperator;->startProc(IILjava/lang/String;)V

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 650
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_c
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_c
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 651
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4, v5}, Lcom/htc/server/HtcInfoOperator;->killProc(Ljava/lang/String;)V

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 656
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_d
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_d
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 657
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->killAllProc()V

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 662
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_e
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_e
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 663
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->reset()V

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 670
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_f
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 673
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 674
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 675
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 676
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    monitor-enter p0

    .line 679
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 680
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 685
    :pswitch_10
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_f
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 686
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->screenOn()V

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 691
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_11
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_10
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 692
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->screenOff()V

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 697
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_12
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_11
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 698
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/server/HtcInfoOperator;->userActivity(Landroid/os/Bundle;)V

    .line 697
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 703
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_13
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_12
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 704
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/server/HtcInfoOperator;->appDied(Landroid/os/Bundle;)V

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 709
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_14
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_13
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 710
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->startPhoneCall()V

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 715
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_15
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_14
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 716
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->stopPhoneCall()V

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 513
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 514
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 515
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$200()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 516
    return-void
.end method

.method public setNewTopApp(Ljava/lang/String;)V
    .locals 3
    .parameter "topProcessName"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 528
    return-void
.end method

.method public setup(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 472
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$500()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerClientStatsReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 474
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerPhoneReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 475
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerMediaReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V

    .line 476
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerSystemErrorReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 477
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerContentReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V

    .line 479
    :cond_0
    return-void
.end method

.method public startProcess(Ljava/lang/String;II)V
    .locals 3
    .parameter "processName"
    .parameter "pid"
    .parameter "group"

    .prologue
    .line 531
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 532
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 533
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 502
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 503
    monitor-enter p0

    .line 505
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 510
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synchronizedFlush()V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 520
    return-void
.end method

.method public userActivity(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 482
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 483
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 484
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "time"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 485
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 486
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    return-void
.end method
