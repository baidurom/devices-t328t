.class Lcom/htc/app/FolderScanner;
.super Ljava/lang/Object;
.source "FolderScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FolderScanner$FileExtensionFilter;
    }
.end annotation


# static fields
.field static final MESSAGE_SCAN_END:I = 0xa6

.field private static final TAG:Ljava/lang/String; = "FolderScanner"


# instance fields
.field private firstLevelFileCount:I

.field private isCloudPath:Z

.field private isStop:Z

.field private mAccountId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataSourceType:I

.field private mFileExtensionFilter:Lcom/htc/app/FolderScanner$FileExtensionFilter;

.field private mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mHandler:Landroid/os/Handler;

.field private mIsFirstLevel:Z

.field private mResultItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanToken:Ljava/lang/Object;

.field private mScanningPath:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/app/FilePickerUtil;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "filter"
    .parameter "filePickerCloudHelper"
    .parameter "filePickerUtil"
    .parameter "handler"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lcom/htc/app/FolderScanner;->isStop:Z

    .line 16
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/app/FolderScanner;->mScanningPath:[Ljava/lang/String;

    .line 17
    iput v3, p0, Lcom/htc/app/FolderScanner;->mDataSourceType:I

    .line 18
    iput-boolean v3, p0, Lcom/htc/app/FolderScanner;->mIsFirstLevel:Z

    .line 20
    iput-object v2, p0, Lcom/htc/app/FolderScanner;->mResultItemList:Ljava/util/LinkedList;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/FolderScanner;->firstLevelFileCount:I

    .line 25
    iput-object v2, p0, Lcom/htc/app/FolderScanner;->mAccountId:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/htc/app/FolderScanner;->mContext:Landroid/content/Context;

    .line 27
    iput-object v2, p0, Lcom/htc/app/FolderScanner;->mHandler:Landroid/os/Handler;

    .line 135
    iput-boolean v3, p0, Lcom/htc/app/FolderScanner;->isCloudPath:Z

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FolderScanner;->mScanToken:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/htc/app/FolderScanner;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Lcom/htc/app/FolderScanner$FileExtensionFilter;

    invoke-direct {v0, p0, p2}, Lcom/htc/app/FolderScanner$FileExtensionFilter;-><init>(Lcom/htc/app/FolderScanner;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/app/FolderScanner;->mFileExtensionFilter:Lcom/htc/app/FolderScanner$FileExtensionFilter;

    .line 41
    iput-object p3, p0, Lcom/htc/app/FolderScanner;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    .line 42
    iput-object p4, p0, Lcom/htc/app/FolderScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 43
    iput-object p5, p0, Lcom/htc/app/FolderScanner;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object v2, p0, Lcom/htc/app/FolderScanner;->mResultItemList:Ljava/util/LinkedList;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/FolderScanner;)Lcom/htc/app/FilePickerUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/app/FolderScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method private doFolderModeCloudScan(ILjava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 2
    .parameter "serviceType"
    .parameter "accountId"
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p4, resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v0, p0, Lcom/htc/app/FolderScanner;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    if-eqz v0, :cond_1

    .line 235
    iget-boolean v0, p0, Lcom/htc/app/FolderScanner;->mIsFirstLevel:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/htc/app/FolderScanner;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceRootFolderItemTextPath(I)Ljava/lang/String;

    move-result-object p3

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FolderScanner;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/app/FilePickerCloudHelper;->listFolderItemInfoLists(ILjava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;)V

    .line 239
    iget-boolean v0, p0, Lcom/htc/app/FolderScanner;->mIsFirstLevel:Z

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p4}, Ljava/util/LinkedList;->size()I

    move-result v0

    iput v0, p0, Lcom/htc/app/FolderScanner;->firstLevelFileCount:I

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    invoke-virtual {p4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    sget-object v0, Lcom/htc/app/FilePickerCore;->EMPTY_FOLDER:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p3, p1, v1}, Lcom/htc/app/FolderItemInfo;->getNothingInstance(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/htc/app/FolderItemInfo;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method doFolderModeFileScan(Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 12
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p2, resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 254
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mFileExtensionFilter:Lcom/htc/app/FolderScanner$FileExtensionFilter;

    invoke-virtual {v1, v9}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, filePathLists:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 258
    .local v5, filesAmount:I
    if-eqz v4, :cond_0

    .line 259
    array-length v5, v4

    .line 261
    :cond_0
    if-lez v5, :cond_3

    .line 262
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v3, v0, v7

    .line 263
    .local v3, filePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 264
    .local v2, file:Ljava/io/File;
    sget-boolean v9, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v9, :cond_1

    .line 265
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v9}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v9

    const/16 v10, -0x9

    if-ne v9, v10, :cond_2

    .line 284
    :cond_1
    invoke-static {v2}, Lcom/htc/app/FolderItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/FolderItemInfo;

    move-result-object v6

    .line 285
    .local v6, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    iget v9, p0, Lcom/htc/app/FolderScanner;->mDataSourceType:I

    invoke-virtual {v6, v9}, Lcom/htc/app/FolderItemInfo;->setItemDataSourceType(I)V

    .line 286
    invoke-virtual {p2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v6           #folderItemInfo:Lcom/htc/app/FolderItemInfo;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 277
    :cond_2
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/app/FilePickerUtil;->checkCanHideInternalStorageSdcardAndUsb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    .line 289
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_3
    iget-boolean v9, p0, Lcom/htc/app/FolderScanner;->mIsFirstLevel:Z

    if-nez v9, :cond_4

    .line 290
    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 291
    sget-object v9, Lcom/htc/app/FilePickerCore;->EMPTY_FOLDER:Ljava/lang/String;

    iget v10, p0, Lcom/htc/app/FolderScanner;->mDataSourceType:I

    iget-boolean v11, p0, Lcom/htc/app/FolderScanner;->isCloudPath:Z

    invoke-static {v9, p1, v10, v11}, Lcom/htc/app/FolderItemInfo;->getNothingInstance(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/htc/app/FolderItemInfo;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v4           #filePathLists:[Ljava/lang/String;
    .end local v5           #filesAmount:I
    :cond_4
    :goto_2
    return-void

    .line 296
    :cond_5
    iget-boolean v9, p0, Lcom/htc/app/FolderScanner;->mIsFirstLevel:Z

    if-nez v9, :cond_4

    .line 297
    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 298
    sget-object v9, Lcom/htc/app/FilePickerCore;->EMPTY_FOLDER:Ljava/lang/String;

    iget v10, p0, Lcom/htc/app/FolderScanner;->mDataSourceType:I

    iget-boolean v11, p0, Lcom/htc/app/FolderScanner;->isCloudPath:Z

    invoke-static {v9, p1, v10, v11}, Lcom/htc/app/FolderItemInfo;->getNothingInstance(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/htc/app/FolderItemInfo;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method getFirstLevelFileCount()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/htc/app/FolderScanner;->firstLevelFileCount:I

    return v0
.end method

.method public getResultItemList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/app/FolderScanner;->mResultItemList:Ljava/util/LinkedList;

    return-object v0
.end method

.method isStopStatus()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/htc/app/FolderScanner;->isStop:Z

    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 145
    iget-object v10, p0, Lcom/htc/app/FolderScanner;->mScanToken:Ljava/lang/Object;

    monitor-enter v10

    .line 146
    :try_start_0
    iget v2, p0, Lcom/htc/app/FolderScanner;->mDataSourceType:I

    .line 148
    .local v2, dataSourceType:I
    invoke-virtual {p0}, Lcom/htc/app/FolderScanner;->startScan()V

    .line 149
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, p0, Lcom/htc/app/FolderScanner;->mResultItemList:Ljava/util/LinkedList;

    .line 151
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mResultItemList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 152
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mResultItemList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    .line 154
    :cond_0
    iget-boolean v9, p0, Lcom/htc/app/FolderScanner;->mIsFirstLevel:Z

    if-eqz v9, :cond_1

    .line 155
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/app/FolderScanner;->firstLevelFileCount:I

    .line 158
    :cond_1
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v9}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v5

    .line 159
    .local v5, isRoodFolderVisabled:Z
    packed-switch v2, :pswitch_data_0

    .line 224
    :cond_2
    :goto_0
    :pswitch_0
    iget-boolean v9, p0, Lcom/htc/app/FolderScanner;->isStop:Z

    if-nez v9, :cond_3

    .line 225
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa6

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    invoke-virtual {p0}, Lcom/htc/app/FolderScanner;->stopScan()V

    .line 228
    :cond_3
    monitor-exit v10

    .line 229
    :goto_1
    return-void

    .line 165
    :pswitch_1
    iget-boolean v9, p0, Lcom/htc/app/FolderScanner;->mIsFirstLevel:Z

    if-eqz v9, :cond_7

    if-eqz v5, :cond_7

    .line 166
    iget-object v1, p0, Lcom/htc/app/FolderScanner;->mScanningPath:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 167
    .local v7, path:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v9, v7}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 166
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 170
    :cond_5
    invoke-static {v7}, Lcom/htc/app/FolderItemInfo;->getLocalFileInstance(Ljava/lang/String;)Lcom/htc/app/FolderItemInfo;

    move-result-object v8

    .line 171
    .local v8, rootItemInfo:Lcom/htc/app/FolderItemInfo;
    const/16 v9, -0x9

    if-ne v2, v9, :cond_6

    .line 172
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v9, v7}, Lcom/htc/app/FilePickerUtil;->checkLocalFileDataType(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/app/FolderItemInfo;->setItemDataSourceType(I)V

    .line 177
    :goto_4
    if-eqz v8, :cond_4

    .line 178
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mResultItemList:Ljava/util/LinkedList;

    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 228
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #dataSourceType:I
    .end local v3           #i$:I
    .end local v5           #isRoodFolderVisabled:Z
    .end local v6           #len$:I
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #rootItemInfo:Lcom/htc/app/FolderItemInfo;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 175
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #dataSourceType:I
    .restart local v3       #i$:I
    .restart local v5       #isRoodFolderVisabled:Z
    .restart local v6       #len$:I
    .restart local v7       #path:Ljava/lang/String;
    .restart local v8       #rootItemInfo:Lcom/htc/app/FolderItemInfo;
    :cond_6
    :try_start_1
    invoke-virtual {v8, v2}, Lcom/htc/app/FolderItemInfo;->setItemDataSourceType(I)V

    goto :goto_4

    .line 182
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #rootItemInfo:Lcom/htc/app/FolderItemInfo;
    :cond_7
    iget-object v1, p0, Lcom/htc/app/FolderScanner;->mScanningPath:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_5
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 183
    .restart local v7       #path:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v9, v7}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 182
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 185
    :cond_8
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mResultItemList:Ljava/util/LinkedList;

    invoke-virtual {p0, v7, v9}, Lcom/htc/app/FolderScanner;->doFolderModeFileScan(Ljava/lang/String;Ljava/util/LinkedList;)V

    goto :goto_6

    .line 191
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #path:Ljava/lang/String;
    :pswitch_2
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    if-nez v9, :cond_9

    .line 192
    monitor-exit v10

    goto :goto_1

    .line 193
    :cond_9
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v9, v2}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, accountIds:[Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 195
    const/4 v9, 0x0

    aget-object v9, v0, v9

    iput-object v9, p0, Lcom/htc/app/FolderScanner;->mAccountId:Ljava/lang/String;

    .line 200
    :goto_7
    const/4 v4, 0x0

    .line 201
    .local v4, isNetworkConnected:Z
    iget-boolean v9, p0, Lcom/htc/app/FolderScanner;->mIsFirstLevel:Z

    if-eqz v9, :cond_b

    if-eqz v5, :cond_b

    .line 205
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    .line 206
    if-eqz v4, :cond_2

    .line 207
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    iget-object v11, p0, Lcom/htc/app/FolderScanner;->mResultItemList:Ljava/util/LinkedList;

    invoke-virtual {v9, v2, v11}, Lcom/htc/app/FilePickerCloudHelper;->getRootFolderItemInstances(ILjava/util/List;)V

    .line 208
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mResultItemList:Ljava/util/LinkedList;

    if-eqz v9, :cond_2

    .line 209
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mResultItemList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    iput v9, p0, Lcom/htc/app/FolderScanner;->firstLevelFileCount:I

    goto/16 :goto_0

    .line 197
    .end local v4           #isNetworkConnected:Z
    :cond_a
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/app/FolderScanner;->mAccountId:Ljava/lang/String;

    goto :goto_7

    .line 213
    .restart local v4       #isNetworkConnected:Z
    :cond_b
    iget-object v1, p0, Lcom/htc/app/FolderScanner;->mScanningPath:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_8
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 214
    .restart local v7       #path:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    .line 215
    if-nez v4, :cond_c

    .line 213
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 218
    :cond_c
    iget-object v9, p0, Lcom/htc/app/FolderScanner;->mAccountId:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/app/FolderScanner;->mResultItemList:Ljava/util/LinkedList;

    invoke-direct {p0, v2, v9, v7, v11}, Lcom/htc/app/FolderScanner;->doFolderModeCloudScan(ILjava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 159
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method setScanPath(I[Ljava/lang/String;Z)V
    .locals 0
    .parameter "dataSourceType"
    .parameter "strPath"
    .parameter "isFirstLevel"

    .prologue
    .line 52
    iput p1, p0, Lcom/htc/app/FolderScanner;->mDataSourceType:I

    .line 53
    iput-object p2, p0, Lcom/htc/app/FolderScanner;->mScanningPath:[Ljava/lang/String;

    .line 54
    iput-boolean p3, p0, Lcom/htc/app/FolderScanner;->mIsFirstLevel:Z

    .line 55
    return-void
.end method

.method startScan()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FolderScanner;->isStop:Z

    .line 129
    return-void
.end method

.method stopScan()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FolderScanner;->isStop:Z

    .line 125
    return-void
.end method
