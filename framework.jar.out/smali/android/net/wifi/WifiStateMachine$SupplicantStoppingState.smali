.class Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 5837
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5841
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5843
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopSupplicant()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5844
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "Failed to stop supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5848
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20011

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$8104(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 5851
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 5852
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7100(Landroid/net/wifi/WifiStateMachine;)V

    .line 5853
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v0, v4}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;I)V

    .line 5854
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V
    invoke-static {v0, v4}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 5855
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v0

    const v1, 0x2006f

    invoke-virtual {v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 5856
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v0

    const v1, 0x2007a

    invoke-virtual {v0, v1}, Landroid/net/wifi/WpsStateMachine;->sendMessage(I)V

    .line 5857
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mHaveIpAddress:Z
    invoke-static {v0, v4}, Landroid/net/wifi/WifiStateMachine;->access$8202(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5858
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    const/16 v4, 0xd8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5862
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 5930
    :goto_0
    return v0

    .line 5864
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Supplicant connection received while stopping"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5929
    :cond_0
    :goto_1
    const v0, 0xc366

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(II)I

    move v0, v1

    .line 5930
    goto :goto_0

    .line 5869
    :sswitch_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->clearWepErrorNotification()V

    .line 5874
    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    .line 5875
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 5877
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v2, v4, :cond_1

    .line 5878
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$CwHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5879
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "[C+W] quit from CwHandler++"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5880
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$CwHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine$CwHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 5886
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_2

    .line 5887
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;I)V

    .line 5891
    :cond_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v2, v4, :cond_3

    .line 5892
    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W] reset c+w register state when disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5893
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    .line 5896
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$8400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 5899
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 5900
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Timed out on a supplicant stop, kill and proceed"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5902
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->clearWepErrorNotification()V

    .line 5904
    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    .line 5905
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 5906
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 5924
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 5862
    nop

    :sswitch_data_0
    .sparse-switch
        0x20001 -> :sswitch_3
        0x20002 -> :sswitch_3
        0x2000b -> :sswitch_3
        0x2000c -> :sswitch_3
        0x2000d -> :sswitch_3
        0x2000e -> :sswitch_3
        0x20011 -> :sswitch_2
        0x20015 -> :sswitch_3
        0x20018 -> :sswitch_3
        0x20048 -> :sswitch_3
        0x20049 -> :sswitch_3
        0x2004d -> :sswitch_3
        0x20050 -> :sswitch_3
        0x20054 -> :sswitch_3
        0x20055 -> :sswitch_3
        0x2005a -> :sswitch_3
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
