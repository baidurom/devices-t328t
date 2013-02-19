.class Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method private constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1593
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1596
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1597
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 1598
    .local v2, curMirrState:I
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1599
    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 1600
    .local v5, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1601
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v8, v9, :cond_1

    .line 1604
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[WFDERR][1] ConnectivityReceiver: mCurNetworkInterface"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1606
    const-string v8, "WirelessDisplayService"

    const-string v9, "[WFDERR][1] ConnectivityReceiver: receiver wifi disconnected, wait20000sec"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1608
    .local v7, stopWi:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const-wide/16 v9, 0x4e20

    invoke-virtual {v8, v7, v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1609
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x11

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1610
    .local v4, msgWifiScan:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1640
    .end local v4           #msgWifiScan:Landroid/os/Message;
    .end local v5           #networkInfo:Landroid/net/NetworkInfo;
    .end local v7           #stopWi:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1613
    .restart local v5       #networkInfo:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v8, v9, :cond_0

    .line 1615
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1617
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1618
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v9, 0x3

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static {v8, v9}, Lcom/htc/server/WirelessDisplayService;->access$302(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1619
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1620
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[REVY][0] Wifi disconnet and resume in short time. mCurNetworkInterface"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v8

    if-nez v8, :cond_2

    .line 1624
    const-string v8, "WirelessDisplayService"

    const-string v9, " ConnectivityReceiver: receiver wifi connected, wivu is null, start wivu"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1626
    .local v3, getIp:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1628
    .end local v3           #getIp:Landroid/os/Message;
    :cond_2
    const-string v8, "WirelessDisplayService"

    const-string v9, " ConnectivityReceiver: receiver wifi connected, wivu is not null, setInterface"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1630
    .local v1, b:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x1f

    const/16 v10, 0x27

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 1631
    .local v6, setif:Landroid/os/Message;
    const-string v8, "interface"

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    invoke-virtual {v6, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1633
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
