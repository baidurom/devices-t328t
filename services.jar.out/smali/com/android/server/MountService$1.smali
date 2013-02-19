.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, action:Ljava/lang/String;
    sget-short v21, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v22, 0xc

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    sget-short v21, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v22, 0xaf

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    sget-short v21, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v22, 0x94

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/MountService;->access$600()Z

    move-result v21

    if-nez v21, :cond_1

    .line 519
    const-string v21, "MountService"

    const-string v22, "Share_SD_only"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$602(Z)Z

    .line 522
    :cond_1
    const-string v21, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string v21, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 524
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/server/MountService;->mBooted:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$702(Lcom/android/server/MountService;Z)Z

    .line 528
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "sd_encryption"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 530
    .local v16, sdEncryption:I
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v21

    sget-object v22, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 743
    .end local v16           #sdEncryption:I
    :cond_3
    :goto_0
    return-void

    .line 539
    .restart local v16       #sdEncryption:I
    :cond_4
    const-string v21, "simulator"

    const-string v22, "ro.product.device"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "/sdcard"

    const/16 v24, 0x0

    const/16 v25, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v21 .. v25}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 544
    :cond_5
    new-instance v21, Lcom/android/server/MountService$1$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/MountService$1$1;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/MountService$1$1;->start()V

    .line 616
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 617
    .end local v16           #sdEncryption:I
    :cond_6
    const-string v21, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 618
    const-string v21, "connected"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_7

    const-string v21, "mass_storage"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_7

    const/4 v5, 0x1

    .line 620
    .local v5, available:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const-string v22, "ums"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v5}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 618
    .end local v5           #available:Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 621
    :cond_8
    const-string v21, "android.app.admin.intent.ALLOW_STORAGE_CARD_CHANGE"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 623
    const-string v21, "android.app.admin.extra.ALLOW_STATUS"

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 625
    .local v19, status:I
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/android/server/MountService;->access$1500()Z

    move-result v21

    if-nez v21, :cond_9

    .line 627
    const-string v21, "MountService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onReceive(): get ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "], status = allow"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1502(Z)Z

    .line 632
    new-instance v21, Lcom/android/server/MountService$1$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/MountService$1$2;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/MountService$1$2;->start()V

    goto/16 :goto_0

    .line 669
    :cond_9
    if-nez v19, :cond_3

    invoke-static {}, Lcom/android/server/MountService;->access$1500()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 671
    const-string v21, "MountService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onReceive(): get ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "], status = disable"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1502(Z)Z

    .line 683
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v22

    monitor-enter v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 685
    .local v11, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v6

    .line 686
    .local v6, count:I
    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 687
    .local v13, paths:[Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 688
    .local v18, states:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v6, :cond_a

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v21

    aget-object v23, v13, v8

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    aput-object v21, v18, v8

    .line 688
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 691
    :cond_a
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_d

    .line 694
    :try_start_2
    aget-object v12, v13, v8

    .line 695
    .local v12, path:Ljava/lang/String;
    aget-object v17, v18, v8

    .line 697
    .local v17, state:Ljava/lang/String;
    const-string v21, "shared"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 723
    :cond_b
    :goto_4
    const-string v21, "mounted"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 725
    new-instance v20, Lcom/android/server/MountService$UnmountCallBack;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 726
    .local v20, ucb:Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 693
    .end local v20           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 691
    .end local v6           #count:I
    .end local v8           #i:I
    .end local v11           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #paths:[Ljava/lang/String;
    .end local v17           #state:Ljava/lang/String;
    .end local v18           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v21

    :try_start_3
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v21
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 729
    :catch_0
    move-exception v7

    .line 730
    .local v7, ex:Ljava/lang/Exception;
    const-string v21, "MountService"

    const-string v22, "Policy-disable unmount exception"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    .end local v7           #ex:Ljava/lang/Exception;
    :cond_d
    new-instance v10, Landroid/content/Intent;

    const-string v21, "android.settings.MEMORY_CARD_SETTINGS"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .local v10, in:Landroid/content/Intent;
    const/high16 v21, 0x1000

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 739
    const-string v21, "SD_POLICY"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 702
    .end local v10           #in:Landroid/content/Intent;
    .restart local v6       #count:I
    .restart local v8       #i:I
    .restart local v11       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12       #path:Ljava/lang/String;
    .restart local v13       #paths:[Ljava/lang/String;
    .restart local v17       #state:Ljava/lang/String;
    .restart local v18       #states:[Ljava/lang/String;
    :cond_e
    :try_start_5
    const-string v21, "checking"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 708
    const/16 v14, 0x1e

    .local v14, retries:I
    move v15, v14

    .line 709
    .end local v14           #retries:I
    .local v15, retries:I
    :goto_5
    const-string v21, "checking"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v21

    if-eqz v21, :cond_10

    add-int/lit8 v14, v15, -0x1

    .end local v15           #retries:I
    .restart local v14       #retries:I
    if-ltz v15, :cond_f

    .line 711
    const-wide/16 v21, 0x3e8

    :try_start_6
    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 716
    :try_start_7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v17

    move v15, v14

    .end local v14           #retries:I
    .restart local v15       #retries:I
    goto :goto_5

    .line 712
    .end local v15           #retries:I
    .restart local v14       #retries:I
    :catch_1
    move-exception v9

    .line 713
    .local v9, iex:Ljava/lang/InterruptedException;
    const-string v21, "MountService"

    const-string v22, "Interrupted while waiting for media"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    .end local v9           #iex:Ljava/lang/InterruptedException;
    :cond_f
    :goto_6
    if-nez v14, :cond_b

    .line 719
    const-string v21, "MountService"

    const-string v22, "Timed out waiting for media to check"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_4

    .end local v14           #retries:I
    .restart local v15       #retries:I
    :cond_10
    move v14, v15

    .end local v15           #retries:I
    .restart local v14       #retries:I
    goto :goto_6
.end method
