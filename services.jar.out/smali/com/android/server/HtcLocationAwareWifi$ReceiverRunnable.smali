.class Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;
.super Ljava/lang/Object;
.source "HtcLocationAwareWifi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcLocationAwareWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiverRunnable"
.end annotation


# instance fields
.field private mTargetIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/server/HtcLocationAwareWifi;


# direct methods
.method private constructor <init>(Lcom/android/server/HtcLocationAwareWifi;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter "intent"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 301
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->mTargetIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/HtcLocationAwareWifi;Landroid/content/Intent;Lcom/android/server/HtcLocationAwareWifi$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;-><init>(Lcom/android/server/HtcLocationAwareWifi;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 310
    iget-object v10, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, action:Ljava/lang/String;
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 315
    :cond_0
    iget-object v8, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #calls: Lcom/android/server/HtcLocationAwareWifi;->enableMechanism(Z)V
    invoke-static {v8, v9}, Lcom/android/server/HtcLocationAwareWifi;->access$400(Lcom/android/server/HtcLocationAwareWifi;Z)V

    .line 387
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #getter for: Lcom/android/server/HtcLocationAwareWifi;->mModemHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/HtcLocationAwareWifi;->access$200(Lcom/android/server/HtcLocationAwareWifi;)Landroid/os/Handler;

    move-result-object v9

    monitor-enter v9

    .line 388
    :try_start_0
    iget-object v8, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    invoke-static {v8}, Lcom/android/server/HtcLocationAwareWifi;->access$310(Lcom/android/server/HtcLocationAwareWifi;)I

    .line 392
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_2
    return-void

    .line 316
    :cond_3
    const-string v10, "com.android.HtcLocationAwareWifi.PSAVER_LOCATION_AWARE_WIFI_STATE_CHANGE"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 317
    iget-object v10, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #getter for: Lcom/android/server/HtcLocationAwareWifi;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/HtcLocationAwareWifi;->access$500(Lcom/android/server/HtcLocationAwareWifi;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 318
    .local v3, cr:Landroid/content/ContentResolver;
    const-string v10, "LocationAwareWifi_Enable"

    invoke-static {v3, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 322
    .local v0, ENABLED:I
    iget-object v10, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    if-ne v0, v9, :cond_4

    move v8, v9

    :cond_4
    #setter for: Lcom/android/server/HtcLocationAwareWifi;->mEnableMechanism:Z
    invoke-static {v10, v8}, Lcom/android/server/HtcLocationAwareWifi;->access$602(Lcom/android/server/HtcLocationAwareWifi;Z)Z

    .line 330
    iget-object v8, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    iget-object v9, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #getter for: Lcom/android/server/HtcLocationAwareWifi;->mEnableMechanism:Z
    invoke-static {v9}, Lcom/android/server/HtcLocationAwareWifi;->access$600(Lcom/android/server/HtcLocationAwareWifi;)Z

    move-result v9

    #calls: Lcom/android/server/HtcLocationAwareWifi;->enableMechanism(Z)V
    invoke-static {v8, v9}, Lcom/android/server/HtcLocationAwareWifi;->access$400(Lcom/android/server/HtcLocationAwareWifi;Z)V

    goto :goto_0

    .line 331
    .end local v0           #ENABLED:I
    .end local v3           #cr:Landroid/content/ContentResolver;
    :cond_5
    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 332
    iget-object v8, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->mTargetIntent:Landroid/content/Intent;

    const-string v10, "networkInfo"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    move-object v7, v8

    check-cast v7, Landroid/net/NetworkInfo;

    .line 334
    .local v7, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v8, v9, :cond_2

    .line 343
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 344
    .local v1, WIFI_CONNECTED:Z
    if-eqz v1, :cond_1

    .line 348
    iget-object v8, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #calls: Lcom/android/server/HtcLocationAwareWifi;->wifiConnected()V
    invoke-static {v8}, Lcom/android/server/HtcLocationAwareWifi;->access$700(Lcom/android/server/HtcLocationAwareWifi;)V

    goto :goto_0

    .line 354
    .end local v1           #WIFI_CONNECTED:Z
    .end local v7           #netInfo:Landroid/net/NetworkInfo;
    :cond_6
    const-string v10, "com.android.phone.AUTO_WIFI_ON_LOC"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 357
    iget-object v10, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->mTargetIntent:Landroid/content/Intent;

    const-string v11, "matched_location_cell"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 359
    .local v6, matched:I
    iget-object v10, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->mTargetIntent:Landroid/content/Intent;

    const-string v11, "location_index_in_db"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 367
    .local v5, index:I
    if-ne v6, v9, :cond_7

    .line 368
    iget-object v8, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #calls: Lcom/android/server/HtcLocationAwareWifi;->mainLocationAwareWifiLogic()V
    invoke-static {v8}, Lcom/android/server/HtcLocationAwareWifi;->access$800(Lcom/android/server/HtcLocationAwareWifi;)V

    goto :goto_0

    .line 370
    :cond_7
    iget-object v9, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #calls: Lcom/android/server/HtcLocationAwareWifi;->turnOnWifi(Z)V
    invoke-static {v9, v8}, Lcom/android/server/HtcLocationAwareWifi;->access$900(Lcom/android/server/HtcLocationAwareWifi;Z)V

    goto/16 :goto_0

    .line 372
    .end local v5           #index:I
    .end local v6           #matched:I
    :cond_8
    const-string v10, "com.android.HtcLocationAwareWifi.FEATURE_TEST"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 373
    iget-object v10, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->mTargetIntent:Landroid/content/Intent;

    const-string v11, "dump"

    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 378
    .local v4, dump:Z
    iget-object v8, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #setter for: Lcom/android/server/HtcLocationAwareWifi;->mEnableMechanism:Z
    invoke-static {v8, v9}, Lcom/android/server/HtcLocationAwareWifi;->access$602(Lcom/android/server/HtcLocationAwareWifi;Z)Z

    .line 380
    iget-object v8, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #getter for: Lcom/android/server/HtcLocationAwareWifi;->mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;
    invoke-static {v8}, Lcom/android/server/HtcLocationAwareWifi;->access$000(Lcom/android/server/HtcLocationAwareWifi;)Lcom/android/server/HtcCellInfoManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #getter for: Lcom/android/server/HtcLocationAwareWifi;->mEnableMechanism:Z
    invoke-static {v9}, Lcom/android/server/HtcLocationAwareWifi;->access$600(Lcom/android/server/HtcLocationAwareWifi;)Z

    move-result v9

    iget-object v10, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #getter for: Lcom/android/server/HtcLocationAwareWifi;->mCellNeighborPilot:I
    invoke-static {v10}, Lcom/android/server/HtcLocationAwareWifi;->access$1000(Lcom/android/server/HtcLocationAwareWifi;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #getter for: Lcom/android/server/HtcLocationAwareWifi;->mNumCellRecords:I
    invoke-static {v11}, Lcom/android/server/HtcLocationAwareWifi;->access$1100(Lcom/android/server/HtcLocationAwareWifi;)I

    move-result v11

    iget-object v12, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #getter for: Lcom/android/server/HtcLocationAwareWifi;->mCellRecheckDelay:I
    invoke-static {v12}, Lcom/android/server/HtcLocationAwareWifi;->access$1200(Lcom/android/server/HtcLocationAwareWifi;)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/HtcCellInfoManager;->turnOnCellScan(ZIII)Z

    .line 382
    if-eqz v4, :cond_1

    .line 383
    iget-object v8, p0, Lcom/android/server/HtcLocationAwareWifi$ReceiverRunnable;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #getter for: Lcom/android/server/HtcLocationAwareWifi;->mHtcCellInfoManager:Lcom/android/server/HtcCellInfoManager;
    invoke-static {v8}, Lcom/android/server/HtcLocationAwareWifi;->access$000(Lcom/android/server/HtcLocationAwareWifi;)Lcom/android/server/HtcCellInfoManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/HtcCellInfoManager;->dumpCellInfoList()V

    goto/16 :goto_0

    .line 392
    .end local v4           #dump:Z
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method
