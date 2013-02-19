.class Lcom/android/server/WifiService$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 1006
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Intent received: ACTION_QUICKBOOT_POWEROFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mEnablingWifiInterrupted:Z
    invoke-static {v2, v6}, Lcom/android/server/WifiService;->access$3502(Lcom/android/server/WifiService;Z)Z

    .line 1008
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 1009
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Wifi is still starting up"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/16 v1, 0xf

    .line 1011
    .local v1, waitSecond:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    if-ne v2, v5, :cond_0

    if-lez v1, :cond_0

    .line 1012
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quickboot - Wait for the end of wifi starting up: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1020
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1021
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mEnablingWifiInterrupted:Z
    invoke-static {v2, v7}, Lcom/android/server/WifiService;->access$3502(Lcom/android/server/WifiService;Z)Z

    .line 1022
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Power-off interrupt wifi starting up"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .end local v1           #waitSecond:I
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mQuickBootPowerOffIntentReceived:Z
    invoke-static {v2, v7}, Lcom/android/server/WifiService;->access$3602(Lcom/android/server/WifiService;Z)Z

    .line 1033
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "wireless_display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1034
    .local v0, mWDManager:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v0, :cond_2

    .line 1035
    const-string v2, "WifiService"

    const-string v3, "setFingerGestureEnable to false"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {v0, v6}, Lcom/htc/service/WirelessDisplayManager;->setFingerGestureEnable(Z)V

    .line 1039
    :cond_2
    return-void

    .line 1025
    .end local v0           #mWDManager:Lcom/htc/service/WirelessDisplayManager;
    .restart local v1       #waitSecond:I
    :cond_3
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Wifi started"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1015
    :catch_0
    move-exception v2

    goto :goto_1
.end method
