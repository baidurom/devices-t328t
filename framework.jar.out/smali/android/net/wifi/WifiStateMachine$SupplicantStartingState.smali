.class Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 5487
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 5491
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5492
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/16 v7, 0xd8

    const/16 v5, 0x3d

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5496
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 5592
    :goto_0
    return v1

    .line 5499
    :sswitch_0
    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setP2pDisable(I)Z

    .line 5500
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x3

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;I)V

    .line 5501
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$5102(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5503
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v3, v5, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v3, v5, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v7, :cond_1

    .line 5506
    :cond_0
    const-string v3, "WifiStateMachine"

    const-string v4, "EVENT_SUPPLICANT_CONNECTION setPreConfigAPHigherPriority"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5507
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)V

    .line 5514
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v3

    const v4, 0x2006f

    invoke-virtual {v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 5515
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v3

    const v4, 0x2007a

    invoke-virtual {v3, v4}, Landroid/net/wifi/WpsStateMachine;->sendMessage(I)V

    .line 5520
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v7, :cond_2

    .line 5521
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    .line 5522
    const-string v1, "WifiStateMachine"

    const-string v3, "[C+W] SupplicantStartingState setCwRegisterState to false starting register"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5524
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HTC CW Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5525
    .local v0, cwHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5526
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$CwHandler;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/net/wifi/WifiStateMachine$CwHandler;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Looper;)V

    #setter for: Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$5502(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiStateMachine$CwHandler;)Landroid/net/wifi/WifiStateMachine$CwHandler;

    .line 5532
    .end local v0           #cwHandlerThread:Landroid/os/HandlerThread;
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$5602(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 5533
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v1, v6}, Landroid/net/wifi/WifiStateMachine;->access$5702(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5534
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I
    invoke-static {v1, v6}, Landroid/net/wifi/WifiStateMachine;->access$5802(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5535
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v3, -0xc8

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$5902(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5537
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 5540
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v1, :cond_3

    .line 5541
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->notifyGetAirPlaneMode()V

    .line 5544
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->initialize(Landroid/content/Context;)V

    .line 5548
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_wivu()V

    .line 5549
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_self()V

    .line 5550
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV6Packets()V

    .line 5551
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_dhcpoffer()V

    .line 5554
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 5555
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5591
    :goto_1
    const v1, 0xc366

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(II)I

    move v1, v2

    .line 5592
    goto/16 :goto_0

    .line 5558
    :sswitch_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$5104(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_4

    .line 5559
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Failed to setup control channel, restart supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5560
    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    .line 5561
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5562
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x2000b

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 5564
    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times to start supplicant, unload driver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5566
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$5102(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5567
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5568
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x20002

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 5586
    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 5496
    nop

    :sswitch_data_0
    .sparse-switch
        0x20001 -> :sswitch_2
        0x20002 -> :sswitch_2
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x20048 -> :sswitch_2
        0x20049 -> :sswitch_2
        0x2004d -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
