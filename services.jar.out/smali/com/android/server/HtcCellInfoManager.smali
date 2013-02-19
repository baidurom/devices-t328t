.class final Lcom/android/server/HtcCellInfoManager;
.super Ljava/lang/Object;
.source "HtcCellInfoManager.java"


# instance fields
.field private final DEBUG_ON:Z

.field private final FILE_PATH:Ljava/lang/String;

.field private final LIST_FILE_NAME:Ljava/lang/String;

.field private final LIST_FILE_VERSION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final UNKNOWN_HTC_CELL_INFO:I

.field private mCellScanTurnedOn:Z

.field private mContext:Landroid/content/Context;

.field private mHtcCellInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/HtcCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "HtcCellInfoManager"

    iput-object v0, p0, Lcom/android/server/HtcCellInfoManager;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcCellInfoManager;->DEBUG_ON:Z

    .line 22
    const-string v0, "/data/system/"

    iput-object v0, p0, Lcom/android/server/HtcCellInfoManager;->FILE_PATH:Ljava/lang/String;

    .line 23
    const-string v0, "/data/system/cell_id_list"

    iput-object v0, p0, Lcom/android/server/HtcCellInfoManager;->LIST_FILE_NAME:Ljava/lang/String;

    .line 24
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/server/HtcCellInfoManager;->LIST_FILE_VERSION:Ljava/lang/String;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/HtcCellInfoManager;->UNKNOWN_HTC_CELL_INFO:I

    .line 46
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "HtcCellInfoManager"

    iput-object v0, p0, Lcom/android/server/HtcCellInfoManager;->TAG:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, Lcom/android/server/HtcCellInfoManager;->DEBUG_ON:Z

    .line 22
    const-string v0, "/data/system/"

    iput-object v0, p0, Lcom/android/server/HtcCellInfoManager;->FILE_PATH:Ljava/lang/String;

    .line 23
    const-string v0, "/data/system/cell_id_list"

    iput-object v0, p0, Lcom/android/server/HtcCellInfoManager;->LIST_FILE_NAME:Ljava/lang/String;

    .line 24
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/server/HtcCellInfoManager;->LIST_FILE_VERSION:Ljava/lang/String;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/HtcCellInfoManager;->UNKNOWN_HTC_CELL_INFO:I

    .line 38
    iput-object p1, p0, Lcom/android/server/HtcCellInfoManager;->mContext:Landroid/content/Context;

    .line 40
    iput-boolean v1, p0, Lcom/android/server/HtcCellInfoManager;->mCellScanTurnedOn:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method private getCurrentCellInfo()Lcom/android/server/HtcCellInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 442
    monitor-enter p0

    .line 443
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HtcCellInfoManager;->getHtcTelephonyManager()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 447
    monitor-exit p0

    .line 468
    :goto_0
    return-object v1

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HtcCellInfoManager;->getHtcTelephonyManager()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/service/HtcTelephonyManager;->requestGetCurrentLoc_EXT()[I

    move-result-object v0

    .line 455
    .local v0, cellInfo:[I
    if-nez v0, :cond_1

    .line 459
    monitor-exit p0

    goto :goto_0

    .line 469
    .end local v0           #cellInfo:[I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 462
    .restart local v0       #cellInfo:[I
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/HtcCellInfo;

    invoke-direct {v1, v0}, Lcom/android/server/HtcCellInfo;-><init>([I)V

    .line 468
    .local v1, htcCellInfo:Lcom/android/server/HtcCellInfo;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getHtcTelephonyManager()Lcom/htc/service/HtcTelephonyManager;
    .locals 2

    .prologue
    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HtcCellInfoManager;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/server/HtcCellInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "htctelephony"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcTelephonyManager;

    iput-object v0, p0, Lcom/android/server/HtcCellInfoManager;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 303
    iget-object v0, p0, Lcom/android/server/HtcCellInfoManager;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    monitor-exit p0

    .line 310
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcCellInfoManager;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    monitor-exit p0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isKnownHtcCellInfo(Lcom/android/server/HtcCellInfo;)I
    .locals 3
    .parameter "targetCellInfo"

    .prologue
    const/4 v2, -0x1

    .line 473
    monitor-enter p0

    .line 474
    if-nez p1, :cond_0

    .line 478
    :try_start_0
    monitor-exit p0

    move v0, v2

    .line 502
    :goto_0
    return v0

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 485
    monitor-exit p0

    move v0, v2

    goto :goto_0

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 489
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 490
    iget-object v1, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/HtcCellInfo;

    invoke-virtual {v1, p1}, Lcom/android/server/HtcCellInfo;->equals(Lcom/android/server/HtcCellInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    monitor-exit p0

    goto :goto_0

    .line 503
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 489
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 502
    .end local v0           #i:I
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto :goto_0
.end method

.method private saveToStorage()V
    .locals 13

    .prologue
    .line 394
    monitor-enter p0

    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, APPEND:Z
    const/4 v5, 0x0

    .line 398
    .local v5, fw:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 400
    .local v1, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    const-string v11, "/data/system/cell_id_list"

    const/4 v12, 0x0

    invoke-direct {v6, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 401
    .end local v5           #fw:Ljava/io/FileWriter;
    .local v6, fw:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 403
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .local v2, bw:Ljava/io/BufferedWriter;
    :try_start_2
    const-string v11, "1"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 406
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v11, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_6

    .line 407
    iget-object v11, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/HtcCellInfo;

    .line 408
    .local v7, htcCellInfo:Lcom/android/server/HtcCellInfo;
    invoke-virtual {v7}, Lcom/android/server/HtcCellInfo;->getCellInfo()[I

    move-result-object v3

    .line 410
    .local v3, cellArray:[I
    if-eqz v3, :cond_0

    array-length v11, v3

    if-gtz v11, :cond_1

    .line 406
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 419
    :cond_1
    const-string v10, ""

    .line 420
    .local v10, temp:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    array-length v11, v3

    if-ge v9, v11, :cond_3

    .line 421
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v3, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 422
    array-length v11, v3

    add-int/lit8 v11, v11, -0x1

    if-ge v9, v11, :cond_2

    .line 423
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 420
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 427
    :cond_3
    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 432
    .end local v3           #cellArray:[I
    .end local v7           #htcCellInfo:Lcom/android/server/HtcCellInfo;
    .end local v8           #i:I
    .end local v9           #j:I
    .end local v10           #temp:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 433
    .end local v6           #fw:Ljava/io/FileWriter;
    .local v4, e:Ljava/io/IOException;
    .restart local v5       #fw:Ljava/io/FileWriter;
    :goto_3
    :try_start_3
    const-string v11, "HtcCellInfoManager"

    const-string v12, "saveToStorage: failed to write cell info list file to /data/system/cell_id_list"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 435
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v1, 0x0

    .line 436
    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v5, 0x0

    .line 438
    .end local v4           #e:Ljava/io/IOException;
    :cond_5
    :goto_5
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 439
    return-void

    .line 431
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    .restart local v8       #i:I
    :cond_6
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 435
    if-eqz v2, :cond_a

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v1, 0x0

    .line 436
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :goto_6
    if-eqz v6, :cond_9

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    const/4 v5, 0x0

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_5

    .line 435
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catch_1
    move-exception v11

    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    goto :goto_6

    .line 436
    :catch_2
    move-exception v11

    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_5

    .line 435
    .end local v8           #i:I
    :catchall_0
    move-exception v11

    :goto_7
    if-eqz v1, :cond_7

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    const/4 v1, 0x0

    .line 436
    :cond_7
    :goto_8
    if-eqz v5, :cond_8

    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    const/4 v5, 0x0

    :cond_8
    :goto_9
    :try_start_c
    throw v11

    .line 438
    :catchall_1
    move-exception v11

    :goto_a
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v11

    .line 435
    .restart local v4       #e:Ljava/io/IOException;
    :catch_3
    move-exception v11

    goto :goto_4

    .line 436
    :catch_4
    move-exception v11

    goto :goto_5

    .line 435
    .end local v4           #e:Ljava/io/IOException;
    :catch_5
    move-exception v12

    goto :goto_8

    .line 436
    :catch_6
    move-exception v12

    goto :goto_9

    .line 438
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    .restart local v8       #i:I
    :catchall_2
    move-exception v11

    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_a

    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catchall_3
    move-exception v11

    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_a

    .line 435
    .end local v5           #fw:Ljava/io/FileWriter;
    .end local v8           #i:I
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catchall_4
    move-exception v11

    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_7

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catchall_5
    move-exception v11

    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_7

    .line 432
    :catch_7
    move-exception v4

    goto :goto_3

    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_3

    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    .restart local v8       #i:I
    :cond_9
    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_5

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :cond_a
    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    goto :goto_6
.end method


# virtual methods
.method protected clearModemList()Z
    .locals 2

    .prologue
    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HtcCellInfoManager;->getHtcTelephonyManager()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 242
    const/4 v0, 0x0

    monitor-exit p0

    .line 255
    :goto_0
    return v0

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HtcCellInfoManager;->getHtcTelephonyManager()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/service/HtcTelephonyManager;->requestClearLocProcessDB_EXT()Z

    move-result v0

    .line 255
    .local v0, cleared:Z
    monitor-exit p0

    goto :goto_0

    .line 256
    .end local v0           #cleared:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dumpCellInfoList()V
    .locals 1

    .prologue
    .line 260
    monitor-enter p0

    .line 277
    :try_start_0
    monitor-exit p0

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isCurrentCellLocationKnown()Z
    .locals 3

    .prologue
    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HtcCellInfoManager;->getCurrentCellInfo()Lcom/android/server/HtcCellInfo;

    move-result-object v0

    .line 92
    .local v0, htcCellInfo:Lcom/android/server/HtcCellInfo;
    invoke-direct {p0, v0}, Lcom/android/server/HtcCellInfoManager;->isKnownHtcCellInfo(Lcom/android/server/HtcCellInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 93
    .end local v0           #htcCellInfo:Lcom/android/server/HtcCellInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isInService()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HtcCellInfoManager;->getHtcTelephonyManager()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/android/server/HtcCellInfoManager;->getHtcTelephonyManager()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/service/HtcTelephonyManager;->getServiceState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 289
    .local v0, state:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 296
    .end local v0           #state:I
    :cond_0
    :goto_0
    return v1

    .line 291
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected pushCellInfoListToModem()V
    .locals 19

    .prologue
    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 140
    monitor-exit p0

    .line 234
    :goto_0
    return-void

    .line 143
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 144
    .local v16, size:I
    if-lez v16, :cond_a

    .line 145
    const/4 v12, 0x0

    .line 146
    .local v12, failCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v2, v0, :cond_b

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/HtcCellInfo;

    .line 148
    .local v13, htcCellInfo:Lcom/android/server/HtcCellInfo;
    invoke-virtual {v13}, Lcom/android/server/HtcCellInfo;->getCellInfo()[I

    move-result-object v11

    .line 150
    .local v11, cellInfo:[I
    if-eqz v11, :cond_1

    array-length v1, v11

    const/16 v18, 0x6

    move/from16 v0, v18

    if-ge v1, v0, :cond_2

    .line 146
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    :cond_2
    const/4 v1, 0x0

    aget v3, v11, v1

    .line 161
    .local v3, rat:I
    const/4 v1, 0x1

    aget v4, v11, v1

    .line 162
    .local v4, sid:I
    const/4 v1, 0x2

    aget v5, v11, v1

    .line 163
    .local v5, nid:I
    const/4 v1, 0x3

    aget v6, v11, v1

    .line 164
    .local v6, base_id:I
    const/4 v1, 0x4

    aget v7, v11, v1

    .line 166
    .local v7, pilot_pn:I
    const/4 v1, 0x5

    aget v10, v11, v1

    .line 167
    .local v10, NUM_NEIGHBOR:I
    array-length v1, v11

    add-int/lit8 v9, v1, -0x6

    .line 168
    .local v9, ACTUAL_NUM_NEIGHBOR:I
    const/4 v8, 0x0

    .line 169
    .local v8, neighbor_pilot_list:[I
    if-lez v10, :cond_3

    if-gtz v9, :cond_5

    .line 176
    :cond_3
    const/4 v1, 0x0

    new-array v8, v1, [I

    .line 189
    :cond_4
    :goto_3
    const/4 v14, 0x0

    .local v14, j:I
    :goto_4
    array-length v1, v8

    if-ge v14, v1, :cond_8

    add-int/lit8 v1, v14, 0x6

    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v1, v0, :cond_8

    .line 190
    add-int/lit8 v1, v14, 0x6

    aget v1, v11, v1

    aput v1, v8, v14

    .line 189
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 177
    .end local v14           #j:I
    :cond_5
    if-lez v10, :cond_6

    if-ne v9, v10, :cond_6

    .line 178
    new-array v8, v10, [I

    goto :goto_3

    .line 179
    :cond_6
    if-eq v9, v10, :cond_4

    .line 185
    if-le v10, v9, :cond_7

    move/from16 v17, v9

    .line 186
    .local v17, smaller:I
    :goto_5
    move/from16 v0, v17

    new-array v8, v0, [I

    goto :goto_3

    .end local v17           #smaller:I
    :cond_7
    move/from16 v17, v10

    .line 185
    goto :goto_5

    .line 193
    .restart local v14       #j:I
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/HtcCellInfoManager;->getHtcTelephonyManager()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    if-nez v1, :cond_9

    .line 197
    monitor-exit p0

    goto :goto_0

    .line 233
    .end local v2           #i:I
    .end local v3           #rat:I
    .end local v4           #sid:I
    .end local v5           #nid:I
    .end local v6           #base_id:I
    .end local v7           #pilot_pn:I
    .end local v8           #neighbor_pilot_list:[I
    .end local v9           #ACTUAL_NUM_NEIGHBOR:I
    .end local v10           #NUM_NEIGHBOR:I
    .end local v11           #cellInfo:[I
    .end local v12           #failCount:I
    .end local v13           #htcCellInfo:Lcom/android/server/HtcCellInfo;
    .end local v14           #j:I
    .end local v16           #size:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 205
    .restart local v2       #i:I
    .restart local v3       #rat:I
    .restart local v4       #sid:I
    .restart local v5       #nid:I
    .restart local v6       #base_id:I
    .restart local v7       #pilot_pn:I
    .restart local v8       #neighbor_pilot_list:[I
    .restart local v9       #ACTUAL_NUM_NEIGHBOR:I
    .restart local v10       #NUM_NEIGHBOR:I
    .restart local v11       #cellInfo:[I
    .restart local v12       #failCount:I
    .restart local v13       #htcCellInfo:Lcom/android/server/HtcCellInfo;
    .restart local v14       #j:I
    .restart local v16       #size:I
    :cond_9
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/HtcCellInfoManager;->getHtcTelephonyManager()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    invoke-virtual/range {v1 .. v8}, Lcom/htc/service/HtcTelephonyManager;->requestSetLocProcessDB_EXT(IIIIII[I)Z

    move-result v15

    .line 207
    .local v15, ret:Z
    if-nez v15, :cond_1

    .line 214
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 228
    .end local v2           #i:I
    .end local v3           #rat:I
    .end local v4           #sid:I
    .end local v5           #nid:I
    .end local v6           #base_id:I
    .end local v7           #pilot_pn:I
    .end local v8           #neighbor_pilot_list:[I
    .end local v9           #ACTUAL_NUM_NEIGHBOR:I
    .end local v10           #NUM_NEIGHBOR:I
    .end local v11           #cellInfo:[I
    .end local v12           #failCount:I
    .end local v13           #htcCellInfo:Lcom/android/server/HtcCellInfo;
    .end local v14           #j:I
    .end local v15           #ret:Z
    :cond_a
    if-nez v16, :cond_b

    .line 233
    :cond_b
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected readListFile()V
    .locals 14

    .prologue
    .line 315
    monitor-enter p0

    .line 316
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v12, "/data/system/cell_id_list"

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v4, file:Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 322
    :cond_0
    monitor-exit p0

    .line 391
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v12

    if-nez v12, :cond_2

    .line 327
    monitor-exit p0

    goto :goto_0

    .line 390
    .end local v4           #file:Ljava/io/File;
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 330
    .restart local v4       #file:Ljava/io/File;
    :cond_2
    const/4 v6, 0x0

    .line 331
    .local v6, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 333
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    const-string v12, "/data/system/cell_id_list"

    invoke-direct {v7, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 334
    .end local v6           #fr:Ljava/io/FileReader;
    .local v7, fr:Ljava/io/FileReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 337
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, file_version:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 338
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "1"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v12

    if-nez v12, :cond_3

    .line 387
    if-eqz v1, :cond_d

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v0, 0x0

    .line 388
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v7, :cond_c

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v6, 0x0

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 387
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_0
    move-exception v12

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 388
    :catch_1
    move-exception v12

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_2

    .line 351
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :cond_3
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, line:Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 352
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 353
    .local v11, temp:[Ljava/lang/String;
    if-eqz v11, :cond_3

    array-length v12, v11

    if-lez v12, :cond_3

    .line 362
    array-length v12, v11

    new-array v2, v12, [I

    .line 363
    .local v2, data:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    array-length v12, v11

    if-ge v9, v12, :cond_4

    .line 364
    aget-object v12, v11, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v2, v9

    .line 363
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 367
    :cond_4
    new-instance v8, Lcom/android/server/HtcCellInfo;

    invoke-direct {v8, v2}, Lcom/android/server/HtcCellInfo;-><init>([I)V

    .line 369
    .local v8, htcCellInfo:Lcom/android/server/HtcCellInfo;
    if-eqz v8, :cond_3

    .line 382
    iget-object v12, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 384
    .end local v2           #data:[I
    .end local v5           #file_version:Ljava/lang/String;
    .end local v8           #htcCellInfo:Lcom/android/server/HtcCellInfo;
    .end local v9           #i:I
    .end local v10           #line:Ljava/lang/String;
    .end local v11           #temp:[Ljava/lang/String;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 385
    .end local v7           #fr:Ljava/io/FileReader;
    .local v3, e:Ljava/io/IOException;
    .restart local v6       #fr:Ljava/io/FileReader;
    :goto_5
    :try_start_8
    const-string v12, "HtcCellInfoManager"

    const-string v13, "readListFile: failed to read cell info list file at /data/system/cell_id_list"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 387
    if-eqz v0, :cond_5

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    const/4 v0, 0x0

    .line 388
    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    const/4 v6, 0x0

    .line 390
    .end local v3           #e:Ljava/io/IOException;
    :cond_6
    :goto_7
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 387
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #file_version:Ljava/lang/String;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v10       #line:Ljava/lang/String;
    :cond_7
    if-eqz v1, :cond_b

    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    const/4 v0, 0x0

    .line 388
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_8
    if-eqz v7, :cond_a

    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    const/4 v6, 0x0

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_7

    .line 387
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_3
    move-exception v12

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_8

    .line 388
    :catch_4
    move-exception v12

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_7

    .line 387
    .end local v5           #file_version:Ljava/lang/String;
    .end local v10           #line:Ljava/lang/String;
    :catchall_1
    move-exception v12

    :goto_9
    if-eqz v0, :cond_8

    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    const/4 v0, 0x0

    .line 388
    :cond_8
    :goto_a
    if-eqz v6, :cond_9

    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    const/4 v6, 0x0

    :cond_9
    :goto_b
    :try_start_10
    throw v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 387
    .restart local v3       #e:Ljava/io/IOException;
    :catch_5
    move-exception v12

    goto :goto_6

    .line 388
    :catch_6
    move-exception v12

    goto :goto_7

    .line 387
    .end local v3           #e:Ljava/io/IOException;
    :catch_7
    move-exception v13

    goto :goto_a

    .line 388
    :catch_8
    move-exception v13

    goto :goto_b

    .line 387
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v12

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_9

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_3
    move-exception v12

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_9

    .line 384
    :catch_9
    move-exception v3

    goto :goto_5

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_a
    move-exception v3

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #file_version:Ljava/lang/String;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v10       #line:Ljava/lang/String;
    :cond_a
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_7

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :cond_b
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_8

    .end local v10           #line:Ljava/lang/String;
    :cond_c
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :cond_d
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method protected saveCurrentCellInfo()V
    .locals 7

    .prologue
    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v5, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 102
    monitor-exit p0

    .line 132
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HtcCellInfoManager;->getCurrentCellInfo()Lcom/android/server/HtcCellInfo;

    move-result-object v2

    .line 107
    .local v2, htcCellInfo:Lcom/android/server/HtcCellInfo;
    if-nez v2, :cond_1

    .line 111
    monitor-exit p0

    goto :goto_0

    .line 131
    .end local v2           #htcCellInfo:Lcom/android/server/HtcCellInfo;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 114
    .restart local v2       #htcCellInfo:Lcom/android/server/HtcCellInfo;
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/HtcCellInfoManager;->isKnownHtcCellInfo(Lcom/android/server/HtcCellInfo;)I

    move-result v4

    .line 116
    .local v4, index:I
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 117
    iget-object v5, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 120
    :cond_2
    iget-object v5, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 121
    iget-object v5, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    .line 123
    const/16 v0, 0xa

    .line 124
    .local v0, MAX_CELL_RECORDS:I
    iget-object v5, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0xa

    .line 125
    .local v1, exceedCount:I
    const/16 v3, 0xa

    .local v3, i:I
    :goto_1
    add-int/lit8 v5, v1, 0xa

    if-ge v3, v5, :cond_3

    .line 126
    iget-object v5, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 128
    :cond_3
    iget-object v5, p0, Lcom/android/server/HtcCellInfoManager;->mHtcCellInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    .line 130
    invoke-direct {p0}, Lcom/android/server/HtcCellInfoManager;->saveToStorage()V

    .line 131
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected turnOnCellScan(ZIII)Z
    .locals 4
    .parameter "turnOn"
    .parameter "cellNeiPilot"
    .parameter "cellRecords"
    .parameter "cellRecheckDelay"

    .prologue
    const/4 v2, 0x0

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/HtcCellInfoManager;->mCellScanTurnedOn:Z

    if-ne v3, p1, :cond_0

    .line 54
    monitor-exit p0

    .line 85
    :goto_0
    return v2

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HtcCellInfoManager;->getHtcTelephonyManager()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 61
    monitor-exit p0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 66
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 72
    .local v0, enable:I
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/HtcCellInfoManager;->getHtcTelephonyManager()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3, p4}, Lcom/htc/service/HtcTelephonyManager;->requestConfigLocProcessDB_EXT(IIII)Z

    move-result v1

    .line 74
    .local v1, ret:Z
    iput-boolean v1, p0, Lcom/android/server/HtcCellInfoManager;->mCellScanTurnedOn:Z

    .line 85
    iget-boolean v2, p0, Lcom/android/server/HtcCellInfoManager;->mCellScanTurnedOn:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #enable:I
    .end local v1           #ret:Z
    :cond_2
    move v0, v2

    .line 66
    goto :goto_1
.end method
