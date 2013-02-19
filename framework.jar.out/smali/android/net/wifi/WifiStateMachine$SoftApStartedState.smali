.class Landroid/net/wifi/WifiStateMachine$SoftApStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 7343
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private getAssocCount(Ljava/lang/String;)I
    .locals 4
    .parameter "assoc"

    .prologue
    const/4 v1, 0x0

    .line 7588
    if-nez p1, :cond_1

    .line 7603
    :cond_0
    :goto_0
    return v1

    .line 7591
    :cond_1
    const-string/jumbo v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 7592
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 7595
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7598
    .local v0, clientNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 7600
    .local v1, count:I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 7601
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 7347
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 7348
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 16
    .parameter "message"

    .prologue
    .line 7355
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 7579
    const/4 v11, 0x0

    .line 7582
    :goto_0
    return v11

    .line 7359
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v11

    const/16 v12, 0xc

    if-eq v11, v12, :cond_0

    .line 7360
    const/4 v11, 0x0

    goto :goto_0

    .line 7365
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v12, 0xa

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;I)V

    .line 7367
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;)V

    .line 7378
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$1800()Z

    move-result v11

    if-nez v11, :cond_1

    .line 7379
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->stopTethering()V
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$18100(Landroid/net/wifi/WifiStateMachine;)V

    .line 7383
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$4102(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7384
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 7385
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7388
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7394
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3

    .line 7395
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v12, 0xb

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;I)V

    .line 7396
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 7397
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$18200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7581
    :cond_4
    :goto_2
    const v11, 0xc366

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-static {v11, v12}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7582
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 7389
    :catch_0
    move-exception v3

    .line 7390
    .local v3, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v12, "Exception in stopAccessPoint()"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 7406
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_1
    const-string v11, "WifiStateMachine"

    const-string v12, "SoftAP set on a running access point"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7409
    const/4 v11, 0x0

    :try_start_1
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$18302(Z)Z

    .line 7410
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 7411
    .local v10, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 7412
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v11, v10}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    .line 7413
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$18400()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 7414
    const-string v11, "WifiStateMachine"

    const-string v12, "NeedConfig AutoChannel"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7415
    const/4 v11, 0x1

    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$18302(Z)Z

    .line 7416
    const/4 v11, 0x0

    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$18402(Z)Z

    .line 7424
    :cond_5
    :goto_3
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$18300()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 7425
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v12, "set wifi hotspot"

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 7427
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 7428
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 7430
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "wlan0"

    invoke-interface {v11, v12, v13, v14}, Landroid/os/INetworkManagementService;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 7434
    .end local v10           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :catch_1
    move-exception v3

    .line 7435
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in softap set "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7438
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$4102(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7439
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 7440
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7442
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    .line 7443
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 7444
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 7446
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "wlan0"

    invoke-interface {v12, v11, v13, v14}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 7449
    :catch_2
    move-exception v4

    .line 7450
    .local v4, ee:Ljava/lang/Exception;
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not restart softap after set failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7451
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v13, 0x20002

    const/16 v14, 0xe

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 7418
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ee:Ljava/lang/Exception;
    .restart local v10       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_d
    if-nez v10, :cond_5

    .line 7419
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v11

    if-nez v11, :cond_5

    .line 7420
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V

    .line 7421
    const/4 v11, 0x1

    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$18302(Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 7460
    .end local v10           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v11

    const/16 v12, 0xb

    if-eq v11, v12, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10

    .line 7462
    invoke-static {}, Landroid/net/wifi/WifiNative;->startSupplicant()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 7463
    const-string v11, "WifiStateMachine"

    const-string v12, "Supplicant start successful"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7464
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 7465
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$18500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7467
    const/4 v11, 0x1

    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$18602(Z)Z

    goto/16 :goto_2

    .line 7470
    :cond_f
    const-string v11, "WifiStateMachine"

    const-string v12, "Cannot start supplicant with a running soft AP"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7471
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x4

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_2

    .line 7474
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 7485
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 7486
    .local v7, stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$1800()Z

    move-result v11

    if-nez v11, :cond_11

    .line 7487
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v11

    const/16 v12, 0xb

    if-eq v11, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v11

    const/16 v12, 0xa

    if-eq v11, v12, :cond_4

    .line 7489
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v12, v7, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    #calls: Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$18700(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    goto/16 :goto_2

    .line 7492
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v12, v7, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    #calls: Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$18700(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 7493
    const-string v11, "WifiStateMachine"

    const-string/jumbo v12, "skip transit to mTetheringState"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 7500
    .end local v7           #stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 7501
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, v0}, Landroid/net/wifi/WifiStateMachine;->access$18800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_2

    .line 7505
    :sswitch_5
    const-string v11, "WifiStateMachine"

    const-string v12, "WIFIAP:Connection request.."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7506
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 7507
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 7508
    .local v6, mac:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7509
    .local v8, time:J
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.net.hotspot.connecitonrequest"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7510
    .local v5, intent:Landroid/content/Intent;
    const-string/jumbo v11, "hotspot_block_mac"

    invoke-virtual {v5, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7511
    const-string/jumbo v11, "hotspot_lastest_time_of_request"

    invoke-virtual {v5, v11, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7512
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7518
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #mac:Ljava/lang/String;
    .end local v8           #time:J
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->getAssocListStr()Ljava/lang/String;

    move-result-object v1

    .line 7519
    .local v1, assocList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->getAssocCount(Ljava/lang/String;)I

    move-result v12

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$4102(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7520
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;)V

    .line 7521
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SoftAP update assoc list: mUser="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7522
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 7523
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7527
    .end local v1           #assocList:Ljava/lang/String;
    :sswitch_7
    const-string v11, "WifiStateMachine"

    const-string v12, "WIFIAP:MAC_LIST_PROFILE_CHANGE.."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7529
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 7530
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v11, v2}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    .line 7532
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V

    .line 7533
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 7537
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->notifyAssocListChange()V

    goto/16 :goto_2

    .line 7534
    :catch_3
    move-exception v3

    .line 7535
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in update mac list fail "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 7543
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/wifi/WpsInfo;

    invoke-interface {v12, v11}, Landroid/os/INetworkManagementService;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V

    .line 7544
    const-string v11, "WifiStateMachine"

    const-string v12, "OK to startWpsRegistrar()"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_2

    .line 7545
    :catch_4
    move-exception v3

    .line 7546
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "WifiStateMachine"

    const-string v12, "Exception in startWpsRegistrar()"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 7551
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    invoke-interface {v11}, Landroid/os/INetworkManagementService;->stopWpsRegistrar()V

    .line 7552
    const-string v11, "WifiStateMachine"

    const-string v12, "OK to stopWpsRegistrar()"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_2

    .line 7553
    :catch_5
    move-exception v3

    .line 7554
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "WifiStateMachine"

    const-string v12, "Exception in stopWpsRegistrar()"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 7558
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.WPS_REGISTRAR_START"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7561
    :sswitch_b
    const-string v11, "WifiStateMachine"

    const-string v12, "WPS_REGISTRAR_SUCCESSFUL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7562
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.WPS_REGISTRAR_SUCCESSFUL"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7565
    :sswitch_c
    const-string v11, "WifiStateMachine"

    const-string v12, "WPS_REGISTRAR_FAIL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7566
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.WPS_REGISTRAR_FAIL"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7570
    :sswitch_d
    const-string v11, "WifiStateMachine"

    const-string v12, "L2PE_SUCCESSFUL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7571
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.L2PE_SUCCESSFUL"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7574
    :sswitch_e
    const-string v11, "WifiStateMachine"

    const-string v12, "L2PE_FAIL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7575
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.L2PE_FAIL"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7355
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_0
        0x2001d -> :sswitch_3
        0x20061 -> :sswitch_8
        0x20062 -> :sswitch_9
        0x20063 -> :sswitch_a
        0x20064 -> :sswitch_b
        0x20065 -> :sswitch_c
        0x20066 -> :sswitch_d
        0x20067 -> :sswitch_e
        0x2007b -> :sswitch_5
        0x2007c -> :sswitch_6
        0x2007d -> :sswitch_7
        0x23001 -> :sswitch_4
    .end sparse-switch
.end method
