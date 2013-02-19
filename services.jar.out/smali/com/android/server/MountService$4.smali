.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V
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
    .line 1552
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    .line 1557
    :try_start_0
    const-string v7, "MountService"

    const-string v8, "Disabling UMS after cable disconnect"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->waitForUmsProceeding()V
    invoke-static {v7}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)V

    .line 1561
    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    :try_start_1
    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1563
    .local v6, size:I
    new-array v4, v6, [Ljava/lang/String;

    .line 1564
    .local v4, paths:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 1565
    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    .line 1564
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1566
    :cond_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1567
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_7

    .line 1569
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v7

    if-nez v7, :cond_1

    aget-object v7, v4, v1

    const-string v8, "/mnt/sdcard"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    aget-object v7, v4, v1

    const-string v8, "/mnt/sdcard/ext_sd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/android/server/MountService;->access$600()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    .line 1567
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1566
    .end local v1           #i:I
    .end local v4           #paths:[Ljava/lang/String;
    .end local v6           #size:I
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1615
    :catch_0
    move-exception v0

    .line 1616
    .local v0, ex:Ljava/lang/Exception;
    const-string v7, "MountService"

    const-string v8, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1618
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_3
    return-void

    .line 1573
    .restart local v1       #i:I
    .restart local v4       #paths:[Ljava/lang/String;
    .restart local v6       #size:I
    :cond_3
    const/4 v3, 0x0

    .local v3, j:I
    :goto_4
    if-ge v3, v12, :cond_4

    .line 1574
    :try_start_5
    const-string v7, "MountService"

    const-string v8, "Prepare to mount back to device"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    aget-object v8, v4, v1

    invoke-virtual {v7, v8}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "shared"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1576
    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    aget-object v8, v4, v1

    const-string v9, "ums"

    const/4 v10, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1577
    const-string v7, "MountService"

    const-string v8, "unshare the sdcard"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_4
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v12, :cond_2

    .line 1590
    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    aget-object v8, v4, v1

    invoke-virtual {v7, v8}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "unmounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1591
    const-string v7, "MountService"

    const-string v8, "Switch to MEDIA_UNMOUNTED"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1580
    :cond_5
    const-string v7, "MountService"

    const-string v8, "Wait for switch to MEDIA_SHARED (%d)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1582
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v7, 0x190

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1573
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1584
    :catch_1
    move-exception v2

    .line 1585
    .local v2, ie:Ljava/lang/InterruptedException;
    :try_start_7
    const-string v7, "MountService"

    const-string v8, "Fail to wait for switch to MEDIA_SHARED"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1594
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :cond_6
    const-string v7, "MountService"

    const-string v8, "Wait for switch to MEDIA_UNMOUNTED (%d)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1596
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 1589
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1598
    :catch_2
    move-exception v2

    .line 1599
    .restart local v2       #ie:Ljava/lang/InterruptedException;
    :try_start_9
    const-string v7, "MountService"

    const-string v8, "Fail to wait for switch to MEDIA_UNMOUNTED"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1605
    .end local v2           #ie:Ljava/lang/InterruptedException;
    .end local v3           #j:I
    :cond_7
    add-int/lit8 v1, v6, -0x1

    :goto_8
    if-ltz v1, :cond_a

    .line 1606
    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    aget-object v8, v4, v1

    invoke-virtual {v7, v8}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "unmounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1605
    :cond_8
    :goto_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1608
    :cond_9
    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    aget-object v8, v4, v1

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v7, v8}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v5

    .local v5, rc:I
    if-eqz v5, :cond_8

    .line 1609
    const-string v7, "MountService"

    const-string v8, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v11, v4, v1

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1614
    .end local v5           #rc:I
    :cond_a
    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->UmsProceedingDone()V
    invoke-static {v7}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_3
.end method
