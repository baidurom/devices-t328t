.class Landroid/net/wifi/WifiStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 6856
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/16 v7, 0xd8

    const/16 v6, 0x3d

    const/4 v3, 0x3

    .line 6860
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$15102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 6861
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$15200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$15300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 6862
    const-string v1, "WifiStateMachine"

    const-string v2, "VzwStatus[Connected]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6863
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$15302(Landroid/net/wifi/WifiStateMachine;I)I

    .line 6864
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$15400(Landroid/net/wifi/WifiStateMachine;I)I

    .line 6869
    :cond_0
    const v1, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 6870
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$15508(Landroid/net/wifi/WifiStateMachine;)I

    .line 6871
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6872
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x20053

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 6876
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v6, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v6, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v7, :cond_3

    .line 6879
    :cond_2
    const-string v1, "WifiStateMachine"

    const-string v2, "EVENT_INTERFACE_CONFIGURATION_SUCCEEDED setPreConfigAPHigherPriority"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6880
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)V

    .line 6884
    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v7, :cond_4

    .line 6885
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$15600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6887
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] connected with C+W AP, start registration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6888
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C+W] bssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6890
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 6892
    .local v0, ip:Ljava/lang/String;
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C+W] ip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6894
    const-string v1, "cdma.wifi.ip"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6895
    const-string v1, "cdma.wifi.bssid"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6897
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->resetCwRetryCounter()V

    .line 6898
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-wide/16 v2, 0x3e8

    #calls: Landroid/net/wifi/WifiStateMachine;->triggerCWRegister(J)V
    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$15700(Landroid/net/wifi/WifiStateMachine;J)V

    .line 6903
    .end local v0           #ip:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7028
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$15102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7031
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$16300(Landroid/net/wifi/WifiStateMachine;)V

    .line 7032
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$16400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const-string v1, "WifiStateMachine"

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->requestNetworkTransitionWakelock(Ljava/lang/String;)Z

    .line 7037
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7038
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe5

    if-ne v0, v1, :cond_2

    .line 7039
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$9600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7040
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    .line 7048
    :cond_0
    :goto_0
    return-void

    .line 7042
    :cond_1
    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    goto :goto_0

    .line 7045
    :cond_2
    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .parameter "message"

    .prologue
    const-wide/16 v11, 0xbb8

    const v10, 0x20053

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 6907
    const/4 v1, 0x1

    .line 6908
    .local v1, eventLoggingEnabled:Z
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 7024
    :cond_0
    :goto_0
    return v7

    .line 6910
    :sswitch_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    .line 6912
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$14000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6914
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$14000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v5

    const v7, 0x30006

    invoke-virtual {v5, v7}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 7021
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 7022
    const v5, 0xc366

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v5, v7}, Landroid/util/EventLog;->writeEvent(II)I

    :cond_2
    move v7, v6

    .line 7024
    goto :goto_0

    .line 6917
    :sswitch_1
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 6918
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_3

    .line 6919
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/DhcpInfoInternal;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v7, v5}, Landroid/net/wifi/WifiStateMachine;->access$14100(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V

    goto :goto_1

    .line 6920
    :cond_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v8, :cond_1

    .line 6924
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration(Z)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiStateMachine;->access$14400(Landroid/net/wifi/WifiStateMachine;Z)V

    goto :goto_1

    .line 6929
    :sswitch_2
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 6930
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiStateMachine;->access$15800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 6933
    :sswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v8, :cond_1

    .line 6934
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v7, 0x2004a

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 6935
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v5, p1}, Landroid/net/wifi/WifiStateMachine;->access$15900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 6939
    :sswitch_4
    const/4 v1, 0x0

    .line 6945
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xe5

    if-ne v5, v6, :cond_5

    .line 6946
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$9600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6947
    const/4 v5, -0x2

    invoke-static {v5}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    goto :goto_0

    .line 6949
    :cond_4
    invoke-static {v8}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    goto :goto_0

    .line 6952
    :cond_5
    invoke-static {v8}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    goto :goto_0

    .line 6958
    :sswitch_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 6959
    .local v3, netId:I
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v5, v3, :cond_0

    goto :goto_1

    .line 6964
    .end local v3           #netId:I
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 6965
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v4

    .line 6966
    .local v4, result:Landroid/net/wifi/NetworkUpdateResult;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v7

    if-ne v5, v7, :cond_1

    .line 6967
    invoke-virtual {v4}, Landroid/net/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6968
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v7, "Reconfiguring IP on connection"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6970
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6971
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6972
    const-string/jumbo v5, "linkProperties"

    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6973
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6975
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/State;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$13700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiStateMachine;->access$16000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6977
    .end local v2           #intent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {v4}, Landroid/net/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6978
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v7, "Reconfiguring proxy on connection"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6979
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$16100(Landroid/net/wifi/WifiStateMachine;)V

    .line 6980
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$16200(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 6987
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #result:Landroid/net/wifi/NetworkUpdateResult;
    :sswitch_7
    const-string v5, "WifiStateMachine"

    const-string v7, "ConnectedState WifiMonitor.NETWORK_CONNECTION_EVENT, start DHCP renew"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6988
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$14000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6989
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$14000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v5

    const v7, 0x30003

    invoke-virtual {v5, v7}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 6994
    :sswitch_8
    const/4 v1, 0x0

    .line 6995
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    if-ne v5, v8, :cond_7

    .line 6997
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$13400(Landroid/net/wifi/WifiStateMachine;)V

    .line 6998
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v8, v10, v9, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7, v11, v12}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 7002
    :cond_7
    const-string v5, "WifiStateMachine"

    const-string v7, "RSSI Polling has completed"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7006
    :sswitch_9
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_8

    move v5, v6

    :goto_2
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v8, v5}, Landroid/net/wifi/WifiStateMachine;->access$1602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7007
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$15508(Landroid/net/wifi/WifiStateMachine;)I

    .line 7008
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7011
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, -0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$5802(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7013
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$13400(Landroid/net/wifi/WifiStateMachine;)V

    .line 7014
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v8, v10, v9, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7, v11, v12}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    :cond_8
    move v5, v7

    .line 7006
    goto :goto_2

    .line 6908
    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_4
        0x20048 -> :sswitch_3
        0x2004a -> :sswitch_2
        0x20052 -> :sswitch_9
        0x20053 -> :sswitch_8
        0x20056 -> :sswitch_5
        0x20057 -> :sswitch_6
        0x24003 -> :sswitch_7
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_1
    .end sparse-switch
.end method
