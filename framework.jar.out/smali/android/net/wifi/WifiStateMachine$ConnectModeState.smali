.class Landroid/net/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 6358
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 6362
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 6363
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 38
    .parameter "message"

    .prologue
    .line 6371
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    sparse-switch v32, :sswitch_data_0

    .line 6708
    const/16 v32, 0x0

    .line 6711
    :goto_0
    return v32

    .line 6373
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v32

    const v33, 0x24007

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 6710
    :cond_0
    :goto_1
    const v32, 0xc366

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Landroid/util/EventLog;->writeEvent(II)I

    .line 6711
    const/16 v32, 0x1

    goto :goto_0

    .line 6377
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string/jumbo v33, "send WPS_OVERLAP_EVENT Broadcast"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    #calls: Landroid/net/wifi/WifiStateMachine;->sendErrorBroadcast(I)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$12000(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_1

    .line 6381
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$8700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v26

    .line 6386
    .local v26, state:Landroid/net/wifi/SupplicantState;
    invoke-static/range {v26 .. v26}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v32

    if-nez v32, :cond_2

    .line 6387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    sget-object v33, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_1

    .line 6388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$7100(Landroid/net/wifi/WifiStateMachine;)V

    .line 6390
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$11000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$12100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 6399
    :cond_2
    sget-object v32, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    sget-object v33, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_0

    .line 6402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$7100(Landroid/net/wifi/WifiStateMachine;)V

    .line 6403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$9900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6408
    .end local v26           #state:Landroid/net/wifi/SupplicantState;
    :sswitch_3
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    goto/16 :goto_1

    .line 6411
    :sswitch_4
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    goto/16 :goto_1

    .line 6414
    :sswitch_5
    invoke-static {}, Landroid/net/wifi/WifiNative;->reassociateCommand()Z

    goto/16 :goto_1

    .line 6417
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 6418
    .local v17, netId:I
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 6427
    .local v10, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_3

    .line 6428
    invoke-static {v10}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v17

    .line 6434
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v32

    const v33, 0x20056

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 6436
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 6437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastExplicitNetworkId:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$12302(Landroid/net/wifi/WifiStateMachine;I)I

    .line 6438
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkChoiceTime:J
    invoke-static/range {v32 .. v34}, Landroid/net/wifi/WifiStateMachine;->access$12402(Landroid/net/wifi/WifiStateMachine;J)J

    .line 6439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mNextWifiActionExplicit:Z
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$12502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 6442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$12700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6430
    :cond_3
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)V

    goto :goto_2

    .line 6445
    .end local v10           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v17           #netId:I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v32

    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WpsStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 6446
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWaitForWpsCompletionState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$12800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$12900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6450
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v32

    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WpsStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 6453
    :sswitch_9
    const-string v32, "WifiStateMachine"

    const-string v33, "WPS: WPS_SUCCESS_EVENT"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->sendWPSSuccessBroadcast()V
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$13000(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 6457
    :sswitch_a
    const-string v32, "WifiStateMachine"

    const-string v33, "WPS: WPS_FAIL_EVENT"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->sendWPSFailBroadcast()V
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$13100(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 6461
    :sswitch_b
    sget-boolean v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v32, :cond_0

    .line 6462
    monitor-enter p0

    .line 6463
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v32

    const-string/jumbo v33, "phone"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 6464
    .local v16, mTelephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CTRL-RSP-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6465
    .local v4, MsgDetail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiStateMachine;->CtrlMsg(Ljava/lang/String;)Z

    .line 6466
    monitor-exit p0

    goto/16 :goto_1

    .end local v4           #MsgDetail:Ljava/lang/String;
    .end local v16           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v32

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v32

    .line 6470
    :sswitch_c
    sget-boolean v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v32, :cond_0

    .line 6471
    monitor-enter p0

    .line 6472
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v32

    const-string/jumbo v33, "phone"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 6473
    .restart local v16       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CTRL-DAT-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6475
    .restart local v4       #MsgDetail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiStateMachine;->CtrlMsg(Ljava/lang/String;)Z

    .line 6476
    monitor-exit p0

    goto/16 :goto_1

    .end local v4           #MsgDetail:Ljava/lang/String;
    .end local v16           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :catchall_1
    move-exception v32

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v32

    .line 6480
    :sswitch_d
    sget-boolean v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v32, :cond_0

    .line 6481
    const-string v5, "CTRL-DAT-"

    .local v5, MsgDetail0:Ljava/lang/String;
    const-string v4, "FAIL"

    .line 6484
    .restart local v4       #MsgDetail:Ljava/lang/String;
    const/16 v27, 0x0

    .line 6485
    .local v27, szAutn:Ljava/lang/String;
    const/16 v32, 0x3

    :try_start_2
    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 6487
    .local v28, szRand:[Ljava/lang/String;
    const-string/jumbo v32, "phone"

    invoke-static/range {v32 .. v32}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 6489
    .local v18, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    const/4 v7, 0x0

    .line 6491
    .local v7, aszRspResult:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    .local v30, szTmpMsg0:Ljava/lang/String;
    move-object/from16 v29, v30

    .line 6492
    .local v29, szTmpMsg:Ljava/lang/String;
    const/16 v32, 0x3a

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 6493
    .local v6, MsgEnd:I
    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v6, v0, :cond_4

    .line 6494
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v6

    .line 6495
    :cond_4
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6496
    add-int/lit8 v32, v6, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    .line 6497
    const/16 v32, 0x3a

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 6498
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v6, v0, :cond_5

    .line 6499
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 6500
    add-int/lit8 v32, v6, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    .line 6503
    :cond_5
    const-string v32, "gsm.sim.types"

    const-string v33, ""

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 6506
    .local v21, simType:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 6507
    .local v23, simType3G:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 6508
    .local v22, simType2G:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_DBDM_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 6509
    .local v24, simTypeDBDM:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_WIBRO_ONLY_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 6511
    .local v25, simTypeWIBRO_ONLY:Ljava/lang/String;
    const-string v32, "AUTH_AKA-"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 6512
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_6

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_6

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 6513
    :cond_6
    move-object/from16 v27, v29

    .line 6514
    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v33, 0xe1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 6515
    const/4 v9, 0x0

    .line 6516
    .local v9, bundle:Landroid/os/Bundle;
    const/4 v12, 0x0

    .line 6518
    .local v12, i:I
    const-string v32, "WifiStateMachine"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "AKA: szRand[0] ="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    aget-object v34, v28, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6519
    const-string v32, "WifiStateMachine"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "AKA: szAutn = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6521
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget-object v33, v28, v33

    #calls: Landroid/net/wifi/WifiStateMachine;->hexStringToByteArray(Ljava/lang/String;)[B
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)[B

    move-result-object v19

    .line 6522
    .local v19, rand:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    #calls: Landroid/net/wifi/WifiStateMachine;->hexStringToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)[B

    move-result-object v8

    .line 6523
    .local v8, autn:[B
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/htc/service/HtcTelephonyManager;->akaAuthentication([B[B)Landroid/os/Bundle;

    move-result-object v9

    .line 6525
    if-eqz v9, :cond_8

    .line 6526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string/jumbo v33, "res"

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v20

    .line 6527
    .local v20, res:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string v33, "Ck"

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 6528
    .local v2, Ck:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string v33, "Ik"

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 6529
    .local v3, Ik:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string/jumbo v33, "kc"

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v15

    .line 6531
    .local v15, kc:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "OK:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6535
    const-string v32, "WifiStateMachine"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "AKA: bundle != NULL, MsgDetail= "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 6635
    .end local v2           #Ck:Ljava/lang/String;
    .end local v3           #Ik:Ljava/lang/String;
    .end local v6           #MsgEnd:I
    .end local v7           #aszRspResult:[Ljava/lang/String;
    .end local v8           #autn:[B
    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v12           #i:I
    .end local v15           #kc:Ljava/lang/String;
    .end local v18           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v19           #rand:[B
    .end local v20           #res:Ljava/lang/String;
    .end local v21           #simType:Ljava/lang/String;
    .end local v22           #simType2G:Ljava/lang/String;
    .end local v23           #simType3G:Ljava/lang/String;
    .end local v24           #simTypeDBDM:Ljava/lang/String;
    .end local v25           #simTypeWIBRO_ONLY:Ljava/lang/String;
    .end local v28           #szRand:[Ljava/lang/String;
    .end local v29           #szTmpMsg:Ljava/lang/String;
    .end local v30           #szTmpMsg0:Ljava/lang/String;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->CtrlMsg(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 6538
    .restart local v6       #MsgEnd:I
    .restart local v7       #aszRspResult:[Ljava/lang/String;
    .restart local v8       #autn:[B
    .restart local v9       #bundle:Landroid/os/Bundle;
    .restart local v12       #i:I
    .restart local v18       #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .restart local v19       #rand:[B
    .restart local v21       #simType:Ljava/lang/String;
    .restart local v22       #simType2G:Ljava/lang/String;
    .restart local v23       #simType3G:Ljava/lang/String;
    .restart local v24       #simTypeDBDM:Ljava/lang/String;
    .restart local v25       #simTypeWIBRO_ONLY:Ljava/lang/String;
    .restart local v28       #szRand:[Ljava/lang/String;
    .restart local v29       #szTmpMsg:Ljava/lang/String;
    .restart local v30       #szTmpMsg0:Ljava/lang/String;
    :cond_8
    :try_start_3
    const-string v32, "WifiStateMachine"

    const-string v33, "AKA: bundle == NULL "

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6539
    const-string v4, "FAIL"

    goto :goto_3

    .line 6544
    .end local v8           #autn:[B
    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v12           #i:I
    .end local v19           #rand:[B
    :cond_9
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "008800812210"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v33, v28, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "10"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 6545
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 6546
    if-eqz v7, :cond_b

    .line 6547
    const/16 v32, 0x0

    aget-object v32, v7, v32

    const-string v33, "110"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    const/16 v32, 0x1

    aget-object v32, v7, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x6e

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x6a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "9000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x0

    const/16 v34, 0x4

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string v33, "DB08"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x14

    const/16 v34, 0x16

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string v33, "10"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x36

    const/16 v34, 0x38

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string v33, "10"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x58

    const/16 v34, 0x5a

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string v33, "08"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 6554
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "OK:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x4

    const/16 v35, 0x14

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x16

    const/16 v35, 0x36

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x38

    const/16 v35, 0x58

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x5a

    const/16 v35, 0x6a

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6565
    :goto_4
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 6560
    :cond_a
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "FAIL:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 6563
    :cond_b
    const-string v4, "FAIL"

    goto :goto_4

    .line 6569
    :cond_c
    const-string/jumbo v4, "null"

    goto/16 :goto_3

    .line 6571
    :cond_d
    const-string v32, "AUTH_SIM-"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 6572
    const/16 v32, 0x3a

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 6573
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v6, v0, :cond_e

    .line 6574
    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 6575
    const/16 v32, 0x2

    add-int/lit8 v33, v6, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 6578
    :cond_e
    const-string v4, "OK"

    .line 6579
    const/4 v13, 0x0

    .local v13, ii:I
    :goto_5
    const/16 v32, 0x3

    move/from16 v0, v32

    if-ge v13, v0, :cond_7

    .line 6580
    aget-object v32, v28, v13

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x20

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    .line 6581
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_f

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_f

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 6582
    :cond_f
    const-string v29, "008800801110"

    .line 6587
    :goto_6
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    aget-object v33, v28, v13

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 6589
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 6590
    if-eqz v7, :cond_15

    .line 6591
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_10

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_10

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 6592
    :cond_10
    const/16 v32, 0x0

    aget-object v32, v7, v32

    const-string v33, "32"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    const/16 v32, 0x1

    aget-object v32, v7, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x20

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x1c

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "9000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x0

    const/16 v34, 0x2

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string v33, "04"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0xa

    const/16 v34, 0xc

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string v33, "08"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 6597
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x2

    const/16 v35, 0xa

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0xc

    const/16 v35, 0x1c

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6622
    :goto_7
    const/4 v7, 0x0

    .line 6579
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 6583
    :cond_11
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 6584
    const-string v29, "A088000010"

    goto/16 :goto_6

    .line 6601
    :cond_12
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "FAIL:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6602
    goto/16 :goto_3

    .line 6606
    :cond_13
    const/16 v32, 0x0

    aget-object v32, v7, v32

    const-string v33, "28"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_14

    const/16 v32, 0x1

    aget-object v32, v7, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1c

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x18

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "9000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_14

    .line 6609
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x0

    const/16 v35, 0x8

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x8

    const/16 v35, 0x18

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    .line 6613
    :cond_14
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "FAIL:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6614
    goto/16 :goto_3

    .line 6619
    :cond_15
    const-string v4, "FAIL"

    .line 6620
    goto/16 :goto_3

    .line 6625
    :cond_16
    const-string v4, "FAIL"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 6626
    goto/16 :goto_3

    .line 6632
    .end local v6           #MsgEnd:I
    .end local v7           #aszRspResult:[Ljava/lang/String;
    .end local v13           #ii:I
    .end local v18           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v21           #simType:Ljava/lang/String;
    .end local v22           #simType2G:Ljava/lang/String;
    .end local v23           #simType3G:Ljava/lang/String;
    .end local v24           #simTypeDBDM:Ljava/lang/String;
    .end local v25           #simTypeWIBRO_ONLY:Ljava/lang/String;
    .end local v28           #szRand:[Ljava/lang/String;
    .end local v29           #szTmpMsg:Ljava/lang/String;
    .end local v30           #szTmpMsg0:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 6633
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 6639
    .end local v4           #MsgDetail:Ljava/lang/String;
    .end local v5           #MsgDetail0:Ljava/lang/String;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v27           #szAutn:Ljava/lang/String;
    :sswitch_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v32

    if-eqz v32, :cond_0

    .line 6640
    new-instance v14, Landroid/content/Intent;

    const-string v32, "android.net.wifi.AKA_INVALID_SIM"

    move-object/from16 v0, v32

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6641
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6642
    const-string v32, "WifiStateMachine"

    const-string v33, "AKA: set intent AKA_INVALID_SIM_CHANGED_ACTION"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6646
    .end local v14           #intent:Landroid/content/Intent;
    :sswitch_f
    sget-boolean v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$9000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 6647
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CTRL-DAT-AIR_MODE-0:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "airplane_mode_on"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6649
    .restart local v4       #MsgDetail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiStateMachine;->CtrlMsg(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 6653
    .end local v4           #MsgDetail:Ljava/lang/String;
    :sswitch_10
    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v33, 0x50

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 6654
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v32

    if-eqz v32, :cond_0

    .line 6655
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    .line 6656
    .local v31, typeData:Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v32, "android.net.wifi.EAP_NOTIFICATION"

    move-object/from16 v0, v32

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6657
    .restart local v14       #intent:Landroid/content/Intent;
    const-string/jumbo v32, "typeData"

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6658
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6659
    const-string v32, "WifiStateMachine"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "AKA: set intent EAP_NOTIFICATION_CHANGED_ACTION, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6666
    .end local v14           #intent:Landroid/content/Intent;
    .end local v31           #typeData:Ljava/lang/String;
    :sswitch_11
    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v33, 0xe5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_18

    .line 6667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$9600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v32

    if-eqz v32, :cond_17

    .line 6668
    const/16 v32, -0x1

    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    .line 6676
    :goto_8
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 6670
    :cond_17
    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    goto :goto_8

    .line 6673
    :cond_18
    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    goto :goto_8

    .line 6679
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$5702(Landroid/net/wifi/WifiStateMachine;I)I

    .line 6680
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$5602(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6683
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchSSID()Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 6684
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$13400(Landroid/net/wifi/WifiStateMachine;)V

    .line 6685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 6686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 6688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$13500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 6690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNextWifiActionExplicit:Z
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$12500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v32

    if-eqz v32, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastExplicitNetworkId:I
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$12300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkChoiceTime:J
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiStateMachine;->access$12400(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v34

    const-wide/32 v36, 0x1d4c0

    add-long v34, v34, v36

    cmp-long v32, v32, v34

    if-gez v32, :cond_19

    .line 6694
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiInfo;->setExplicitConnect(Z)V

    .line 6696
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mNextWifiActionExplicit:Z
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$12502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 6698
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    sget-object v33, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$9400(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 6699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$13600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6700
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$13700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$13800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6704
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$7100(Landroid/net/wifi/WifiStateMachine;)V

    .line 6705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$9900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$13900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6371
    :sswitch_data_0
    .sparse-switch
        0x20020 -> :sswitch_f
        0x20021 -> :sswitch_10
        0x2004a -> :sswitch_3
        0x2004b -> :sswitch_4
        0x2004c -> :sswitch_5
        0x20056 -> :sswitch_6
        0x20059 -> :sswitch_7
        0x2005d -> :sswitch_8
        0x24003 -> :sswitch_12
        0x24004 -> :sswitch_13
        0x24005 -> :sswitch_11
        0x24006 -> :sswitch_2
        0x24007 -> :sswitch_0
        0x24008 -> :sswitch_1
        0x2400b -> :sswitch_9
        0x2400c -> :sswitch_a
        0x2400d -> :sswitch_b
        0x2400e -> :sswitch_c
        0x2400f -> :sswitch_d
        0x24010 -> :sswitch_e
    .end sparse-switch
.end method
