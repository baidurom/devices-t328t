.class Lcom/htc/app/FilePickerCloudHelper;
.super Ljava/lang/Object;
.source "FilePickerCloudHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;,
        Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;,
        Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    }
.end annotation


# static fields
.field private static final CloudFileListTimeExpirationDuring:J = 0x668a0L

.field private static final DEBUG:Z = false

.field static final IsSupportMultipleAccountInFilePicker:Z = false

.field private static final IsSupportOffLineFileList:Z = false

.field private static final TAG:Ljava/lang/String; = "FilePickerCloudHelper"


# instance fields
.field private final DOWNLOAD_FAIL_ERROR:I

.field private final MORE_EXPAND_FAIL_ERROR:I

.field private initThread:Ljava/lang/Thread;

.field private mCloudHelperInitialized:Z

.field private mCloudRootPath:Ljava/lang/String;

.field private mCloudServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudServiceListUpdateToken:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mIsCloudHelperEnabled:Z

.field private mServiceNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/htc/app/FilePickerUtil;)V
    .locals 2
    .parameter "context"
    .parameter "isCloudFunctionEnabled"
    .parameter "filePickerUtil"

    .prologue
    const/4 v1, 0x0

    .line 1222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceListUpdateToken:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    .line 41
    iput v1, p0, Lcom/htc/app/FilePickerCloudHelper;->DOWNLOAD_FAIL_ERROR:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/app/FilePickerCloudHelper;->MORE_EXPAND_FAIL_ERROR:I

    .line 1107
    iput-boolean v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mIsCloudHelperEnabled:Z

    .line 1127
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    .line 1236
    iput-boolean v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudHelperInitialized:Z

    .line 1314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 1223
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;

    .line 1224
    iput-object p3, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 1226
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper;->listServices()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    .line 1227
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1228
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerCloudHelper;->setCloudHelperEnabled(Z)V

    .line 1234
    :goto_0
    return-void

    .line 1230
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/app/FilePickerCloudHelper;->setCloudHelperEnabled(Z)V

    .line 1231
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper;->init()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/app/FilePickerCloudHelper;I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerCloudHelper;ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->newCloudStorageWrapperInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/app/FilePickerCloudHelper;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceListUpdateToken:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerCloudHelper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/app/FilePickerCloudHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/app/FilePickerCloudHelper;ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->changeToItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method private changeToFolderItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/FolderItemInfo;
    .locals 18
    .parameter "dataSourceType"
    .parameter "cloudStorageFileItem"

    .prologue
    .line 982
    const/4 v12, 0x0

    .line 983
    .local v12, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    if-eqz p2, :cond_0

    .line 984
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getId()I

    move-result v7

    int-to-long v1, v7

    .line 985
    .local v1, cloudId:J
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 986
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getCloudPath()Ljava/lang/String;

    move-result-object v4

    .line 988
    .local v4, cloudPath:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getCloudLastModified()J

    move-result-wide v5

    .line 989
    .local v5, cloudLastModified:J
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getLocalLastModified()J

    move-result-wide v13

    .line 990
    .local v13, localLastModified:J
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->isDir()Z

    move-result v8

    .local v8, isFolder:Z
    move/from16 v7, p1

    .line 992
    invoke-static/range {v1 .. v8}, Lcom/htc/app/FolderItemInfo;->getCloudInstance(JLjava/lang/String;Ljava/lang/String;JIZ)Lcom/htc/app/FolderItemInfo;

    move-result-object v12

    .line 995
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->size()I

    move-result v7

    int-to-long v10, v7

    .line 996
    .local v10, fileSize:J
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/htc/app/FolderItemInfo;->setItemDataSourceType(I)V

    .line 997
    invoke-virtual {v12, v10, v11}, Lcom/htc/app/FolderItemInfo;->setFileSize(J)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getServiceType()Ljava/lang/String;

    move-result-object v16

    .line 999
    .local v16, serviceName:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/htc/app/FolderItemInfo;->setServiceName(Ljava/lang/String;)V

    .line 1000
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getLocalPath()Ljava/lang/String;

    move-result-object v15

    .line 1001
    .local v15, localPath:Ljava/lang/String;
    invoke-virtual {v12, v15}, Lcom/htc/app/FolderItemInfo;->setLocalPath(Ljava/lang/String;)V

    .line 1002
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getSyncState()Z

    move-result v17

    .line 1003
    .local v17, syncState:Z
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->account()Ljava/lang/String;

    move-result-object v9

    .line 1004
    .local v9, accountId:Ljava/lang/String;
    invoke-virtual {v12, v9}, Lcom/htc/app/FolderItemInfo;->setAccountId(Ljava/lang/String;)V

    .line 1009
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/app/FolderItemInfo;->setSyncState(Z)V

    .line 1011
    invoke-virtual {v12, v5, v6}, Lcom/htc/app/FolderItemInfo;->setCouldLastModified(J)V

    .line 1012
    invoke-virtual {v12, v13, v14}, Lcom/htc/app/FolderItemInfo;->setLocalLastModified(J)V

    .line 1014
    .end local v1           #cloudId:J
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #cloudPath:Ljava/lang/String;
    .end local v5           #cloudLastModified:J
    .end local v8           #isFolder:Z
    .end local v9           #accountId:Ljava/lang/String;
    .end local v10           #fileSize:J
    .end local v13           #localLastModified:J
    .end local v15           #localPath:Ljava/lang/String;
    .end local v16           #serviceName:Ljava/lang/String;
    .end local v17           #syncState:Z
    :cond_0
    return-object v12
