.class Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
.super Ljava/lang/Object;
.source "FilePickerCloudHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCloudHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudServiceWrapper"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAccountIds:[Ljava/lang/String;

.field private mAccounts:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

.field private mCloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;

.field private mCloudServiceFunctionEnabled:Z

.field private mCloudStorageList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudStorageListUpdateToken:Ljava/lang/Object;

.field private mIsSupportMultiAccount:Z

.field private mServiceDataSourceType:I

.field private mServiceName:Ljava/lang/String;

.field private mServiceTextName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/app/FilePickerCloudHelper;


# direct methods
.method public constructor <init>(Lcom/htc/app/FilePickerCloudHelper;ILjava/lang/String;Lcom/htc/sdk/service/cloudstorage/HtcCloudService;)V
    .locals 2
    .parameter
    .parameter "cloudDataSourceType"
    .parameter "serviceName"
    .parameter "cloudService"

    .prologue
    const/4 v1, 0x0

    .line 209
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudServiceFunctionEnabled:Z

    .line 60
    iput-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccounts:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    .line 61
    iput-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccountIds:[Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mIsSupportMultiAccount:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageListUpdateToken:Ljava/lang/Object;

    .line 210
    iput-object p4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;

    .line 211
    iput p2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mServiceDataSourceType:I

    .line 212
    iput-object p3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mServiceName:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 214
    invoke-direct {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->refreshAccountInfo()[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccounts:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    .line 215
    return-void
.end method

.method static synthetic access$500(Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;)Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private refreshAccountInfo()[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .locals 14

    .prologue
    .line 228
    const/4 v4, 0x0

    .line 230
    .local v4, accounts:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    :try_start_0
    iget-object v6, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;

    .line 231
    .local v6, cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    if-eqz v6, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 233
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/htc/sdk/service/cloudstorage/HtcCloudService;->accountInfo(Z)[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    :try_end_0
    .catch Lcom/htc/sdk/service/cloudstorage/HtcCloudException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 245
    .end local v6           #cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    :cond_0
    :goto_0
    if-eqz v4, :cond_5

    .line 246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v3, accountIdList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v5, v4

    .local v5, arr$:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    array-length v10, v5

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_2

    aget-object v0, v5, v9

    .line 248
    .local v0, account:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, accountId:Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 236
    .end local v0           #account:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .end local v2           #accountId:Ljava/lang/String;
    .end local v3           #accountIdList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v5           #arr$:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .restart local v6       #cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->TAG:Ljava/lang/String;

    const-string v12, "refreshAccountInfo: mCloudService is null."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/htc/sdk/service/cloudstorage/HtcCloudException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 238
    .end local v6           #cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    :catch_0
    move-exception v8

    .line 239
    .local v8, e:Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
    iget-object v11, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    const/4 v12, 0x1

    #calls: Lcom/htc/app/FilePickerCloudHelper;->errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    invoke-static {v11, v8, v12}, Lcom/htc/app/FilePickerCloudHelper;->access$100(Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V

    .line 240
    iget-object v11, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cloudService.accountInfo()->serviceName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mServiceName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v11, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "e.getErrorCode():"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v11, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "e.getMessage():"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    .end local v8           #e:Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
    .restart local v3       #accountIdList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v5       #arr$:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    :cond_2
    array-length v11, v4

    if-lez v11, :cond_3

    .line 253
    move-object v5, v4

    array-length v10, v5

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_4

    aget-object v0, v5, v9

    .line 254
    .restart local v0       #account:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    const/4 v1, 0x0

    .line 255
    .local v1, accountFolderName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 256
    .restart local v2       #accountId:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    iget v12, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mServiceDataSourceType:I

    #calls: Lcom/htc/app/FilePickerCloudHelper;->newCloudStorageWrapperInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-static {v11, v12, v2, v1}, Lcom/htc/app/FilePickerCloudHelper;->access$200(Lcom/htc/app/FilePickerCloudHelper;ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v7

    .line 258
    .local v7, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-virtual {p0, v7}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->addCloudStorageWrapper(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Z

    .line 253
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 261
    .end local v0           #account:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .end local v1           #accountFolderName:Ljava/lang/String;
    .end local v2           #accountId:Ljava/lang/String;
    .end local v7           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_3
    const/4 v2, 0x0

    .line 262
    .restart local v2       #accountId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 263
    .restart local v1       #accountFolderName:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    iget v12, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mServiceDataSourceType:I

    #calls: Lcom/htc/app/FilePickerCloudHelper;->newCloudStorageWrapperInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-static {v11, v12, v2, v1}, Lcom/htc/app/FilePickerCloudHelper;->access$200(Lcom/htc/app/FilePickerCloudHelper;ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v7

    .line 265
    .restart local v7       #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-virtual {p0, v7}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->addCloudStorageWrapper(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Z

    .line 268
    .end local v1           #accountFolderName:Ljava/lang/String;
    .end local v2           #accountId:Ljava/lang/String;
    .end local v7           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_4
    invoke-direct {p0, v3}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->toStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccountIds:[Ljava/lang/String;

    .line 270
    .end local v3           #accountIdList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v5           #arr$:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :cond_5
    return-object v4
.end method

.method private toStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, arraylist:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 275
    .local v0, result:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 276
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 277
    .local v1, size:I
    if-lez v1, :cond_0

    .line 278
    new-array v0, v1, [Ljava/lang/String;

    .line 279
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 282
    .end local v1           #size:I
    :cond_0
    return-object v0
.end method


# virtual methods
.method addCloudStorageWrapper(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Z
    .locals 3
    .parameter "cloudStorageWrapper"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->existsCloudStorageWrapper(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Z

    move-result v0

    .line 171
    .local v0, isAdd:Z
    if-nez v0, :cond_0

    .line 172
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageListUpdateToken:Ljava/lang/Object;

    monitor-enter v2

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    monitor-exit v2

    .line 176
    :cond_0
    return v0

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method existsCloudStorageWrapper(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Z
    .locals 9
    .parameter "keyCloudStorageWrapper"

    .prologue
    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, found:Z
    iget-object v8, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    invoke-virtual {p0, v8}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->toCloudStorageWrapperVector(Ljava/util/Collection;)[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v2

    .line 182
    .local v2, cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v2, :cond_0

    .line 183
    move-object v0, v2

    .local v0, arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v1, v0, v4

    .line 184
    .local v1, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getDataSourceType()I

    move-result v6

    .line 186
    .local v6, keyServiceType:I
    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getDataSourceType()I

    move-result v8

    if-ne v6, v8, :cond_1

    .line 187
    invoke-virtual {p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getAccountId()Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, keyAccountId:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getAccountId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 193
    const/4 v3, 0x1

    .line 200
    .end local v0           #arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v1           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v4           #i$:I
    .end local v5           #keyAccountId:Ljava/lang/String;
    .end local v6           #keyServiceType:I
    .end local v7           #len$:I
    :cond_0
    return v3

    .line 183
    .restart local v0       #arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .restart local v1       #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method getAccountFolderItemInstances()Ljava/util/List;
    .locals 9
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
    .line 302
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 303
    .local v5, folderItemInfoLists:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v8, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    invoke-virtual {p0, v8}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->toCloudStorageWrapperVector(Ljava/util/Collection;)[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v4

    .line 304
    .local v4, cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    move-object v1, v4

    .local v1, arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v1, v6

    .line 305
    .local v3, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v3, :cond_0

    .line 306
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getAccountId()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, accountId:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->isSignIn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 308
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getStorageFolderItemInstance()Lcom/htc/app/FolderItemInfo;

    move-result-object v2

    .line 310
    .local v2, cloudFolderItemInfo:Lcom/htc/app/FolderItemInfo;
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v0           #accountId:Ljava/lang/String;
    .end local v2           #cloudFolderItemInfo:Lcom/htc/app/FolderItemInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 314
    .end local v3           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_1
    return-object v5
.end method

.method public getAccountIds()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, result:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->refreshAccountInfo()[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccounts:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    .line 111
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->isSupportMultiAccount()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccountIds:[Ljava/lang/String;

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccountIds:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccountIds:[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method getAccounts()[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccounts:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    return-object v0
.end method

.method getCloudService()Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;

    return-object v0
.end method

.method public getCloudServiceRootFolderItemTextPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, rootItemTextPath:Ljava/lang/String;
    return-object v0
.end method

.method getCloudStorageCount()I
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, result:I
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 88
    :cond_0
    return v0
.end method

.method getCloudStorageWrapper(Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .locals 4
    .parameter "accountId"

    .prologue
    .line 144
    const/4 v2, 0x0

    .line 145
    .local v2, result:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    .line 147
    .local v0, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz p1, :cond_0

    .line 148
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    move-object v2, v0

    .line 157
    .end local v0           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceTextName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mServiceTextName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mServiceDataSourceType:I

    invoke-static {v1}, Lcom/htc/app/FilePickerUtil;->getDataSourceTypeText(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mServiceTextName:Ljava/lang/String;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mServiceTextName:Ljava/lang/String;

    return-object v0
.end method

.method getServiceType()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mServiceDataSourceType:I

    return v0
.end method

.method hasAnySignIn()Z
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, result:Z
    invoke-direct {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->refreshAccountInfo()[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccounts:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    .line 336
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccounts:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccounts:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 338
    const/4 v0, 0x1

    .line 341
    :cond_0
    return v0
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudServiceFunctionEnabled:Z

    return v0
.end method

.method isSignIn(Ljava/lang/String;)Z
    .locals 7
    .parameter "accountId"

    .prologue
    .line 318
    const/4 v5, 0x0

    .line 319
    .local v5, result:Z
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 320
    invoke-direct {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->refreshAccountInfo()[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccounts:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    .line 321
    iget-object v6, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccounts:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    if-eqz v6, :cond_1

    .line 322
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccounts:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    .local v1, arr$:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 323
    .local v0, account:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 325
    const/4 v5, 0x1

    .line 322
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 330
    .end local v0           #account:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .end local v1           #arr$:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .end local v2           #email:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return v5
.end method

.method public isSupportMultiAccount()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mIsSupportMultiAccount:Z

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method listCloudStorageWrapper()[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->toCloudStorageWrapperVector(Ljava/util/Collection;)[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    .line 125
    .local v0, result:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    return-object v0
.end method

.method release()V
    .locals 7

    .prologue
    .line 345
    iget-object v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    if-eqz v5, :cond_2

    .line 346
    iget-object v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    invoke-virtual {p0, v5}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->toCloudStorageWrapperVector(Ljava/util/Collection;)[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v2

    .line 347
    .local v2, cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v2, :cond_1

    .line 348
    move-object v0, v2

    .local v0, arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 349
    .local v1, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->release()V

    .line 348
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    .end local v0           #arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v1           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    iget-object v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceListUpdateToken:Ljava/lang/Object;
    invoke-static {v5}, Lcom/htc/app/FilePickerCloudHelper;->access$300(Lcom/htc/app/FilePickerCloudHelper;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 355
    :try_start_0
    iget-object v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/app/FilePickerCloudHelper;->access$400(Lcom/htc/app/FilePickerCloudHelper;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 356
    monitor-exit v6

    .line 358
    .end local v2           #cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_2
    return-void

    .line 356
    .restart local v2       #cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method removeCloudStorageWrapper(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)V
    .locals 2
    .parameter "cloudStorageWrapper"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageListUpdateToken:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudStorageList:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 165
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getCloudStorage()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->release()V

    .line 167
    return-void

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMultiAccountSupported(Z)V
    .locals 0
    .parameter "supported"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mIsSupportMultiAccount:Z

    .line 80
    return-void
.end method

.method sign()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 361
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    iget v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mServiceDataSourceType:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/app/FilePickerCloudHelper;->setServiceRefresh(IZ)V

    .line 363
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper$1;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper$1;-><init>(Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 375
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 376
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 378
    invoke-direct {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->refreshAccountInfo()[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mAccounts:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    .line 379
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v0

    .line 380
    .local v0, filePickerUtil:Lcom/htc/app/FilePickerUtil;
    if-eqz v0, :cond_0

    .line 381
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    .line 384
    .end local v0           #filePickerUtil:Lcom/htc/app/FilePickerUtil;
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method toCloudStorageWrapperVector(Ljava/util/Collection;)[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;",
            ">;)[",
            "Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, arraylist:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;>;"
    const/4 v0, 0x0

    .line 133
    .local v0, result:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz p1, :cond_0

    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 135
    .local v1, size:I
    if-lez v1, :cond_0

    .line 136
    new-array v0, v1, [Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    .line 137
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 140
    .end local v1           #size:I
    :cond_0
    return-object v0
.end method
