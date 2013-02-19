.class Lcom/htc/server/WirelessDisplayService$WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method private constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1537
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService$WifiReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 1540
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1541
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1542
    .local v1, curMirrState:I
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiReceiver: action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1544
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1545
    .local v2, curWifiState:I
    const-string v5, "previous_wifi_state"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1547
    .local v3, preWifiState:I
    if-nez v3, :cond_0

    if-ne v2, v8, :cond_0

    .line 1548
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1549
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1550
    const-string v5, "WirelessDisplayService"

    const-string v6, "WIFI Trun OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1552
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    .line 1556
    :cond_0
    if-ne v2, v8, :cond_1

    .line 1557
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->updateNotification()V
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$2700(Lcom/htc/server/WirelessDisplayService;)V

    .line 1572
    .end local v2           #curWifiState:I
    .end local v3           #preWifiState:I
    :cond_1
    :goto_0
    return-void

    .line 1558
    :cond_2
    const-string v5, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1559
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1561
    .local v4, state:I
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wifi AP state changed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    if-ne v4, v10, :cond_1

    .line 1564
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1565
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1566
    const-string v5, "WirelessDisplayService"

    const-string v6, "WIFI AP Trun OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    goto :goto_0
.end method
