.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1343
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1345
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1346
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1347
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1348
    :try_start_0
    const-string v8, "connected"

    const/4 v10, 0x0

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 1349
    .local v6, usbConnected:Z
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string v10, "rndis"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    #setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v8, v10}, Lcom/android/server/connectivity/Tethering;->access$202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1352
    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/Object;

    .line 1353
    .local v5, mParams:[Ljava/lang/Object;
    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v5, v8

    .line 1354
    const/4 v8, 0x1

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v5, v8

    .line 1355
    const/4 v8, 0x2

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v5, v8

    .line 1356
    const/4 v8, 0x3

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBooted:Z
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v5, v8

    .line 1357
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/16 v10, 0x11

    #calls: Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V
    invoke-static {v8, v10, v5}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I[Ljava/lang/Object;)V

    .line 1360
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v8

    if-eq v8, v6, :cond_0

    .line 1361
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #setter for: Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z
    invoke-static {v8, v6}, Lcom/android/server/connectivity/Tethering;->access$302(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1362
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v10

    #calls: Lcom/android/server/connectivity/Tethering;->enableUsbIfaces(Z)V
    invoke-static {v8, v10}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1367
    :cond_0
    const-string v8, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "got USB_STATE change: usbConnected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRndisEnabled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mUsbTetherRequested="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    if-eqz v6, :cond_1

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1371
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v10, 0x1

    #calls: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v8, v10}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1373
    :cond_1
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v8, v10}, Lcom/android/server/connectivity/Tethering;->access$402(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1374
    monitor-exit v9

    .line 1514
    .end local v5           #mParams:[Ljava/lang/Object;
    .end local v6           #usbConnected:Z
    :cond_2
    :goto_0
    return-void

    .line 1374
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1386
    :cond_3
    const-string v10, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1387
    const-string v10, "Tethering"

    const-string v11, ">>>>>>receive ASSOC_LIST_CHANGE_ACTION<<<<<<"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 1392
    .local v7, wifimanager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1394
    const-string v10, "Tethering"

    const-string v11, "WifiDisplay, disable ThertingNotification: "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)V

    .line 1401
    :cond_4
    new-array v5, v9, [Ljava/lang/Object;

    .line 1402
    .restart local v5       #mParams:[Ljava/lang/Object;
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v5, v8

    .line 1403
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/16 v9, 0xb

    #calls: Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V
    invoke-static {v8, v9, v5}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I[Ljava/lang/Object;)V

    .line 1407
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1408
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->icon:I

    #calls: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v8, v9}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;I)V

    goto :goto_0

    .line 1412
    .end local v5           #mParams:[Ljava/lang/Object;
    .end local v7           #wifimanager:Landroid/net/wifi/WifiManager;
    :cond_5
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1413
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #setter for: Lcom/android/server/connectivity/Tethering;->mBooted:Z
    invoke-static {v10, v9}, Lcom/android/server/connectivity/Tethering;->access$502(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1416
    new-array v5, v11, [Ljava/lang/Object;

    .line 1417
    .restart local v5       #mParams:[Ljava/lang/Object;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v5, v8

    .line 1418
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_6

    move v8, v9

    :cond_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v9

    .line 1419
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/16 v9, 0xc

    #calls: Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V
    invoke-static {v8, v9, v5}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I[Ljava/lang/Object;)V

    .line 1423
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1424
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "availableArray"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1426
    .local v2, availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "activeArray"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1428
    .local v1, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "erroredArray"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1431
    .local v3, erroredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1432
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "postpone sendTetherStateChangedBroadcast after boot completed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #setter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v8, v12}, Lcom/android/server/connectivity/Tethering;->access$1402(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1436
    .end local v1           #activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #erroredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)I

    move-result v8

    if-eqz v8, :cond_8

    .line 1437
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)I

    move-result v9

    #calls: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v8, v9}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;I)V

    .line 1439
    :cond_8
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBtIconShown:Z
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 1440
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)I

    move-result v9

    #calls: Lcom/android/server/connectivity/Tethering;->showBtTetheredNotification(I)V
    invoke-static {v8, v9}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1495
    .end local v5           #mParams:[Ljava/lang/Object;
    :cond_9
    sget-boolean v10, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v10, :cond_a

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v10, v11, :cond_a

    const-string v10, "com.android.internal.telephony.periodic_entitlement_check"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1498
    sget-object v10, Lcom/android/server/connectivity/Tethering;->INTENT_ENTITLEMENT_RECHECK_IFACE:Ljava/lang/String;

    invoke-virtual {p2, v10, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1499
    .local v4, lanIf:I
    const-string v8, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "@@@ lanIf = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1501
    :try_start_1
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)[I

    move-result-object v8

    const/4 v11, 0x3

    aput v11, v8, v4

    .line 1502
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1503
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    new-instance v10, Ljava/lang/Integer;

    add-int/lit8 v11, v4, 0x10

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v12, v9, v10}, Lcom/android/server/connectivity/Tethering;->htcRequestPermittedTether(Ljava/lang/Boolean;ZLjava/lang/Object;)I

    .line 1505
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-wide/32 v9, 0x5265c00

    #calls: Lcom/android/server/connectivity/Tethering;->scheduleEntitlementCheckExpiredAlarm(JI)V
    invoke-static {v8, v9, v10, v4}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;JI)V

    goto/16 :goto_0

    .line 1502
    :catchall_1
    move-exception v8

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 1508
    .end local v4           #lanIf:I
    :cond_a
    sget-boolean v8, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v8, :cond_2

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x94

    if-ne v8, v9, :cond_2

    const-string v8, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1511
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->htc_customization_PhoneTypeChange(Landroid/content/Intent;)V
    invoke-static {v8, p2}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