.end method

.method private changeToItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;
    .locals 18
    .parameter "dataSourceType"
    .parameter "cloudStorageFileItem"

    .prologue
    .line 1019
    const/4 v12, 0x0

    .line 1020
    .local v12, itemInfo:Lcom/htc/app/ItemInfo;
    if-eqz p2, :cond_0

    .line 1021
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getId()I

    move-result v7

    int-to-long v1, v7

    .line 1022
    .local v1, cloudId:J
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getCloudPath()Ljava/lang/String;

    move-result-object v4

    .line 1023
    .local v4, cloudPath:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 1024
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getCloudLastModified()J

    move-result-wide v5

    .line 1025
    .local v5, cloudLastModified:J
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getLocalLastModified()J

    move-result-wide v13

    .line 1026
    .local v13, localLastModified:J
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->isDir()Z

    move-result v8

    .local v8, isFolder:Z
    move/from16 v7, p1

    .line 1028
    invoke-static/range {v1 .. v8}, Lcom/htc/app/ItemInfo;->getCloudInstance(JLjava/lang/String;Ljava/lang/String;JIZ)Lcom/htc/app/ItemInfo;

    move-result-object v12

    .line 1031
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->size()I

    move-result v7

    int-to-long v10, v7

    .line 1032
    .local v10, fileSize:J
    invoke-virtual {v12, v10, v11}, Lcom/htc/app/ItemInfo;->setFileSize(J)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getServiceType()Ljava/lang/String;

    move-result-object v16

    .line 1034
    .local v16, serviceName:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/htc/app/ItemInfo;->setServiceName(Ljava/lang/String;)V

    .line 1035
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getLocalPath()Ljava/lang/String;

    move-result-object v15

    .line 1036
    .local v15, localPath:Ljava/lang/String;
    invoke-virtual {v12, v15}, Lcom/htc/app/ItemInfo;->setLocalPath(Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getSyncState()Z

    move-result v17

    .line 1039
    .local v17, syncState:Z
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->account()Ljava/lang/String;

    move-result-object v9

    .line 1040
    .local v9, accountId:Ljava/lang/String;
    invoke-virtual {v12, v9}, Lcom/htc/app/ItemInfo;->setAccountId(Ljava/lang/String;)V

    .line 1044
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/app/ItemInfo;->setSyncState(Z)V

    .line 1046
    invoke-virtual {v12, v5, v6}, Lcom/htc/app/ItemInfo;->setCouldLastModified(J)V

    .line 1047
    invoke-virtual {v12, v13, v14}, Lcom/htc/app/ItemInfo;->setLocalLastModified(J)V

    .line 1049
    .end local v1           #cloudId:J
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #cloudPath:Ljava/lang/String;
    .end local v5           #cloudLastModified:J
    .end local v8           #isFolder:Z
    .end local v9           #accountId:Ljava/lang/String;
    .end local v10           #fileSize:J
    .end local v13           #localLastModified:J
    .end local v15           #localPath:Ljava/lang/String;
    .end local v16           #serviceName:Ljava/lang/String;
    .end local v17           #syncState:Z
    :cond_0
    return-object v12
.end method

.method private checkToRemovePrefixFolderString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "path"

    .prologue
    .line 1393
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    .line 1395
    .local v0, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    .line 1396
    invoke-virtual {v0, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->checkToRemovePrefixFolderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1398
    :cond_0
    return-object p3
.end method

.method private checkToRemovePrefixLocalTempFolderString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 1581
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    .line 1582
    .local v2, prefixString:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1583
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1584
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1585
    .local v0, indexOf:I
    if-ltz v0, :cond_0

    .line 1586
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1587
    .local v1, len:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1592
    .end local v0           #indexOf:I
    .end local v1           #len:I
    :cond_0
    return-object p1
.end method

.method private errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    .locals 8
    .parameter "e"
    .parameter "errorType"

    .prologue
    const/4 v7, -0x8

    const/16 v6, -0x9

    const/16 v5, -0xa

    const/16 v4, -0xb

    const/16 v3, 0xd

    .line 1981
    invoke-virtual {p1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    move-result-object v0

    .line 1982
    .local v0, c:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 1983
    .local v1, filePickerUtil:Lcom/htc/app/FilePickerUtil;
    if-nez v1, :cond_1

    .line 2028
    :cond_0
    :goto_0
    return-void

    .line 1985
    :cond_1
    if-nez p2, :cond_9

    .line 1986
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->UnLink:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1987
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 2001
    :cond_2
    :goto_1
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto :goto_0

    .line 1988
    :cond_3
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->RequestFailed:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1989
    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    goto :goto_1

    .line 1990
    :cond_4
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->FileNotFound:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1991
    const/4 v2, -0x7

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    goto :goto_1

    .line 1992
    :cond_5
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->DiskFull:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1993
    invoke-virtual {v1, v7}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    goto :goto_1

    .line 1994
    :cond_6
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->MediaUnMounted:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1995
    invoke-virtual {v1, v6}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    goto :goto_1

    .line 1996
    :cond_7
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->OutOfMemory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1997
    invoke-virtual {v1, v5}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    goto :goto_1

    .line 1998
    :cond_8
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->NoNetwork:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1999
    invoke-virtual {v1, v4}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    goto :goto_1

    .line 2002
    :cond_9
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 2003
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->UnLink:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2004
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 2005
    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto :goto_0

    .line 2006
    :cond_a
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->RequestFailed:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2007
    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 2008
    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_0

    .line 2009
    :cond_b
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->FileNotFound:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2010
    const/4 v2, -0x7

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 2011
    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_0

    .line 2012
    :cond_c
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->DiskFull:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2013
    invoke-virtual {v1, v7}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 2014
    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_0

    .line 2015
    :cond_d
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->MediaUnMounted:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2016
    invoke-virtual {v1, v6}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 2017
    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_0

    .line 2018
    :cond_e
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->OutOfMemory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2019
    invoke-virtual {v1, v5}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 2020
    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_0

    .line 2021
    :cond_f
    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->NoNetwork:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2022
    invoke-virtual {v1, v4}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 2023
    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_0

    .line 2025
    :cond_10
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_0
.end method

.method private getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .locals 4
    .parameter "cloudDataSourceType"

    .prologue
    .line 1089
    const/4 v2, 0x0

    .line 1090
    .local v2, result:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    .line 1091
    .local v0, cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getServiceType()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1092
    move-object v2, v0

    goto :goto_0

    .line 1095
    .end local v0           #cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    :cond_1
    return-object v2
.end method

.method private getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"

    .prologue
    .line 1099
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1100
    .local v0, cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    const/4 v1, 0x0

    .line 1101
    .local v1, result:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getCloudStorageWrapper(Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v1

    .line 1104
    :cond_0
    return-object v1
.end method

.method private getFolderItemInfoFromCloudPath(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FolderItemInfo;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "cloudPath"

    .prologue
    .line 1629
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageFileItem(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    move-result-object v0

    .line 1631
    .local v0, cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    const/4 v1, 0x0

    .line 1633
    .local v1, resultItem:Lcom/htc/app/FolderItemInfo;
    if-eqz v0, :cond_0

    .line 1634
    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerCloudHelper;->changeToFolderItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    .line 1636
    :cond_0
    return-object v1
.end method

.method private getItemInfoFromCloudPath(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/ItemInfo;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "cloudPath"

    .prologue
    .line 1618
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageFileItem(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    move-result-object v0

    .line 1620
    .local v0, cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    const/4 v1, 0x0

    .line 1621
    .local v1, resultItem:Lcom/htc/app/ItemInfo;
    if-eqz v0, :cond_0

    .line 1622
    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerCloudHelper;->changeToItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;

    move-result-object v1

    .line 1624
    :cond_0
    return-object v1
.end method

.method static getServiceTypeFromString(Ljava/lang/String;)I
    .locals 3
    .parameter "serviceName"

    .prologue
    .line 1283
    const/4 v0, 0x0

    .line 1284
    .local v0, result:I
    const-string v1, "dropbox"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1285
    const/4 v0, 0x0

    .line 1292
    :goto_0
    return v0

    .line 1286
    :cond_0
    const-string v1, "skydrive"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1287
    const/4 v0, 0x1

    goto :goto_0

    .line 1289
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The serviceName of HtcCloudService not match. Please check the method listService() from HtcCloudService."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isCloudFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "localPath"

    .prologue
    .line 1524
    const/4 v0, 0x0

    .line 1525
    .local v0, result:Z
    invoke-static {p0, p1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->isCloudFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1526
    return v0
.end method

.method private newCloudStorageWrapperInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .locals 5
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "accountFolderName"

    .prologue
    .line 1297
    const/4 v2, 0x0

    .line 1298
    .local v2, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1299
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getServiceName()Ljava/lang/String;

    move-result-object v3

    .line 1301
    .local v3, serviceName:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    move-result-object v1

    .line 1303
    .local v1, cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    if-eqz v1, :cond_0

    .line 1304
    new-instance v2, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    .end local v2           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-direct {v2, p0, p1, p2, v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;-><init>(Lcom/htc/app/FilePickerCloudHelper;ILjava/lang/String;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;)V

    .line 1306
    .restart local v2       #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-virtual {v2, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->setAccountFolderName(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->setServiceName(Ljava/lang/String;)V

    .line 1311
    .end local v1           #cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    .end local v3           #serviceName:Ljava/lang/String;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1659
    iget-object v7, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1660
    .local v2, cloudServices:[Ljava/lang/Object;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .local v6, object:Ljava/lang/Object;
    move-object v1, v6

    .line 1661
    check-cast v1, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    .line 1663
    .local v1, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->release()V

    .line 1660
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1666
    .end local v1           #cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .end local v6           #object:Ljava/lang/Object;
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/htc/app/FilePickerCloudHelper;->initThread:Ljava/lang/Thread;

    if-eqz v7, :cond_1

    .line 1667
    iget-object v7, p0, Lcom/htc/app/FilePickerCloudHelper;->initThread:Ljava/lang/Thread;

    const-wide/16 v8, 0x1388

    invoke-virtual {v7, v8, v9}, Ljava/lang/Thread;->join(J)V

    .line 1668
    iget-object v7, p0, Lcom/htc/app/FilePickerCloudHelper;->initThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1669
    iget-object v7, p0, Lcom/htc/app/FilePickerCloudHelper;->initThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :cond_1
    :goto_1
    iput-object v10, p0, Lcom/htc/app/FilePickerCloudHelper;->initThread:Ljava/lang/Thread;

    .line 1676
    iput-object v10, p0, Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;

    .line 1678
    return-void

    .line 1671
    :catch_0
    move-exception v3

    .line 1672
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1646
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper;->close()V

    .line 1647
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1649
    return-void
.end method

.method findItemInfoLists(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 11
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "path"
    .parameter "searchWord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1475
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 1476
    .local v9, itemInfoLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1477
    .local v1, cloudStorageFileItemLists:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;>;"
    const/4 v3, 0x0

    .line 1478
    .local v3, email:Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v2

    .line 1479
    .local v2, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v2, :cond_0

    .line 1480
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->checkToRemovePrefixFolderString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1481
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1482
    .local v7, isRoot:Z
    if-eqz v7, :cond_3

    .line 1483
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->findFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v10, p4}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1800(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1490
    .end local v7           #isRoot:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 1491
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 1492
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    .line 1497
    .local v0, cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 1498
    .local v4, filename:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->isDir()Z

    move-result v6

    .line 1499
    .local v6, isFolder:Z
    if-nez v6, :cond_2

    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v10, v4}, Lcom/htc/app/FilePickerUtil;->containExtension(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1500
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerCloudHelper;->changeToItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;

    move-result-object v8

    .line 1501
    .local v8, item:Lcom/htc/app/ItemInfo;
    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1486
    .end local v0           #cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #isFolder:Z
    .end local v8           #item:Lcom/htc/app/ItemInfo;
    .restart local v7       #isRoot:Z
    :cond_3
    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->findFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, p3, p4}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1800(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 1506
    .end local v7           #isRoot:Z
    :cond_4
    return-object v9
.end method

.method getAccountIds(I)[Ljava/lang/String;
    .locals 2
    .parameter "cloudDataSourceType"

    .prologue
    .line 1562
    const/4 v1, 0x0

    .line 1563
    .local v1, results:[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1564
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1565
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getAccountIds()[Ljava/lang/String;

    move-result-object v1

    .line 1567
    :cond_0
    return-object v1
.end method

.method getCloudDefaultDateSourceType()I
    .locals 8

    .prologue
    .line 1198
    const/4 v1, -0x1

    .line 1199
    .local v1, dataSourceType:I
    const/4 v2, 0x0

    .line 1200
    .local v2, hasCloudDataSourceEnabled:Z
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper;->listServices()[Ljava/lang/String;

    move-result-object v5

    .line 1201
    .local v5, services:[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 1202
    array-length v0, v5

    .line 1203
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1204
    aget-object v4, v5, v3

    .line 1205
    .local v4, serviceName:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1206
    invoke-static {v4}, Lcom/htc/app/FilePickerCloudHelper;->getServiceTypeFromString(Ljava/lang/String;)I

    move-result v1

    .line 1207
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerCloudHelper;->isCloudServiceEnabled(I)Z

    move-result v2

    .line 1208
    if-eqz v2, :cond_1

    .line 1214
    .end local v0           #count:I
    .end local v3           #i:I
    .end local v4           #serviceName:Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_2

    .line 1215
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "No found any HtcCloudService Enabled!!!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1203
    .restart local v0       #count:I
    .restart local v3       #i:I
    .restart local v4       #serviceName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1216
    .end local v0           #count:I
    .end local v3           #i:I
    .end local v4           #serviceName:Ljava/lang/String;
    :cond_2
    return v1
.end method

.method getCloudFileListTime(ILjava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "cloudPath"

    .prologue
    .line 1149
    const-wide/16 v1, -0x1

    .line 1150
    .local v1, result:J
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    .line 1152
    .local v0, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    .line 1153
    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->loadCloudFileListTimePreferences(Ljava/lang/String;)J
    invoke-static {v0, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1600(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)J

    move-result-wide v1

    .line 1155
    :cond_0
    return-wide v1
.end method

.method public getCloudServiceRootFolderItemTextPath(I)Ljava/lang/String;
    .locals 2
    .parameter "cloudDataSourceType"

    .prologue
    .line 1326
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    .line 1327
    .local v1, rootItemTextPath:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1328
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1329
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getCloudServiceRootFolderItemTextPath()Ljava/lang/String;

    move-result-object v1

    .line 1331
    :cond_0
    return-object v1
.end method

.method getCloudServiceTextName(I)Ljava/lang/String;
    .locals 2
    .parameter "cloudDataSourceType"

    .prologue
    .line 1181
    const-string v1, ""

    .line 1182
    .local v1, result:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1183
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v1

    .line 1186
    :cond_0
    return-object v1
.end method

.method getCloudServiceTotalCount()I
    .locals 2

    .prologue
    .line 1973
    const/4 v0, 0x0

    .line 1974
    .local v0, total:I
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1975
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1977
    :cond_0
    return v0
.end method

.method getCloudShareLink(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "cloudPath"
    .parameter "accountId"

    .prologue
    .line 1571
    move-object v1, p2

    .line 1572
    .local v1, result:Ljava/lang/String;
    invoke-direct {p0, p1, p3}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    .line 1574
    .local v0, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    .line 1575
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getCloudShareLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1577
    :cond_0
    return-object v1
.end method

.method getCloudStorageFileItem(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "cloudFolderPath"

    .prologue
    .line 1607
    const/4 v1, 0x0

    .line 1608
    .local v1, resultItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    .line 1610
    .local v0, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    .line 1611
    invoke-virtual {v0, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getCloudStorageFileItem(Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    move-result-object v1

    .line 1613
    :cond_0
    return-object v1
.end method

.method getCloudStorageTotalCount()I
    .locals 5

    .prologue
    .line 1130
    const/4 v3, 0x0

    .line 1131
    .local v3, total:I
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    .line 1132
    .local v0, cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getCloudStorageCount()I

    move-result v1

    .line 1133
    .local v1, count:I
    add-int/2addr v3, v1

    .line 1134
    goto :goto_0

    .line 1135
    .end local v0           #cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .end local v1           #count:I
    :cond_0
    return v3
.end method

.method public getFilePickerUtil()Lcom/htc/app/FilePickerUtil;
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method getFolderItemInfo(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FolderItemInfo;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "path"

    .prologue
    .line 1601
    invoke-direct {p0, p3}, Lcom/htc/app/FilePickerCloudHelper;->checkToRemovePrefixLocalTempFolderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1602
    .local v0, cloudPath:Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/app/FilePickerCloudHelper;->getFolderItemInfoFromCloudPath(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    return-object v1
.end method

.method getItemInfo(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/ItemInfo;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "path"

    .prologue
    .line 1596
    invoke-direct {p0, p3}, Lcom/htc/app/FilePickerCloudHelper;->checkToRemovePrefixLocalTempFolderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    .local v0, cloudPath:Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/app/FilePickerCloudHelper;->getItemInfoFromCloudPath(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/ItemInfo;

    move-result-object v1

    return-object v1
.end method

.method public getItemInfoFolderInstance(ILjava/lang/String;)Lcom/htc/app/ItemInfo;
    .locals 3
    .parameter "cloudDataSourceType"
    .parameter "path"

    .prologue
    .line 1382
    const/4 v0, 0x0

    .line 1383
    .local v0, cloudItemInfo:Lcom/htc/app/ItemInfo;
    const/4 v2, 0x0

    .line 1384
    .local v2, email:Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v1

    .line 1385
    .local v1, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v1, :cond_0

    .line 1386
    invoke-virtual {v1, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getItemInfoFolderInstance(Ljava/lang/String;)Lcom/htc/app/ItemInfo;

    move-result-object v0

    .line 1388
    :cond_0
    return-object v0
.end method

.method public getRootFolderItemInstances()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1359
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1360
    .local v5, folderItemInfoLists:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v9, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    if-eqz v9, :cond_1

    .line 1361
    iget-object v9, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    .line 1362
    .local v2, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v2, :cond_0

    .line 1363
    invoke-virtual {v2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->listCloudStorageWrapper()[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v4

    .line 1366
    .local v4, cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v4, :cond_0

    .line 1367
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v3, v0, v7

    .line 1368
    .local v3, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getStorageFolderItemInstance()Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    .line 1370
    .local v1, cloudFolderItemInfo:Lcom/htc/app/FolderItemInfo;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1367
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1378
    .end local v0           #arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v1           #cloudFolderItemInfo:Lcom/htc/app/FolderItemInfo;
    .end local v2           #cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .end local v3           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v4           #cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_1
    return-object v5
.end method

.method public getRootFolderItemInstances(ILjava/util/List;)V
    .locals 7
    .parameter "cloudDataSourceType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1335
    .local p2, folderItemInfoLists:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v2

    .line 1336
    .local v2, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v2, :cond_1

    .line 1337
    invoke-virtual {v2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->listCloudStorageWrapper()[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v4

    .line 1340
    .local v4, cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v4, :cond_1

    .line 1341
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 1342
    .local v3, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-nez v3, :cond_0

    .line 1341
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1344
    :cond_0
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getStorageFolderItemInstance()Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    .line 1346
    .local v1, cloudFolderItemInfo:Lcom/htc/app/FolderItemInfo;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1350
    .end local v0           #arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v1           #cloudFolderItemInfo:Lcom/htc/app/FolderItemInfo;
    .end local v3           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v4           #cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_1
    return-void
.end method

.method hasAnyAccountSignIn(I)Z
    .locals 2
    .parameter "cloudDataSourceType"

    .prologue
    .line 1553
    const/4 v1, 0x0

    .line 1554
    .local v1, result:Z
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1555
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1556
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->hasAnySignIn()Z

    move-result v1

    .line 1558
    :cond_0
    return v1
.end method

.method hasAnySignIn()Z
    .locals 8

    .prologue
    .line 1541
    const/4 v6, 0x0

    .line 1542
    .local v6, result:Z
    iget-object v7, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1543
    .local v2, cloudServices:[Ljava/lang/Object;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .local v5, object:Ljava/lang/Object;
    move-object v1, v5

    .line 1544
    check-cast v1, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    .line 1545
    .local v1, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->hasAnySignIn()Z

    move-result v6

    .line 1546
    if-eqz v6, :cond_1

    .line 1549
    .end local v1           #cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .end local v5           #object:Ljava/lang/Object;
    :cond_0
    return v6

    .line 1543
    .restart local v1       #cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .restart local v5       #object:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method init()V
    .locals 15

    .prologue
    .line 1243
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;

    .line 1244
    .local v4, context:Landroid/content/Context;
    if-nez v4, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1246
    :cond_1
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudHelperInitialized:Z

    .line 1247
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper;->listServices()[Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    .line 1248
    iget-object v12, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    array-length v12, v12

    if-ltz v12, :cond_0

    .line 1249
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    .local v9, serviceTypes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .local v10, serviceWrappers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;>;"
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v8, v0, v5

    .line 1252
    .local v8, serviceName:Ljava/lang/String;
    invoke-static {v4, v8}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 1254
    .local v6, isServiceEnabled:Z
    if-eqz v6, :cond_2

    .line 1255
    invoke-static {v4, v8}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getServiceInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudService;

    move-result-object v2

    .line 1258
    .local v2, cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    if-nez v2, :cond_3

    .line 1259
    const-string v12, "FilePickerCloudHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not found the cloud service of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    .end local v2           #cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1263
    .restart local v2       #cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    :cond_3
    invoke-static {v8}, Lcom/htc/app/FilePickerCloudHelper;->getServiceTypeFromString(Ljava/lang/String;)I

    move-result v1

    .line 1264
    .local v1, cloudDataSourceType:I
    new-instance v3, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    invoke-direct {v3, p0, v1, v8, v2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;-><init>(Lcom/htc/app/FilePickerCloudHelper;ILjava/lang/String;Lcom/htc/sdk/service/cloudstorage/HtcCloudService;)V

    .line 1267
    .local v3, cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudService;->isSupportedMultipleAccount()Z

    move-result v11

    .line 1268
    .local v11, supported:Z
    invoke-virtual {v3, v11}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->setMultiAccountSupported(Z)V

    .line 1269
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1273
    .end local v1           #cloudDataSourceType:I
    .end local v2           #cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    .end local v3           #cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .end local v6           #isServiceEnabled:Z
    .end local v8           #serviceName:Ljava/lang/String;
    .end local v11           #supported:Z
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1274
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/htc/app/FilePickerCloudHelper;->setCloudHelperEnabled(Z)V

    .line 1276
    :cond_5
    iget-object v13, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceListUpdateToken:Ljava/lang/Object;

    monitor-enter v13

    .line 1277
    :try_start_0
    iput-object v10, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    .line 1278
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12
.end method

.method public isCloudHelperEnabled()Z
    .locals 1

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mIsCloudHelperEnabled:Z

    return v0
.end method

.method isCloudHelperInitialized()Z
    .locals 1

    .prologue
    .line 1239
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudHelperInitialized:Z

    return v0
.end method

.method isCloudPath(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "path"

    .prologue
    .line 1139
    const/4 v1, 0x0

    .line 1140
    .local v1, isCloudPath:Z
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    .line 1142
    .local v0, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    .line 1143
    invoke-virtual {v0, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isCloudPath(Ljava/lang/String;)Z

    move-result v1

    .line 1145
    :cond_0
    return v1
.end method

.method public isCloudServiceEnabled(I)Z
    .locals 2
    .parameter "cloudDataSourceType"

    .prologue
    .line 1161
    const/4 v1, 0x0

    .line 1162
    .local v1, result:Z
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1163
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1164
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->isEnabled()Z

    move-result v1

    .line 1166
    :cond_0
    return v1
.end method

.method isRefresh(ILjava/lang/String;)Z
    .locals 3
    .parameter "cloudDataSourceType"
    .parameter "accountId"

    .prologue
    .line 1053
    const/4 v2, 0x1

    .line 1054
    .local v2, result:Z
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1055
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getCloudStorageWrapper(Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v1

    .line 1057
    .local v1, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v1, :cond_0

    .line 1058
    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isRefresh()Z

    move-result v2

    .line 1060
    :cond_0
    return v2
.end method

.method isSignIn(ILjava/lang/String;)Z
    .locals 3
    .parameter "cloudDataSourceType"
    .parameter "accountId"

    .prologue
    .line 1510
    const/4 v2, 0x0

    .line 1511
    .local v2, result:Z
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1513
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1514
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getCloudStorageWrapper(Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v1

    .line 1516
    .local v1, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v1, :cond_0

    .line 1517
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->isSignIn(Ljava/lang/String;)Z

    move-result v2

    .line 1520
    .end local v1           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_0
    return v2
.end method

.method isSupportMultiAccouont(I)Z
    .locals 1
    .parameter "cloudDataSourceType"

    .prologue
    .line 1170
    const/4 v0, 0x0

    .line 1177
    .local v0, result:Z
    return v0
.end method

.method public listFolderItemInfoLists(ILjava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 9
    .parameter "cloudDataSourceType"
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
    .line 1403
    .local p4, folderItemInfoLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1405
    .local v1, cloudStorageFileItemLists:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;>;"
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1406
    .local v6, isRoot:Z
    invoke-virtual {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->isSignIn(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1407
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v2

    .line 1409
    .local v2, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->checkToRemovePrefixFolderString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1410
    if-eqz v2, :cond_0

    .line 1411
    if-eqz v6, :cond_3

    .line 1412
    iget-object v8, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->listFiles(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v8}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1700(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1419
    .end local v2           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 1420
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 1421
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    .line 1426
    .local v0, cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 1427
    .local v3, filename:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->isDir()Z

    move-result v5

    .line 1428
    .local v5, isFolder:Z
    if-nez v5, :cond_2

    iget-object v8, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v8, v3}, Lcom/htc/app/FilePickerUtil;->containExtension(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1429
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerCloudHelper;->changeToFolderItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/FolderItemInfo;

    move-result-object v7

    .line 1431
    .local v7, item:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {p4, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1414
    .end local v0           #cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    .end local v3           #filename:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #isFolder:Z
    .end local v7           #item:Lcom/htc/app/FolderItemInfo;
    .restart local v2       #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->checkToRemovePrefixFolderString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1415
    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->listFiles(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1700(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 1436
    .end local v2           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_4
    return-void
.end method

.method listItemInfoLists(ILjava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 11
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1440
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 1441
    .local v9, itemInfoLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1442
    .local v1, cloudStorageFileItemLists:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;>;"
    const/4 v3, 0x0

    .line 1443
    .local v3, email:Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v2

    .line 1444
    .local v2, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v2, :cond_0

    .line 1445
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->checkToRemovePrefixFolderString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1446
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1447
    .local v7, isRoot:Z
    if-eqz v7, :cond_3

    .line 1448
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->listFiles(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v10}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1700(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1454
    .end local v7           #isRoot:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 1455
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 1456
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    .line 1461
    .local v0, cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 1462
    .local v4, filename:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->isDir()Z

    move-result v6

    .line 1463
    .local v6, isFolder:Z
    if-nez v6, :cond_2

    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v10, v4}, Lcom/htc/app/FilePickerUtil;->containExtension(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1464
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerCloudHelper;->changeToItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;

    move-result-object v8

    .line 1465
    .local v8, item:Lcom/htc/app/ItemInfo;
    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1450
    .end local v0           #cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #isFolder:Z
    .end local v8           #item:Lcom/htc/app/ItemInfo;
    .restart local v7       #isRoot:Z
    :cond_3
    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->listFiles(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1700(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 1470
    .end local v7           #isRoot:Z
    :cond_4
    return-object v9
.end method

.method listServices()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1190
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    .line 1194
    :goto_0
    return-object v0

    .line 1192
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 1193
    .local v0, result:[Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->listServices(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 1194
    goto :goto_0
.end method

.method public requestDownloadFile(ILjava/lang/String;JLjava/lang/String;J)V
    .locals 7
    .parameter "dataSourceType"
    .parameter "accountId"
    .parameter "cloudId"
    .parameter "cloudPath"
    .parameter "fileSize"

    .prologue
    .line 1687
    invoke-virtual {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->isSignIn(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1688
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    .line 1690
    .local v0, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    move-wide v5, p6

    .line 1691
    invoke-virtual/range {v0 .. v6}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->requestDownloadFile(IJLjava/lang/String;J)V

    .line 1695
    .end local v0           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_0
    return-void
.end method

.method public setCloudHelperEnabled(Z)V
    .locals 0
    .parameter "isCloudHelperEnabled"

    .prologue
    .line 1124
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCloudHelper;->mIsCloudHelperEnabled:Z

    .line 1125
    return-void
.end method

.method setServiceRefresh(IZ)V
    .locals 6
    .parameter "cloudDataSourceType"
    .parameter "refresh"

    .prologue
    .line 1073
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v1

    .line 1074
    .local v1, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v1, :cond_1

    .line 1075
    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->listCloudStorageWrapper()[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v3

    .line 1077
    .local v3, cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v3, :cond_1

    .line 1078
    move-object v0, v3

    .local v0, arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 1079
    .local v2, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-nez v2, :cond_0

    .line 1078
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1081
    :cond_0
    invoke-virtual {v2, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->setRefresh(Z)V

    goto :goto_1

    .line 1086
    .end local v0           #arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v2           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v3           #cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-void
.end method

.method setStorageRefresh(ILjava/lang/String;Z)V
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "refresh"

    .prologue
    .line 1064
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1065
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getCloudStorageWrapper(Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v1

    .line 1067
    .local v1, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v1, :cond_0

    .line 1068
    invoke-virtual {v1, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->setRefresh(Z)V

    .line 1070
    :cond_0
    return-void
.end method

.method signIn(I)V
    .locals 3
    .parameter "cloudDataSourceType"

    .prologue
    .line 1530
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1531
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_1

    .line 1532
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->hasAnyAccountSignIn(I)Z

    move-result v1

    .line 1533
    .local v1, hasAnyAccountSignIn:Z
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->isSupportMultiAccount()Z

    move-result v2

    .line 1534
    .local v2, isSupportMultiAccount:Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    .line 1535
    :cond_0
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->sign()V

    .line 1538
    .end local v1           #hasAnyAccountSignIn:Z
    .end local v2           #isSupportMultiAccount:Z
    :cond_1
    return-void
.end method
