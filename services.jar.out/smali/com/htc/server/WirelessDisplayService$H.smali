.class final Lcom/htc/server/WirelessDisplayService$H;
.super Landroid/os/Handler;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 556
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 67
    .parameter "msg"

    .prologue
    .line 560
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v58, v0

    .line 561
    .local v58, type:I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 562
    .local v9, arg1:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 563
    .local v10, arg2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v43

    .line 565
    .local v43, previousState:I
    sparse-switch v58, :sswitch_data_0

    .line 1409
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 567
    :sswitch_0
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "HANDLE_CHANGE_STATE state="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " err="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/16 v62, 0x8

    move/from16 v0, v43

    move/from16 v1, v62

    if-ne v0, v1, :cond_1

    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v9, v0, :cond_1

    .line 570
    const-string v62, "WirelessDisplayService"

    const-string v63, "[WFDERR][2] Wait 90000 secs and dongle not found."

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 573
    :cond_1
    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v9, v0, :cond_2

    .line 575
    const/16 v62, 0x33

    const/16 v63, 0x35

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2, v10}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v27

    .line 576
    .local v27, msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 581
    .end local v27           #msg2:Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v9, v10}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto :goto_0

    .line 584
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v62

    if-lez v62, :cond_4

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$310(Lcom/htc/server/WirelessDisplayService;)I

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v62

    if-nez v62, :cond_3

    .line 587
    const-string v62, "WirelessDisplayService"

    const-string v63, "wifi scan fail!"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_3
    const/16 v62, 0x11

    const/16 v63, 0x0

    const/16 v64, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v36

    .line 589
    .local v36, msgWifiScan:Landroid/os/Message;
    const-wide/16 v62, 0x1770

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 591
    .end local v36           #msgWifiScan:Landroid/os/Message;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x3

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$302(Lcom/htc/server/WirelessDisplayService;I)I

    goto/16 :goto_0

    .line 595
    :sswitch_2
    new-instance v42, Landroid/content/Intent;

    const-string v62, "com.android.internal.app.intent.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v42

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .local v42, notifyUserSwitch:Landroid/content/Intent;
    const-string v62, "visible"

    const/16 v63, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 598
    const-string v62, "WirelessDisplayService"

    const-string v63, "Disable INTENT_WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 601
    .end local v42           #notifyUserSwitch:Landroid/content/Intent;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v61

    .line 602
    .local v61, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v61, :cond_0

    .line 605
    invoke-virtual/range {v61 .. v61}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v19

    .line 606
    .local v19, ipAddress:I
    move/from16 v54, v19

    .line 607
    .local v54, temp:I
    const-string v62, "%d.%d.%d.%d"

    const/16 v63, 0x4

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v65, v0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v65

    aput-object v65, v63, v64

    const/16 v64, 0x1

    shr-int/lit8 v65, v19, 0x8

    move/from16 v0, v65

    and-int/lit16 v0, v0, 0xff

    move/from16 v65, v0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v65

    aput-object v65, v63, v64

    const/16 v64, 0x2

    shr-int/lit8 v65, v19, 0x10

    move/from16 v0, v65

    and-int/lit16 v0, v0, 0xff

    move/from16 v65, v0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v65

    aput-object v65, v63, v64

    const/16 v64, 0x3

    shr-int/lit8 v65, v19, 0x18

    move/from16 v0, v65

    and-int/lit16 v0, v0, 0xff

    move/from16 v65, v0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v65

    aput-object v65, v63, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 612
    .local v20, ipStr:Ljava/lang/String;
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "HANDLE_GET_DEVICE_IP:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, "  "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Ljava/util/regex/Pattern;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 614
    .local v24, matcher2:Ljava/util/regex/Matcher;
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v62

    if-eqz v62, :cond_7

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v62

    const-string v63, "0.0.0.0"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v62

    if-nez v62, :cond_7

    .line 615
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Got the IP address"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    if-nez v62, :cond_6

    .line 617
    new-instance v62, Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v64, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v64 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v64

    const-string v65, "3655"

    invoke-direct/range {v62 .. v65}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 618
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v62

    const/16 v63, -0x1

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_5

    .line 619
    const-string v62, "WirelessDisplayService"

    const-string v63, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 636
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 623
    :cond_5
    const-string v62, "WirelessDisplayService"

    const-string v63, "HANDLE_GET_DEVICE_IP: REQ_SET_MCAST_ROUTE, clearOldRoute = false"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 626
    .local v12, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v62

    const/16 v63, 0x1f

    const/16 v64, 0x191

    const/16 v65, -0x1

    invoke-virtual/range {v62 .. v65}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v49

    .line 627
    .local v49, setif:Landroid/os/Message;
    const-string v62, "interfaceRoute"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, v49

    invoke-virtual {v0, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 629
    invoke-virtual/range {v49 .. v49}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 633
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v49           #setif:Landroid/os/Message;
    :cond_6
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    const/16 v64, 0x0

    invoke-virtual/range {v62 .. v64}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    .line 634
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto :goto_1

    .line 637
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v62

    if-eqz v62, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    if-eqz v62, :cond_0

    .line 638
    const/16 v62, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 639
    .local v17, getIp:Landroid/os/Message;
    const-wide/16 v62, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 643
    .end local v17           #getIp:Landroid/os/Message;
    .end local v19           #ipAddress:I
    .end local v20           #ipStr:Ljava/lang/String;
    .end local v24           #matcher2:Ljava/util/regex/Matcher;
    .end local v54           #temp:I
    .end local v61           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :sswitch_4
    const-string v62, "WirelessDisplayService"

    const-string v63, "HANDLE_STOP_DIS"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/16 v62, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/net/ConnectivityManager;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 646
    .local v5, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_a

    .line 647
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v62

    const/16 v63, 0x1

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_8

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->setInterface(Ljava/lang/String;)V

    .line 649
    const-string v62, "WirelessDisplayService"

    const-string v63, "Wifi Connected, don\'t exit netHDencode"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_2
    const/16 v62, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 663
    const/16 v62, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 664
    const/16 v62, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 665
    const/16 v62, 0x1

    const/16 v63, 0x1

    const/16 v64, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v30

    .line 666
    .local v30, msgChangeState:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->clearDongleCache()V
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/List;->clear()V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v62

    const/16 v63, 0x49

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 651
    .end local v30           #msgChangeState:Landroid/os/Message;
    :cond_8
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    if-eqz v62, :cond_9

    .line 652
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 654
    :cond_9
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    goto/16 :goto_2

    .line 657
    :cond_a
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    if-eqz v62, :cond_b

    .line 658
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 660
    :cond_b
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    goto/16 :goto_2

    .line 683
    .end local v5           #activeNetwork:Landroid/net/NetworkInfo;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Landroid/media/AudioManager;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v62

    if-eqz v62, :cond_c

    .line 684
    const-string v62, "WirelessDisplayService"

    const-string v63, "HANDLE_TIMEOUT_STOP, But Music Keep Playing, Wait 2 min later"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v62

    const/16 v63, 0x4

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v34

    .line 686
    .local v34, msgTimeOut:Landroid/os/Message;
    const-wide/32 v62, 0x1d4c0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 688
    .end local v34           #msgTimeOut:Landroid/os/Message;
    :cond_c
    const-string v62, "WirelessDisplayService"

    const-string v63, "HANDLE_TIMEOUT_STOP"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/16 v62, 0x1f

    const/16 v63, 0x21

    const/16 v64, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v56

    .line 690
    .local v56, timeOutStop:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 695
    .end local v56           #timeOutStop:Landroid/os/Message;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 698
    :sswitch_7
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "HANDLE_STOP_TRANSMIT: transmit:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    if-eqz v62, :cond_0

    .line 700
    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v9, v0, :cond_d

    .line 701
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x1

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 703
    :cond_d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 707
    :sswitch_8
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "HANDLE_TURN_OFF_CONCURRENT_HOTSPOT, getWifidisplayApEnabled: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v64, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v64 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, "Mirror State: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/16 v62, 0x1

    move/from16 v0, v43

    move/from16 v1, v62

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v62

    if-eqz v62, :cond_0

    .line 709
    new-instance v62, Lcom/htc/server/WirelessDisplayService$H$1;

    move-object/from16 v0, v62

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$H$1;-><init>(Lcom/htc/server/WirelessDisplayService$H;)V

    invoke-virtual/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService$H$1;->start()V

    goto/16 :goto_0

    .line 719
    :sswitch_9
    const-string v62, "WirelessDisplayService"

    const-string v63, "HANDLE_WIFI_DIS"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    goto/16 :goto_0

    .line 723
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v62

    if-nez v62, :cond_0

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v63

    new-instance v64, Landroid/content/Intent;

    const-string v65, "com.htc.wifidisplay.IWfdService"

    invoke-direct/range {v64 .. v65}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v65, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v65 .. v65}, Lcom/htc/server/WirelessDisplayService;->access$2200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v65

    const/16 v66, 0x1

    invoke-virtual/range {v63 .. v66}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v63

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$2102(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 726
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Bind WHDMI WfdService = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v64, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v64 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 730
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v62

    if-eqz v62, :cond_e

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$2200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$2102(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$2302(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 734
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Unbind WfdService = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v64, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v64 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_e
    const/16 v62, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 737
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    const/16 v63, 0x1

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 740
    :sswitch_c
    const-string v62, "WirelessDisplayService"

    const-string v63, "HANDLE_RESET_WDS_USABLE_FLAG"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/16 v62, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 745
    :sswitch_d
    move v13, v9

    .line 746
    .local v13, configState:I
    const/16 v62, 0x3

    move/from16 v0, v62

    if-eq v9, v0, :cond_f

    const/16 v62, 0x4

    move/from16 v0, v62

    if-ne v9, v0, :cond_12

    .line 747
    :cond_f
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "receiver WfdServices Call back, "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v25, Landroid/content/Intent;

    const-string v62, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v25

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    .local v25, mirrorResultIntent:Landroid/content/Intent;
    const/16 v62, 0x3

    move/from16 v0, v62

    if-ne v9, v0, :cond_11

    .line 750
    const-string v62, "RESULT"

    const-string v63, "SUCCESS"

    move-object/from16 v0, v25

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_finishService()V
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 751
    :cond_11
    const/16 v62, 0x4

    move/from16 v0, v62

    if-ne v9, v0, :cond_10

    .line 752
    const-string v62, "RESULT"

    const-string v63, "FAIL"

    move-object/from16 v0, v25

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto :goto_3

    .line 757
    .end local v25           #mirrorResultIntent:Landroid/content/Intent;
    :cond_12
    const/16 v62, 0x5

    move/from16 v0, v62

    if-ne v9, v0, :cond_0

    .line 758
    const/16 v62, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 767
    .end local v13           #configState:I
    :sswitch_e
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "HANDLE_WIFI_SCAN_RESULT_AVAILABLE, dongle scan = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v9, v0, :cond_13

    const/16 v62, 0x1

    :goto_4
    move-object/from16 v0, v63

    move/from16 v1, v62

    #calls: Lcom/htc/server/WirelessDisplayService;->constructDongleInfoFromWifi(Z)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$2600(Lcom/htc/server/WirelessDisplayService;Z)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateNotification()V
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$2700(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 768
    :cond_13
    const/16 v62, 0x0

    goto :goto_4

    .line 774
    :sswitch_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v62

    const-string v63, "wivu_res"

    invoke-virtual/range {v62 .. v63}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 775
    .local v52, status:Ljava/lang/String;
    const/16 v62, 0x3e

    move/from16 v0, v62

    if-ne v9, v0, :cond_16

    .line 777
    const-string v62, "WirelessDisplayService"

    move-object/from16 v0, v62

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v10, v0, :cond_15

    .line 779
    const-string v62, "VALUE=1"

    move-object/from16 v0, v52

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v62

    if-eqz v62, :cond_14

    .line 780
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    const/16 v63, 0x1

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v62

    if-eqz v62, :cond_0

    const/16 v62, 0x1

    move/from16 v0, v43

    move/from16 v1, v62

    if-ne v0, v1, :cond_0

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x2

    const/16 v64, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v62 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 784
    const/16 v62, 0x1

    const/16 v63, 0x1

    const/16 v64, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v55

    .line 785
    .local v55, timeOut2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v62

    const-wide/32 v63, 0x15f90

    move-object/from16 v0, v62

    move-object/from16 v1, v55

    move-wide/from16 v2, v63

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 788
    .end local v55           #timeOut2:Landroid/os/Message;
    :cond_14
    const-string v62, "VALUE=0"

    move-object/from16 v0, v52

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v62

    if-eqz v62, :cond_0

    .line 789
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 792
    :cond_15
    const/16 v62, -0x1

    move/from16 v0, v62

    if-ne v10, v0, :cond_0

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x1

    const/16 v64, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v62 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 795
    :cond_16
    const/16 v62, 0x3f

    move/from16 v0, v62

    if-ne v9, v0, :cond_19

    .line 797
    const-string v62, "WirelessDisplayService"

    move-object/from16 v0, v62

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v10, v0, :cond_18

    .line 799
    const-string v62, "VALUE=1"

    move-object/from16 v0, v52

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v62

    if-eqz v62, :cond_17

    .line 800
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2900()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    const/16 v63, 0x1

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 802
    :cond_17
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2900()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 803
    :cond_18
    const/16 v62, -0x1

    move/from16 v0, v62

    if-ne v10, v0, :cond_0

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x1

    const/16 v64, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v62 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 806
    :cond_19
    const/16 v62, 0x40

    move/from16 v0, v62

    if-ne v9, v0, :cond_1a

    .line 807
    const-string v62, "WirelessDisplayService"

    move-object/from16 v0, v62

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 808
    :cond_1a
    const/16 v62, 0x41

    move/from16 v0, v62

    if-eq v9, v0, :cond_0

    .line 810
    const/16 v62, 0x42

    move/from16 v0, v62

    if-ne v9, v0, :cond_0

    .line 811
    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v10, v0, :cond_0

    .line 812
    move-object/from16 v57, v52

    .line 813
    .local v57, tosend:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v57

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$3000(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 818
    .end local v52           #status:Ljava/lang/String;
    .end local v57           #tosend:Ljava/lang/String;
    :sswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v62

    const-string v63, "wivu_req"

    invoke-virtual/range {v62 .. v63}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 819
    .local v46, request:Ljava/lang/String;
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "WIVU_REQ:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    if-eqz v46, :cond_22

    const/16 v62, 0x16

    move/from16 v0, v62

    if-ne v9, v0, :cond_22

    .line 822
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v62

    const/16 v63, 0x16

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 823
    const/16 v62, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 824
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3200()Ljava/util/regex/Pattern;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    .line 825
    .local v23, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v62

    if-eqz v62, :cond_1b

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v63

    #setter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$3302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 827
    :cond_1b
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3400()Ljava/util/regex/Pattern;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    .line 828
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v62

    if-eqz v62, :cond_1c

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v63

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$3502(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 830
    :cond_1c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/regex/Pattern;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    .line 831
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v62

    if-eqz v62, :cond_1d

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v63

    #setter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$3702(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 833
    :cond_1d
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "IP = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v64, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v64 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$3300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ", audioPort = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v64, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v64 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$3500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ", videoPort = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v64, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v64 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$3700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$3300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v64, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v64 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$3500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v65, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v65 .. v65}, Lcom/htc/server/WirelessDisplayService;->access$3700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v65

    #calls: Lcom/htc/server/WirelessDisplayService;->setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v62 .. v65}, Lcom/htc/server/WirelessDisplayService;->access$3800(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v62

    if-eqz v62, :cond_21

    const/16 v62, 0x2

    move/from16 v0, v43

    move/from16 v1, v62

    if-eq v0, v1, :cond_1e

    const/16 v62, 0x7

    move/from16 v0, v43

    move/from16 v1, v62

    if-ne v0, v1, :cond_21

    .line 838
    :cond_1e
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    if-eqz v62, :cond_20

    const/16 v62, 0x7

    move/from16 v0, v43

    move/from16 v1, v62

    if-ne v0, v1, :cond_20

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v63

    monitor-enter v63

    .line 840
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v62

    if-eqz v62, :cond_1f

    .line 841
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v62

    const/16 v64, 0x29

    const/16 v65, 0x2a

    const/16 v66, 0x2c

    move-object/from16 v0, v62

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v28

    .line 842
    .local v28, msg3:Landroid/os/Message;
    const/16 v62, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 844
    const-wide/16 v64, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 848
    .end local v28           #msg3:Landroid/os/Message;
    :goto_5
    monitor-exit v63

    goto/16 :goto_0

    :catchall_0
    move-exception v62

    monitor-exit v63
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v62

    .line 846
    :cond_1f
    :try_start_1
    const-string v62, "WirelessDisplayService"

    const-string v64, "Application wants to PAUSE so ignore WIVUSTART"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 849
    :cond_20
    const/16 v62, 0x2

    move/from16 v0, v43

    move/from16 v1, v62

    if-ne v0, v1, :cond_0

    .line 850
    const/16 v62, 0x33

    const/16 v63, 0x34

    const/16 v64, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v26

    .line 852
    .local v26, msg1:Landroid/os/Message;
    const-wide/16 v62, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 857
    .end local v26           #msg1:Landroid/os/Message;
    :cond_21
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    if-eqz v62, :cond_0

    .line 858
    const-string v62, "WirelessDisplayService"

    const-string v63, "Dongle wrong state: take it out"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x1

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 860
    const/16 v62, 0x1f

    const/16 v63, 0x21

    const/16 v64, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v22

    .line 861
    .local v22, makeSure:Landroid/os/Message;
    const-wide/16 v62, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 864
    .end local v22           #makeSure:Landroid/os/Message;
    .end local v23           #matcher:Ljava/util/regex/Matcher;
    :cond_22
    const/16 v62, 0x17

    move/from16 v0, v62

    if-ne v9, v0, :cond_26

    .line 866
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v62

    const/16 v63, 0x17

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 867
    const/16 v62, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 868
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    if-eqz v62, :cond_23

    .line 869
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v62

    if-eqz v62, :cond_23

    const/16 v62, 0x7

    move/from16 v0, v43

    move/from16 v1, v62

    if-eq v0, v1, :cond_23

    .line 871
    const-string v62, "WirelessDisplayService"

    const-string v63, "Stop Initialized by Dongle, stop transmitting packets after timeout of 16sec"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/16 v62, 0x6

    const/16 v63, -0x1

    const/16 v64, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v53

    .line 873
    .local v53, stopTrans:Landroid/os/Message;
    const-wide/16 v62, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 876
    .end local v53           #stopTrans:Landroid/os/Message;
    :cond_23
    const/16 v62, 0x1

    move/from16 v0, v43

    move/from16 v1, v62

    if-eq v0, v1, :cond_24

    .line 877
    const/16 v62, 0x7

    move/from16 v0, v43

    move/from16 v1, v62

    if-ne v0, v1, :cond_25

    .line 886
    const-string v62, "WirelessDisplayService"

    const-string v63, "Receive WIVUSTOP in APP_PAUSE State"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_24
    :goto_6
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Ljava/lang/Boolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v62

    if-eqz v62, :cond_0

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v62

    if-eqz v62, :cond_0

    .line 898
    const-string v62, "WirelessDisplayService"

    const-string v63, "Switching the dongle"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 901
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$4102(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 888
    :cond_25
    const/16 v62, 0x1

    const/16 v63, 0x1

    const/16 v64, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v31

    .line 889
    .local v31, msgChangeState1:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    .line 904
    .end local v31           #msgChangeState1:Landroid/os/Message;
    :cond_26
    const/16 v62, 0x18

    move/from16 v0, v62

    if-ne v9, v0, :cond_27

    .line 905
    const-string v62, "="

    move-object/from16 v0, v46

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 906
    .local v21, macs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v21

    #calls: Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v62

    if-eqz v62, :cond_0

    const/16 v62, 0x8

    move/from16 v0, v43

    move/from16 v1, v62

    if-ne v0, v1, :cond_0

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    invoke-interface/range {v62 .. v63}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v62

    if-eqz v62, :cond_0

    .line 909
    const-string v62, "WirelessDisplayService"

    const-string v63, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/16 v62, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 915
    .end local v21           #macs:[Ljava/lang/String;
    :cond_27
    const/16 v62, 0x19

    move/from16 v0, v62

    if-ne v9, v0, :cond_0

    .line 916
    const-string v62, "WirelessDisplayService"

    const-string v63, "SWUPGRADE and send notification"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateFWUpgradeNotification()V
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$4300(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 996
    .end local v46           #request:Ljava/lang/String;
    :sswitch_11
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    if-eqz v62, :cond_0

    .line 998
    const/16 v62, 0x20

    move/from16 v0, v62

    if-ne v9, v0, :cond_28

    .line 999
    const-string v62, "WirelessDisplayService"

    const-string v63, "REQ_DISCOVERY"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestDiscover()V

    goto/16 :goto_0

    .line 1001
    :cond_28
    const/16 v62, 0x21

    move/from16 v0, v62

    if-ne v9, v0, :cond_2a

    .line 1003
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "REQ_PLUGGED:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/16 v45, -0x1

    .line 1005
    .local v45, req:I
    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v10, v0, :cond_29

    .line 1006
    const/16 v62, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1007
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x1

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v45

    goto/16 :goto_0

    .line 1011
    :cond_29
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v45

    .line 1012
    const/16 v62, 0x1

    const/16 v63, 0x1

    const/16 v64, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v32

    .line 1013
    .local v32, msgChangeState2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1017
    .end local v32           #msgChangeState2:Landroid/os/Message;
    .end local v45           #req:I
    :cond_2a
    const/16 v62, 0x22

    move/from16 v0, v62

    if-ne v9, v0, :cond_2b

    .line 1019
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDiscoveryStatus()I

    goto/16 :goto_0

    .line 1021
    :cond_2b
    const/16 v62, 0x23

    move/from16 v0, v62

    if-ne v9, v0, :cond_2c

    .line 1023
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getPluggedStatus()I

    goto/16 :goto_0

    .line 1025
    :cond_2c
    const/16 v62, 0x24

    move/from16 v0, v62

    if-ne v9, v0, :cond_2d

    .line 1027
    const-string v62, "WirelessDisplayService"

    const-string v63, "REQ_STOP_DIS"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 1029
    const/16 v62, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1030
    const/16 v62, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1031
    const/16 v62, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1032
    const/16 v62, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1034
    const/16 v62, 0x1

    const/16 v63, 0x1

    const/16 v64, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    .line 1035
    .local v33, msgChangeState3:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1039
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/List;->clear()V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v62

    const/16 v63, 0x49

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 1046
    .end local v33           #msgChangeState3:Landroid/os/Message;
    :cond_2d
    const/16 v62, 0x25

    move/from16 v0, v62

    if-ne v9, v0, :cond_2e

    .line 1047
    const-string v62, "WirelessDisplayService"

    const-string v63, "REQ_PEER_SELECT"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/16 v62, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1049
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v62

    const-string v63, "dongle_bssid"

    invoke-virtual/range {v62 .. v63}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1050
    .local v11, bssid2:Ljava/lang/String;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v0, v11}, Lcom/htc/server/WirelessDisplayService$WivuThread;->selectPeer(Ljava/lang/String;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1052
    .end local v11           #bssid2:Ljava/lang/String;
    :cond_2e
    const/16 v62, 0x27

    move/from16 v0, v62

    if-ne v9, v0, :cond_30

    .line 1053
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "REQ_SET_INTERFACE:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v62

    const-string v63, "interface"

    invoke-virtual/range {v62 .. v63}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1055
    .local v18, ifname:Ljava/lang/String;
    const/16 v45, -0x1

    .line 1056
    .restart local v45       #req:I
    if-eqz v18, :cond_0

    .line 1057
    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v10, v0, :cond_2f

    .line 1058
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, v18

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v45

    .line 1062
    :goto_7
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1060
    :cond_2f
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, v18

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v45

    goto :goto_7

    .line 1065
    .end local v18           #ifname:Ljava/lang/String;
    .end local v45           #req:I
    :cond_30
    const/16 v62, 0x28

    move/from16 v0, v62

    if-ne v9, v0, :cond_32

    .line 1066
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "REQ_JOIN_GROUP:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/16 v45, -0x1

    .line 1068
    .restart local v45       #req:I
    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v10, v0, :cond_31

    .line 1069
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x1

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    move-result v45

    goto/16 :goto_0

    .line 1071
    :cond_31
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    goto/16 :goto_0

    .line 1074
    .end local v45           #req:I
    :cond_32
    const/16 v62, 0x191

    move/from16 v0, v62

    if-ne v9, v0, :cond_0

    .line 1075
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "REQ_SET_MCAST_ROUTE:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v62

    const-string v63, "interfaceRoute"

    invoke-virtual/range {v62 .. v63}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1077
    .restart local v18       #ifname:Ljava/lang/String;
    const/16 v45, -0x1

    .line 1078
    .restart local v45       #req:I
    if-eqz v18, :cond_0

    .line 1079
    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v10, v0, :cond_33

    .line 1080
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, v18

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v45

    goto/16 :goto_0

    .line 1082
    :cond_33
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, v18

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 1089
    .end local v18           #ifname:Ljava/lang/String;
    .end local v45           #req:I
    :sswitch_12
    const/16 v62, 0x34

    move/from16 v0, v62

    if-ne v9, v0, :cond_36

    .line 1091
    const-string v62, "WirelessDisplayService"

    const-string v63, "MEDIA_START"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/16 v62, 0x3

    move/from16 v0, v43

    move/from16 v1, v62

    if-eq v0, v1, :cond_0

    .line 1097
    const/16 v50, -0x1

    .line 1098
    .local v50, star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v50

    .line 1099
    if-nez v50, :cond_34

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x3

    const/16 v64, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v62 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1101
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStart()Z

    goto/16 :goto_0

    .line 1104
    :cond_34
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    if-eqz v62, :cond_35

    .line 1105
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1106
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x1

    const/16 v64, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v62 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1108
    .end local v50           #star:I
    :cond_36
    const/16 v62, 0x35

    move/from16 v0, v62

    if-ne v9, v0, :cond_38

    .line 1110
    const-string v62, "WirelessDisplayService"

    const-string v63, "MEDIA_STOP"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/16 v62, 0x4

    move/from16 v0, v43

    move/from16 v1, v62

    if-ne v0, v1, :cond_37

    .line 1116
    :cond_37
    const/16 v50, -0x1

    .line 1117
    .restart local v50       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)I

    move-result v50

    .line 1119
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStop()Z

    goto/16 :goto_0

    .line 1120
    .end local v50           #star:I
    :cond_38
    const/16 v62, 0x36

    move/from16 v0, v62

    if-ne v9, v0, :cond_0

    .line 1121
    const-string v62, "WirelessDisplayService"

    const-string v63, "MEDIA_RESTART"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/16 v50, -0x1

    .line 1123
    .restart local v50       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v63

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v50

    .line 1127
    const/16 v62, -0x1

    move/from16 v0, v50

    move/from16 v1, v62

    if-ne v0, v1, :cond_0

    .line 1128
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    if-eqz v62, :cond_39

    .line 1129
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1130
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x1

    const/16 v64, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v62 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1136
    .end local v50           #star:I
    :sswitch_13
    move/from16 v51, v43

    .line 1137
    .local v51, state:I
    const/4 v15, 0x0

    .line 1139
    .local v15, err:I
    const/16 v62, 0x1

    move/from16 v0, v43

    move/from16 v1, v62

    if-eq v0, v1, :cond_0

    .line 1141
    const/16 v62, 0x2b

    move/from16 v0, v62

    if-ne v9, v0, :cond_3d

    .line 1142
    const-string v62, "WirelessDisplayService"

    const-string v63, "MEDIA_PAUSE event"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const/16 v62, 0x2c

    move/from16 v0, v62

    if-ne v10, v0, :cond_3b

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)I

    move-result v7

    .line 1145
    .local v7, app:I
    if-nez v7, :cond_3a

    .line 1146
    const/16 v51, 0x7

    .line 1156
    .end local v7           #app:I
    :cond_3a
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move/from16 v1, v51

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v15}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1147
    :cond_3b
    const/16 v62, 0x2d

    move/from16 v0, v62

    if-ne v10, v0, :cond_3c

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$4700(Lcom/htc/server/WirelessDisplayService;)V

    .line 1149
    const/16 v51, 0x4

    goto :goto_8

    .line 1150
    :cond_3c
    const/16 v62, 0x2e

    move/from16 v0, v62

    if-ne v10, v0, :cond_3a

    .line 1151
    const-string v62, "WirelessDisplayService"

    const-string v63, "MEDIA_PAUSE: CALL_PAUSE event"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)I

    move-result v7

    .line 1153
    .restart local v7       #app:I
    if-nez v7, :cond_3a

    .line 1154
    const/16 v51, 0x9

    goto :goto_8

    .line 1157
    .end local v7           #app:I
    :cond_3d
    const/16 v62, 0x2a

    move/from16 v0, v62

    if-ne v9, v0, :cond_0

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v63

    monitor-enter v63

    .line 1159
    :try_start_2
    const-string v62, "WirelessDisplayService"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "MEDIA_RESUME event, App Resutest: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v65, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v65 .. v65}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v62

    if-nez v62, :cond_3e

    .line 1161
    monitor-exit v63

    goto/16 :goto_0

    .line 1199
    :catchall_1
    move-exception v62

    monitor-exit v63
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v62

    .line 1163
    :cond_3e
    const/16 v62, 0x2c

    move/from16 v0, v62

    if-ne v10, v0, :cond_42

    .line 1164
    const/16 v62, 0x7

    move/from16 v0, v43

    move/from16 v1, v62

    if-ne v0, v1, :cond_3f

    .line 1165
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v64, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v64 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v8

    .line 1166
    .local v8, app2:I
    if-nez v8, :cond_40

    .line 1167
    const/16 v51, 0x3

    .line 1198
    .end local v8           #app2:I
    :cond_3f
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move/from16 v1, v51

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v15}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1199
    monitor-exit v63

    goto/16 :goto_0

    .line 1169
    .restart local v8       #app2:I
    :cond_40
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    if-eqz v62, :cond_41

    .line 1170
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v64, 0x0

    move-object/from16 v0, v62

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1171
    :cond_41
    const/16 v51, 0x1

    .line 1172
    const/4 v15, -0x4

    goto :goto_9

    .line 1175
    .end local v8           #app2:I
    :cond_42
    const/16 v62, 0x2d

    move/from16 v0, v62

    if-ne v10, v0, :cond_43

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$4700(Lcom/htc/server/WirelessDisplayService;)V

    .line 1183
    const/16 v51, 0x3

    goto :goto_9

    .line 1184
    :cond_43
    const/16 v62, 0x2e

    move/from16 v0, v62

    if-ne v10, v0, :cond_3f

    .line 1185
    const-string v62, "WirelessDisplayService"

    const-string v64, "MEDIA_RESUME: CALL_PAUSE event"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/16 v62, 0x9

    move/from16 v0, v43

    move/from16 v1, v62

    if-ne v0, v1, :cond_3f

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v64, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v64 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v8

    .line 1188
    .restart local v8       #app2:I
    if-nez v8, :cond_44

    .line 1189
    const/16 v51, 0x3

    goto :goto_9

    .line 1191
    :cond_44
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    if-eqz v62, :cond_45

    .line 1192
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v62

    const/16 v64, 0x0

    move-object/from16 v0, v62

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1193
    :cond_45
    const/16 v51, 0x1

    .line 1194
    const/4 v15, -0x4

    goto/16 :goto_9

    .line 1217
    .end local v8           #app2:I
    .end local v15           #err:I
    .end local v51           #state:I
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$4800(Lcom/htc/server/WirelessDisplayService;)Z

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    const-string v64, "/data/misc/wifidisplay.conf"

    #calls: Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v63 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$5000(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$4902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1221
    :sswitch_15
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "HANDLE_PROCESS_WFDSERVICE, mWfdServiceRetryCount: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v64, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v64 .. v64}, Lcom/htc/server/WirelessDisplayService;->access$5100(Lcom/htc/server/WirelessDisplayService;)I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ", arg:"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v62

    if-nez v62, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$5100(Lcom/htc/server/WirelessDisplayService;)I

    move-result v62

    if-lez v62, :cond_46

    .line 1223
    const/16 v62, 0x70

    const/16 v63, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v9, v2}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v35

    .line 1224
    .local v35, msgUseWfdService:Landroid/os/Message;
    const-wide/16 v62, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1225
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "WfdService not ready, resent, type = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$5110(Lcom/htc/server/WirelessDisplayService;)I

    goto/16 :goto_0

    .line 1227
    .end local v35           #msgUseWfdService:Landroid/os/Message;
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v62

    if-eqz v62, :cond_48

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x5

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$5102(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1229
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v62

    if-eqz v62, :cond_47

    .line 1230
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1231
    const/16 v62, 0x13

    const/16 v63, 0x0

    const/16 v64, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v47

    .line 1232
    .local v47, resetWFD_Flag:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v62

    const-wide/32 v63, 0x249f0

    move-object/from16 v0, v62

    move-object/from16 v1, v47

    move-wide/from16 v2, v63

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1233
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Use WfdService, type = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_0

    .line 1236
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x3

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;I)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v63

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_0

    .line 1249
    .end local v47           #resetWFD_Flag:Landroid/os/Message;
    :cond_47
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Can\'t use WfdService, WfdService is processing ignore message, type = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1252
    :cond_48
    const-string v62, "WirelessDisplayService"

    const-string v63, "Can\'t use WfdService, WfdService bind false during 2 sec"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1256
    :sswitch_16
    move v4, v9

    .line 1257
    .local v4, absoluteDirection:I
    move/from16 v44, v10

    .line 1258
    .local v44, relativeDirection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move/from16 v1, v44

    #calls: Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I
    invoke-static {v0, v4, v1}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;II)I

    move-result v16

    .line 1259
    .local v16, fingerIndicator:I
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "HANDLE_FINGER_GESTURE_DIRECTION, fingerIndicator = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5500()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    const/16 v63, 0x1

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v62

    const/16 v63, 0x1

    invoke-virtual/range {v62 .. v63}, Landroid/net/wifi/WifiManager;->startDongleSingleCscan(I)Z

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move/from16 v1, v16

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$5602(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1263
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v62

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v63

    const/16 v64, 0x6f

    const/16 v65, 0x1

    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v16

    move/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v63

    const-wide/16 v64, 0x3e8

    invoke-virtual/range {v62 .. v65}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1266
    .end local v4           #absoluteDirection:I
    .end local v16           #fingerIndicator:I
    .end local v44           #relativeDirection:I
    :sswitch_17
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5500()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v62

    if-nez v62, :cond_49

    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v10, v0, :cond_49

    .line 1267
    const-string v62, "WirelessDisplayService"

    const-string v63, "ignore HANDLE_FINGER_GESTURE, due to already handle, it is error handling message"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1269
    :cond_49
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5500()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1270
    const/16 v62, 0x3

    move/from16 v0, v62

    if-ne v9, v0, :cond_4b

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v62

    if-eqz v62, :cond_4a

    .line 1272
    const-string v62, "WirelessDisplayService"

    const-string v63, "Stop mirror mode from finger gesture indicator."

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    invoke-virtual/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto/16 :goto_0

    .line 1275
    :cond_4a
    const-string v62, "WirelessDisplayService"

    const-string v63, "Notify DLNA Service 3-finer down, mirror state is false"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    new-instance v40, Landroid/content/Intent;

    const-string v62, "com.android.internal.app.intent.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

    move-object/from16 v0, v40

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1277
    .local v40, notifyDLNA_MirrrorOff:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1281
    .end local v40           #notifyDLNA_MirrrorOff:Landroid/content/Intent;
    :cond_4b
    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v9, v0, :cond_0

    .line 1283
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v62

    if-eqz v62, :cond_4c

    .line 1284
    const-string v62, "WirelessDisplayService"

    const-string v63, "Pre Load DLNA Services"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    new-instance v63, Landroid/content/Intent;

    const-string v64, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct/range {v63 .. v64}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v62 .. v63}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1292
    :cond_4c
    :goto_a
    const/16 v62, 0x3

    move/from16 v0, v43

    move/from16 v1, v62

    if-eq v0, v1, :cond_4d

    const/16 v62, 0x7

    move/from16 v0, v43

    move/from16 v1, v62

    if-ne v0, v1, :cond_4e

    .line 1293
    :cond_4d
    new-instance v25, Landroid/content/Intent;

    const-string v62, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v25

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1294
    .restart local v25       #mirrorResultIntent:Landroid/content/Intent;
    const-string v62, "RESULT"

    const-string v63, "SUCCESS"

    move-object/from16 v0, v25

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1296
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "mirror mode status: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " ,ignore finger gesture, sendBroadcast Intent with SUCCESS "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/16 v62, 0x7

    move/from16 v0, v43

    move/from16 v1, v62

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v62

    if-nez v62, :cond_0

    .line 1298
    const-string v62, "WirelessDisplayService"

    const-string v63, "Notify DLNA Service user want to mirror replace DLNA"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    new-instance v39, Landroid/content/Intent;

    const-string v62, "com.android.internal.app.intent.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_REPLACE"

    move-object/from16 v0, v39

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v39, notifyDLNA_Mirror_Replace:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1287
    .end local v25           #mirrorResultIntent:Landroid/content/Intent;
    .end local v39           #notifyDLNA_Mirror_Replace:Landroid/content/Intent;
    :catch_0
    move-exception v48

    .line 1288
    .local v48, se:Ljava/lang/SecurityException;
    const-string v62, "WirelessDisplayService"

    const-string v63, "Pre Load DLNA Services occur SecurityException "

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1303
    .end local v48           #se:Ljava/lang/SecurityException;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->getEnvironmentDongleState()I
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$5800(Lcom/htc/server/WirelessDisplayService;)I

    move-result v14

    .line 1304
    .local v14, environmentDongleState:I
    const-string v62, "WirelessDisplayService"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Start mirror mode from finger gesture indicator, environmentDonleState = "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    new-instance v38, Landroid/content/Intent;

    const-string v62, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    move-object/from16 v0, v38

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1306
    .local v38, notifyConfigerTool:Landroid/content/Intent;
    new-instance v37, Landroid/content/Intent;

    const-string v62, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    move-object/from16 v0, v37

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1307
    .local v37, notifyConfigToolToConfig:Landroid/content/Intent;
    new-instance v41, Landroid/content/Intent;

    const-string v62, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    move-object/from16 v0, v41

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1308
    .local v41, notifyNormalConfigTool:Landroid/content/Intent;
    const/high16 v62, 0x1000

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1309
    const/high16 v62, 0x1000

    move-object/from16 v0, v37

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1310
    const/high16 v62, 0x1000

    move-object/from16 v0, v41

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1311
    new-instance v25, Landroid/content/Intent;

    const-string v62, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v25

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1312
    .restart local v25       #mirrorResultIntent:Landroid/content/Intent;
    const-string v62, "RESULT"

    const-string v63, "FAIL"

    move-object/from16 v0, v25

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v62

    if-nez v62, :cond_50

    .line 1315
    const-string v62, "WirelessDisplayService"

    const-string v63, "FINGER GESTURE, WIFI DISABLED"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v62

    if-eqz v62, :cond_4f

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1320
    :cond_4f
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1321
    :catch_1
    move-exception v6

    .line 1322
    .local v6, ae:Landroid/content/ActivityNotFoundException;
    const-string v62, "WirelessDisplayService"

    const-string v63, "ActivityNotFoundException, intent: notifyNormalConfigTool "

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1326
    .end local v6           #ae:Landroid/content/ActivityNotFoundException;
    :cond_50
    packed-switch v14, :pswitch_data_1

    .line 1390
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v62

    if-eqz v62, :cond_56

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1328
    :pswitch_2
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v62

    if-eqz v62, :cond_51

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1332
    :cond_51
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 1333
    :catch_2
    move-exception v6

    .line 1334
    .restart local v6       #ae:Landroid/content/ActivityNotFoundException;
    const-string v62, "WirelessDisplayService"

    const-string v63, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1340
    .end local v6           #ae:Landroid/content/ActivityNotFoundException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    const/16 v63, 0xa

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v62 .. v63}, Lcom/htc/server/WirelessDisplayService;->access$5102(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1344
    const/16 v62, 0xb

    const/16 v63, -0x1

    const/16 v64, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    .line 1345
    .local v29, msgBindWfdService:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1346
    const/16 v62, 0x70

    const/16 v63, 0x0

    const/16 v64, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v35

    .line 1347
    .restart local v35       #msgUseWfdService:Landroid/os/Message;
    const-wide/16 v62, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1354
    .end local v29           #msgBindWfdService:Landroid/os/Message;
    .end local v35           #msgUseWfdService:Landroid/os/Message;
    :pswitch_4
    const/16 v62, 0x1

    move/from16 v0, v62

    if-ne v10, v0, :cond_52

    .line 1355
    const-string v62, "WirelessDisplayService"

    const-string v63, "Don\'t receive Wifi Scan, it\'s Timer trigger, trigger Configuration Tool"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1358
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v60

    .line 1359
    .local v60, unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface/range {v60 .. v60}, Ljava/util/List;->size()I

    move-result v62

    if-lez v62, :cond_54

    .line 1360
    const/16 v62, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v62

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/htc/service/DongleInfo;

    if-eqz v62, :cond_53

    .line 1361
    const/16 v62, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v62

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/htc/service/DongleInfo;

    .line 1362
    .local v59, unConfigDongle:Lcom/htc/service/DongleInfo;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1363
    .restart local v12       #bundle:Landroid/os/Bundle;
    const-string v62, "DONGLE_MAC"

    move-object/from16 v0, v59

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1369
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v59           #unConfigDongle:Lcom/htc/service/DongleInfo;
    :goto_b
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 1370
    :catch_3
    move-exception v6

    .line 1371
    .restart local v6       #ae:Landroid/content/ActivityNotFoundException;
    const-string v62, "WirelessDisplayService"

    const-string v63, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1366
    .end local v6           #ae:Landroid/content/ActivityNotFoundException;
    :cond_53
    const-string v62, "WirelessDisplayService"

    const-string v63, "unConfigDongleList.get(0) is null , should not be here"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1374
    :cond_54
    const-string v62, "WirelessDisplayService"

    const-string v63, "unConfigDongleList = 0, should not be here"

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1379
    .end local v60           #unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    :pswitch_5
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v62

    if-eqz v62, :cond_55

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1383
    :cond_55
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 1384
    :catch_4
    move-exception v6

    .line 1385
    .restart local v6       #ae:Landroid/content/ActivityNotFoundException;
    const-string v62, "WirelessDisplayService"

    const-string v63, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1394
    .end local v6           #ae:Landroid/content/ActivityNotFoundException;
    :cond_56
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v62, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v62 .. v62}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 1395
    :catch_5
    move-exception v6

    .line 1396
    .restart local v6       #ae:Landroid/content/ActivityNotFoundException;
    const-string v62, "WirelessDisplayService"

    const-string v63, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 565
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_9
        0x6 -> :sswitch_7
        0x9 -> :sswitch_e
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_d
        0xf -> :sswitch_14
        0x10 -> :sswitch_8
        0x11 -> :sswitch_1
        0x13 -> :sswitch_c
        0x14 -> :sswitch_6
        0x15 -> :sswitch_10
        0x1f -> :sswitch_11
        0x29 -> :sswitch_13
        0x33 -> :sswitch_12
        0x3d -> :sswitch_f
        0x6f -> :sswitch_17
        0x70 -> :sswitch_15
        0x71 -> :sswitch_16
        0xde -> :sswitch_2
    .end sparse-switch

    .line 1234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1326
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
