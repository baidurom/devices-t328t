.class Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
.super Ljava/lang/Object;
.source "FilePickerCloudHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCloudHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudStorageWrapper"
.end annotation


# instance fields
.field private CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private currentRunable:Ljava/lang/Runnable;

.field private mAccountFolderName:Ljava/lang/String;

.field private mAccountId:Ljava/lang/String;

.field private mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

.field private mIsRefresh:Z

.field private mIsStorageInitialized:Z

.field private mServiceName:Ljava/lang/String;

.field private mServiceTextName:Ljava/lang/String;

.field private mStorageDataSourceType:I

.field final synthetic this$0:Lcom/htc/app/FilePickerCloudHelper;


# direct methods
.method public constructor <init>(Lcom/htc/app/FilePickerCloudHelper;ILjava/lang/String;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;)V
    .locals 3
    .parameter
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "cloudStorage"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 504
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 393
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    .line 394
    iput-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 398
    iput-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

    .line 514
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsStorageInitialized:Z

    .line 837
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsRefresh:Z

    .line 505
    iput-object p4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 506
    iput p2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    .line 507
    iput-object p3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    .line 508
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->clearCloudFileListTimePreferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->loadCloudFileListTimePreferences(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->listFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 392
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->findFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private clearAllCloudFileListTimePreferences()V
    .locals 5

    .prologue
    .line 432
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v0

    .line 433
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 437
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 438
    .local v2, sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 439
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private clearCloudFileListTimePreferences(Ljava/lang/String;)V
    .locals 5
    .parameter "cloudPath"

    .prologue
    .line 420
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v0

    .line 421
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 429
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 425
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 426
    .local v2, sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    const-wide/16 v3, -0x1

    invoke-interface {v2, p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private findFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "cloudFolderPath"
    .parameter "searchWord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 795
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 796
    .local v4, resultItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;>;"
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isNeedRefreshTodayCloudFileList(Ljava/lang/String;)Z

    move-result v3

    .line 797
    .local v3, isNeedRefresh:Z
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isStorageInitialized()Z

    move-result v5

    if-nez v5, :cond_0

    .line 798
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->init()V

    .line 800
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 801
    .local v0, cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    if-eqz v0, :cond_2

    .line 802
    const/4 v2, 0x0

    .line 806
    .local v2, extensionFilter:Ljava/lang/String;
    invoke-virtual {v0, p1, v2, p2, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->findFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 808
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 809
    const/4 v3, 0x1

    .line 810
    invoke-virtual {v0, p1, v2, p2, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->findFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 813
    :cond_1
    if-eqz v3, :cond_2

    .line 814
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->saveCloudFileListTimePreferences(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/sdk/service/cloudstorage/HtcCloudException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    .end local v0           #cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    .end local v2           #extensionFilter:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v4

    .line 825
    :catch_0
    move-exception v1

    .line 826
    .local v1, e:Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
    iget-object v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    const/4 v6, 0x1

    #calls: Lcom/htc/app/FilePickerCloudHelper;->errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    invoke-static {v5, v1, v6}, Lcom/htc/app/FilePickerCloudHelper;->access$100(Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V

    .line 827
    iget-object v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cloudStorage.findFiles()->ServiceName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRefresh:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e.getErrorCode():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e.getMessage():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNeedRefreshCloudFileListAtDuring(Ljava/lang/String;)Z
    .locals 10
    .parameter "cloudFolderPath"

    .prologue
    const-wide/16 v8, -0x1

    .line 470
    const/4 v5, 0x1

    .line 471
    .local v5, result:Z
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->loadCloudFileListTimePreferences(Ljava/lang/String;)J

    move-result-wide v0

    .line 472
    .local v0, cloudFolderListTime:J
    cmp-long v6, v0, v8

    if-nez v6, :cond_0

    .line 473
    const/4 v5, 0x1

    .line 491
    :goto_0
    return v5

    .line 475
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 476
    .local v2, during:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    .line 477
    mul-long/2addr v2, v8

    .line 479
    :cond_1
    const-wide/32 v6, 0x668a0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_2

    .line 480
    const/4 v5, 0x0

    goto :goto_0

    .line 485
    :cond_2
    iget-object v6, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    .line 486
    .local v4, isNetworkConnected:Z
    move v5, v4

    goto :goto_0
.end method

.method private isNeedRefreshTodayCloudFileList(Ljava/lang/String;)Z
    .locals 7
    .parameter "cloudFolderPath"

    .prologue
    .line 453
    iget-boolean v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsRefresh:Z

    .line 454
    .local v4, result:Z
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->loadCloudFileListTimePreferences(Ljava/lang/String;)J

    move-result-wide v0

    .line 455
    .local v0, cloudFolderListTime:J
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-nez v5, :cond_0

    .line 456
    const/4 v4, 0x1

    .line 466
    :goto_0
    return v4

    .line 458
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 459
    .local v2, date:Ljava/util/Date;
    invoke-static {v2}, Lcom/htc/app/FilePickerUtil;->isToday(Ljava/util/Date;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 460
    .local v3, isToday:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 461
    const/4 v4, 0x0

    goto :goto_0

    .line 463
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private listFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "cloudFolderPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v3, resultItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;>;"
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isNeedRefreshTodayCloudFileList(Ljava/lang/String;)Z

    move-result v2

    .line 752
    .local v2, isNeedRefresh:Z
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isStorageInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->init()V

    .line 755
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 756
    .local v0, cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    if-eqz v0, :cond_2

    .line 760
    invoke-virtual {v0, p1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->listFiles(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 761
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 762
    const/4 v2, 0x1

    .line 763
    invoke-virtual {v0, p1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->listFiles(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 765
    :cond_1
    if-eqz v2, :cond_2

    .line 766
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->saveCloudFileListTimePreferences(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/sdk/service/cloudstorage/HtcCloudException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    .end local v0           #cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    :cond_2
    :goto_0
    return-object v3

    .line 779
    :catch_0
    move-exception v1

    .line 780
    .local v1, e:Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    const/4 v5, 0x1

    #calls: Lcom/htc/app/FilePickerCloudHelper;->errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    invoke-static {v4, v1, v5}, Lcom/htc/app/FilePickerCloudHelper;->access$100(Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V

    .line 782
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cloudStorage.listFiles()->ServiceName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DataSourceType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRefresh:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e.getErrorCode():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e.getMessage():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private loadCloudFileListTimePreferences(Ljava/lang/String;)J
    .locals 6
    .parameter "cloudPath"

    .prologue
    const-wide/16 v0, -0x1

    .line 443
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v2

    .line 444
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_0

    .line 449
    :goto_0
    return-wide v0

    .line 446
    :cond_0
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 448
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v3, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 449
    .local v0, cloudFolderListTime:J
    goto :goto_0
.end method

.method private saveCloudFileListTimePreferences(Ljava/lang/String;)V
    .locals 7
    .parameter "cloudPath"

    .prologue
    .line 404
    iget-object v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v0

    .line 405
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 409
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 410
    .local v4, sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 411
    .local v1, currentTime:Ljava/lang/Long;
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 412
    .local v2, isRoot:Z
    if-eqz v2, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->clearAllCloudFileListTimePreferences()V

    .line 415
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v4, p1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method checkToRemovePrefixFolderString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getItemTextPath()Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, prefixString:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 640
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/app/FilePickerCloudHelper;->access$800(Lcom/htc/app/FilePickerCloudHelper;)Ljava/lang/String;

    move-result-object p1

    .line 651
    :cond_1
    :goto_0
    return-object p1

    .line 642
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 644
    .local v0, indexOf:I
    if-ltz v0, :cond_1

    .line 645
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 646
    .local v1, len:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getAccountFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudShareLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cloudPath"

    .prologue
    .line 866
    move-object v2, p1

    .line 867
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isStorageInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->init()V

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 870
    .local v0, cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    if-eqz v0, :cond_1

    .line 872
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->publishURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/sdk/service/cloudstorage/HtcCloudException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 884
    :cond_1
    :goto_0
    return-object v2

    .line 873
    :catch_0
    move-exception v1

    .line 875
    .local v1, e:Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    const/4 v4, 0x1

    #calls: Lcom/htc/app/FilePickerCloudHelper;->errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    invoke-static {v3, v1, v4}, Lcom/htc/app/FilePickerCloudHelper;->access$100(Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V

    .line 877
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cloudStorage.publishURI()->ServiceName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e.getErrorCode():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e.getMessage():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCloudStorage()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    return-object v0
.end method

.method public getCloudStorageFileItem(Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    .locals 7
    .parameter "cloudFolderPath"

    .prologue
    .line 705
    const/4 v3, 0x0

    .line 706
    .local v3, resultItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isNeedRefreshTodayCloudFileList(Ljava/lang/String;)Z

    move-result v2

    .line 708
    .local v2, isNeedRefresh:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 709
    .local v0, cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    if-eqz v0, :cond_3

    .line 712
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isStorageInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->init()V

    .line 714
    :cond_0
    invoke-virtual {v0, p1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->getAbsoluteFile(Ljava/lang/String;Z)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    move-result-object v3

    .line 715
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 716
    const/4 v2, 0x1

    .line 717
    invoke-virtual {v0, p1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->getAbsoluteFile(Ljava/lang/String;Z)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    move-result-object v3

    .line 719
    :cond_1
    if-eqz v2, :cond_2

    .line 720
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->saveCloudFileListTimePreferences(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/sdk/service/cloudstorage/HtcCloudException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :cond_2
    if-nez v3, :cond_3

    .line 746
    .end local v0           #cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    :cond_3
    :goto_0
    return-object v3

    .line 734
    :catch_0
    move-exception v1

    .line 736
    .local v1, e:Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    const/4 v5, 0x1

    #calls: Lcom/htc/app/FilePickerCloudHelper;->errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    invoke-static {v4, v1, v5}, Lcom/htc/app/FilePickerCloudHelper;->access$100(Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V

    .line 738
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCloudStorage.getAbsoluteFile()->ServiceName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRefresh:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e.getErrorCode():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e.getMessage():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDataSourceType()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    return v0
.end method

.method public getItemInfoFolderInstance(Ljava/lang/String;)Lcom/htc/app/ItemInfo;
    .locals 4
    .parameter "path"

    .prologue
    .line 673
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getCloudStorageFileItem(Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    move-result-object v1

    .line 674
    .local v1, cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    iget v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    #calls: Lcom/htc/app/FilePickerCloudHelper;->changeToItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;
    invoke-static {v2, v3, v1}, Lcom/htc/app/FilePickerCloudHelper;->access$900(Lcom/htc/app/FilePickerCloudHelper;ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;

    move-result-object v0

    .line 678
    .local v0, cloudItemInfo:Lcom/htc/app/ItemInfo;
    return-object v0
.end method

.method public getItemTextPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 568
    const-string v0, ""

    .line 569
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 570
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountFolderName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v0

    .line 576
    :cond_1
    :goto_0
    return-object v0

    .line 573
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceTextName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mServiceTextName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    invoke-static {v1}, Lcom/htc/app/FilePickerUtil;->getDataSourceTypeText(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mServiceTextName:Ljava/lang/String;

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mServiceTextName:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageFolderItemInstance()Lcom/htc/app/FolderItemInfo;
    .locals 9

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, itemName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 690
    :cond_0
    const-wide/16 v0, -0x1

    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/app/FilePickerCloudHelper;->access$800(Lcom/htc/app/FilePickerCloudHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/htc/app/FolderItemInfo;->getCloudInstance(JLjava/lang/String;Ljava/lang/String;JIZ)Lcom/htc/app/FolderItemInfo;

    move-result-object v8

    .line 692
    .local v8, cloudFolderItemInfo:Lcom/htc/app/FolderItemInfo;
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/htc/app/FolderItemInfo;->setAccountId(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mServiceName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/htc/app/FolderItemInfo;->setServiceName(Ljava/lang/String;)V

    .line 695
    return-object v8
.end method

.method init()V
    .locals 4

    .prologue
    .line 524
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 525
    .local v1, cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    if-eqz v1, :cond_0

    .line 526
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v2

    .line 527
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 528
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    .line 529
    .local v0, accountId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v1, v2, v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 538
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsStorageInitialized:Z

    .line 542
    .end local v0           #accountId:Ljava/lang/String;
    .end local v2           #context:Landroid/content/Context;
    :cond_0
    return-void
.end method

.method isCloudPath(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 616
    const/4 v1, 0x0

    .line 617
    .local v1, isCloudPath:Z
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getItemTextPath()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, folderPath:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    const/4 v1, 0x1

    .line 623
    :cond_0
    return v1
.end method

.method isCloudRoot(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 627
    const/4 v1, 0x0

    .line 628
    .local v1, isRoot:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getItemTextPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/app/FilePickerCloudHelper;->access$800(Lcom/htc/app/FilePickerCloudHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, folderPath:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    const/4 v1, 0x1

    .line 634
    :cond_0
    return v1
.end method

.method public isRefresh()Z
    .locals 1

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsRefresh:Z

    return v0
.end method

.method isStorageInitialized()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsStorageInitialized:Z

    return v0
.end method

.method release()V
    .locals 4

    .prologue
    .line 969
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 970
    .local v1, cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    if-eqz v1, :cond_0

    .line 971
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    iget v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    #calls: Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerCloudHelper;->access$1500(Lcom/htc/app/FilePickerCloudHelper;I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 972
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v0, p0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->removeCloudStorageWrapper(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)V

    .line 973
    invoke-virtual {v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->release()V

    .line 974
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 977
    .end local v0           #cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    :cond_0
    return-void
.end method

.method public release(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 966
    return-void
.end method

.method requestDownloadFile(IJLjava/lang/String;J)V
    .locals 10
    .parameter "dataSourceType"
    .parameter "cloudId"
    .parameter "cloudFilePath"
    .parameter "fileSize"

    .prologue
    .line 891
    if-nez p4, :cond_1

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v0}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v6

    .line 894
    .local v6, filePickerUtil:Lcom/htc/app/FilePickerUtil;
    if-eqz v6, :cond_0

    .line 896
    new-instance v0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p1

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;-><init>(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;JLjava/lang/String;ILcom/htc/app/FilePickerUtil;J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->currentRunable:Ljava/lang/Runnable;

    .line 954
    new-instance v9, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->currentRunable:Ljava/lang/Runnable;

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 955
    .local v9, getFileThread:Ljava/lang/Thread;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 956
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setAccountFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "accountFolderName"

    .prologue
    .line 594
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountFolderName:Ljava/lang/String;

    .line 595
    return-void
.end method

.method public setCloudStorage(Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;)V
    .locals 0
    .parameter "cloudStorage"

    .prologue
    .line 612
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 613
    return-void
.end method

.method public setRefresh(Z)V
    .locals 0
    .parameter "isRefresh"

    .prologue
    .line 854
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsRefresh:Z

    .line 855
    if-eqz p1, :cond_0

    .line 856
    invoke-direct {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->clearAllCloudFileListTimePreferences()V

    .line 858
    :cond_0
    return-void
.end method

.method setServiceName(Ljava/lang/String;)V
    .locals 2
    .parameter "serviceName"

    .prologue
    .line 551
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mServiceName:Ljava/lang/String;

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

    .line 553
    return-void
.end method
