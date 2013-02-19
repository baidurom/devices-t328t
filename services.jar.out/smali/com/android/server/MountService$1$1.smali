.class Lcom/android/server/MountService$1$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 554
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 556
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v2

    .line 557
    .local v2, count:I
    new-array v12, v2, [Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    move-object v0, v12

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 558
    .local v7, paths:[Ljava/lang/String;
    new-array v11, v2, [Ljava/lang/String;

    .line 559
    .local v11, states:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 560
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v12

    aget-object v14, v7, v4

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v11, v4

    .line 559
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 562
    :cond_0
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    .line 565
    :try_start_2
    aget-object v6, v7, v4

    .line 566
    .local v6, path:Ljava/lang/String;
    aget-object v10, v11, v4

    .line 567
    .local v10, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v13

    monitor-enter v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 568
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 569
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 570
    const/4 v1, 0x5

    .line 571
    .local v1, MAX_TRY:I
    :try_start_4
    const-string v12, "unmounted"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 573
    const/4 v8, 0x0

    .line 574
    .local v8, rc:I
    const/4 v9, 0x0

    .local v9, retry:I
    :goto_2
    const/4 v12, 0x5

    if-gt v9, v12, :cond_1

    .line 575
    const-string v12, "MountService"

    const-string v13, "Retry mount %d time"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v12, v6}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v8

    .line 577
    if-nez v8, :cond_4

    .line 582
    :cond_1
    if-eqz v8, :cond_2

    .line 583
    const-string v12, "MountService"

    const-string v13, "Boot-time mount %s failed (%d)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 564
    .end local v8           #rc:I
    .end local v9           #retry:I
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 562
    .end local v1           #MAX_TRY:I
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #paths:[Ljava/lang/String;
    .end local v10           #state:Ljava/lang/String;
    .end local v11           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v12

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 611
    :catch_0
    move-exception v3

    .line 612
    .local v3, ex:Ljava/lang/Exception;
    const-string v12, "MountService"

    const-string v13, "Boot-time mount exception"

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_3
    :goto_4
    return-void

    .line 569
    .restart local v2       #count:I
    .restart local v4       #i:I
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #paths:[Ljava/lang/String;
    .restart local v10       #state:Ljava/lang/String;
    .restart local v11       #states:[Ljava/lang/String;
    :catchall_1
    move-exception v12

    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v12

    .line 580
    .restart local v1       #MAX_TRY:I
    .restart local v8       #rc:I
    .restart local v9       #retry:I
    :cond_4
    const-wide/16 v12, 0x2710

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 574
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 586
    .end local v8           #rc:I
    .end local v9           #retry:I
    :cond_5
    const-string v12, "shared"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 591
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v12, v13, v6, v14, v15}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    .line 597
    .end local v1           #MAX_TRY:I
    .end local v6           #path:Ljava/lang/String;
    .end local v10           #state:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mEmulateExternalStorage:Z
    invoke-static {v12}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 598
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v12 .. v16}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 607
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v12}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 608
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Z)V

    .line 609
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$1202(Lcom/android/server/MountService;Z)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4
.end method
