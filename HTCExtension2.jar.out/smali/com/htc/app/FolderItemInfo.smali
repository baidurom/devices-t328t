.class Lcom/htc/app/FolderItemInfo;
.super Ljava/lang/Object;
.source "FolderItemInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isFolder:Z

.field private isRecentFile:Z

.field private mAccountId:Ljava/lang/String;

.field private mCheckBox:Lcom/htc/widget/HtcCheckBox;

.field private mChecked:Z

.field private mCloudId:J

.field private mCloudPath:Ljava/lang/String;

.field private mCloudShareLink:Ljava/lang/String;

.field private mCouldLastModified:J

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mIsCloudItem:Z

.field private mIsNothing:Z

.field private mItemDataSourceType:I

.field private mLocalLastModified:J

.field private mLocalPath:Ljava/lang/String;

.field private mProgress:I

.field private mRadioButton:Lcom/htc/widget/HtcRadioButton;

.field private mServiceName:Ljava/lang/String;

.field private mSyncState:Z


# direct methods
.method public constructor <init>(ZJLjava/lang/String;Ljava/lang/String;JIZZ)V
    .locals 3
    .parameter "isCloudItem"
    .parameter "cloudId"
    .parameter "fileName"
    .parameter "path"
    .parameter "lastModified"
    .parameter "itemType"
    .parameter "isDirectory"
    .parameter "isNothing"

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FolderItemInfo;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, -0x3

    iput v0, p0, Lcom/htc/app/FolderItemInfo;->mItemDataSourceType:I

    .line 21
    iput-boolean v2, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    .line 23
    iput-boolean v2, p0, Lcom/htc/app/FolderItemInfo;->isRecentFile:Z

    .line 24
    iput-boolean v2, p0, Lcom/htc/app/FolderItemInfo;->mIsCloudItem:Z

    .line 30
    iput v2, p0, Lcom/htc/app/FolderItemInfo;->mProgress:I

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mFileSize:J

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FolderItemInfo;->mServiceName:Ljava/lang/String;

    .line 506
    iput-boolean v2, p0, Lcom/htc/app/FolderItemInfo;->mSyncState:Z

    .line 282
    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->mIsCloudItem:Z

    .line 283
    iput-wide p2, p0, Lcom/htc/app/FolderItemInfo;->mCloudId:J

    .line 284
    iput-object p4, p0, Lcom/htc/app/FolderItemInfo;->mFileName:Ljava/lang/String;

    .line 285
    iput-boolean p9, p0, Lcom/htc/app/FolderItemInfo;->isFolder:Z

    .line 286
    invoke-virtual {p0, p5}, Lcom/htc/app/FolderItemInfo;->setAbsolutePath(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, p6, p7}, Lcom/htc/app/FolderItemInfo;->setLastModified(J)V

    .line 288
    iput p8, p0, Lcom/htc/app/FolderItemInfo;->mItemDataSourceType:I

    .line 289
    iput-boolean p10, p0, Lcom/htc/app/FolderItemInfo;->mIsNothing:Z

    .line 290
    return-void
.end method

.method public static getCloudInstance(JLjava/lang/String;Ljava/lang/String;JIZ)Lcom/htc/app/FolderItemInfo;
    .locals 11
    .parameter "cloudId"
    .parameter "fileName"
    .parameter "path"
    .parameter "lastModified"
    .parameter "itemType"
    .parameter "isDirectory"

    .prologue
    .line 299
    const/4 v1, 0x1

    .line 300
    .local v1, isCloudItem:Z
    const/4 v10, 0x0

    .line 301
    .local v10, isNothing:Z
    new-instance v0, Lcom/htc/app/FolderItemInfo;

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/htc/app/FolderItemInfo;-><init>(ZJLjava/lang/String;Ljava/lang/String;JIZZ)V

    .line 303
    .local v0, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    return-object v0
.end method

.method public static getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/FolderItemInfo;
    .locals 11
    .parameter "file"

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, isCloudItem:Z
    const-wide/16 v2, -0x1

    .line 314
    .local v2, cloudId:J
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, fileName:Ljava/lang/String;
    const/4 v8, -0x3

    .line 316
    .local v8, itemType:I
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 318
    .local v6, lastModified:J
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    .line 319
    .local v9, isDirectory:Z
    const/4 v10, 0x0

    .line 320
    .local v10, isNothing:Z
    new-instance v0, Lcom/htc/app/FolderItemInfo;

    invoke-direct/range {v0 .. v10}, Lcom/htc/app/FolderItemInfo;-><init>(ZJLjava/lang/String;Ljava/lang/String;JIZZ)V

    .line 322
    .local v0, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    return-object v0
.end method

.method public static getLocalFileInstance(Ljava/lang/String;)Lcom/htc/app/FolderItemInfo;
    .locals 2
    .parameter "path"

    .prologue
    .line 350
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/htc/app/FolderItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getLocalInstance(Ljava/lang/String;Ljava/io/File;)Lcom/htc/app/FolderItemInfo;
    .locals 11
    .parameter "itemName"
    .parameter "file"

    .prologue
    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, isCloudItem:Z
    const/4 v10, 0x0

    .line 334
    .local v10, isNothing:Z
    const-wide/16 v2, -0x1

    .line 335
    .local v2, cloudId:J
    const/4 v8, -0x3

    .line 336
    .local v8, itemType:I
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 338
    .local v6, lastModified:J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    .line 339
    .local v9, isDirectory:Z
    new-instance v0, Lcom/htc/app/FolderItemInfo;

    move-object v4, p0

    invoke-direct/range {v0 .. v10}, Lcom/htc/app/FolderItemInfo;-><init>(ZJLjava/lang/String;Ljava/lang/String;JIZZ)V

    .line 341
    .local v0, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    return-object v0
.end method

.method public static getNothingInstance(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/htc/app/FolderItemInfo;
    .locals 11
    .parameter "itemName"
    .parameter "itemPath"
    .parameter "itemType"
    .parameter "isCloudItem"

    .prologue
    .line 361
    const-wide/16 v2, -0x1

    .line 362
    .local v2, cloudId:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, absolutePath:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 364
    .local v6, lastModified:J
    const/4 v10, 0x1

    .line 365
    .local v10, isNothing:Z
    const/4 v9, 0x0

    .line 366
    .local v9, isDirectory:Z
    new-instance v0, Lcom/htc/app/FolderItemInfo;

    move v1, p3

    move-object v4, p0

    move v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/htc/app/FolderItemInfo;-><init>(ZJLjava/lang/String;Ljava/lang/String;JIZZ)V

    .line 369
    .local v0, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "that"

    .prologue
    .line 459
    instance-of v3, p1, Lcom/htc/app/FolderItemInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 460
    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 461
    .local v0, p:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, thisPath:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, thatPath:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 465
    .end local v0           #p:Lcom/htc/app/FolderItemInfo;
    .end local v1           #thatPath:Ljava/lang/String;
    .end local v2           #thisPath:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 430
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getCloudPath()Ljava/lang/String;

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method getCheckBox()Lcom/htc/widget/HtcCheckBox;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method public getCloudId()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mCloudId:J

    return-wide v0
.end method

.method public getCloudPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mCloudPath:Ljava/lang/String;

    return-object v0
.end method

.method getCloudShareLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mCloudShareLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCouldLastModified()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mCouldLastModified:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mFileSize:J

    return-wide v0
.end method

.method public getItemDataSourceType()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/htc/app/FolderItemInfo;->mItemDataSourceType:I

    return v0
.end method

.method public getItemTextPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, textPath:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/htc/app/FolderItemInfo;->mItemDataSourceType:I

    invoke-static {v3}, Lcom/htc/app/FilePickerUtil;->getDataSourceTypeText(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    return-object v0
.end method

.method public getLocalLastModified()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mLocalLastModified:J

    return-wide v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/app/FolderItemInfo;->mProgress:I

    return v0
.end method

.method getRadioButton()Lcom/htc/widget/HtcRadioButton;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncState()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mSyncState:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->lastModified()J

    move-result-wide v1

    long-to-int v0, v1

    .line 476
    .local v0, i:I
    add-int/lit8 v1, v0, 0x29

    mul-int/lit8 v1, v1, 0x29

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    return v0
.end method

.method public isCloudItem()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mIsCloudItem:Z

    return v0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->isFolder:Z

    return v0
.end method

.method public isNothing()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mIsNothing:Z

    return v0
.end method

.method public isRecentFile()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->isRecentFile:Z

    return v0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mCouldLastModified:J

    .line 242
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mLocalLastModified:J

    goto :goto_0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mCloudPath:Ljava/lang/String;

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mLocalPath:Ljava/lang/String;

    goto :goto_0
.end method

.method setAccountId(Ljava/lang/String;)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mAccountId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method setCheckBox(Lcom/htc/widget/HtcCheckBox;)V
    .locals 0
    .parameter "checkBox"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 63
    return-void
.end method

.method setCheckBoxChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    .line 409
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 412
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    .line 397
    return-void
.end method

.method public setCloudPath(Ljava/lang/String;)V
    .locals 0
    .parameter "cloudPath"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mCloudPath:Ljava/lang/String;

    .line 231
    return-void
.end method

.method setCloudShareLink(Ljava/lang/String;)V
    .locals 0
    .parameter "cloudShareLink"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mCloudShareLink:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCouldLastModified(J)V
    .locals 0
    .parameter "couldLastModified"

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/htc/app/FolderItemInfo;->mCouldLastModified:J

    .line 155
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mFileName:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/htc/app/FolderItemInfo;->mFileSize:J

    .line 101
    return-void
.end method

.method public setItemDataSourceType(I)V
    .locals 0
    .parameter "itemType"

    .prologue
    .line 127
    iput p1, p0, Lcom/htc/app/FolderItemInfo;->mItemDataSourceType:I

    .line 128
    return-void
.end method

.method public setLastModified(J)V
    .locals 1
    .parameter "lastModified"

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iput-wide p1, p0, Lcom/htc/app/FolderItemInfo;->mCouldLastModified:J

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    iput-wide p1, p0, Lcom/htc/app/FolderItemInfo;->mLocalLastModified:J

    goto :goto_0
.end method

.method public setLocalLastModified(J)V
    .locals 0
    .parameter "localLastModified"

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/htc/app/FolderItemInfo;->mLocalLastModified:J

    .line 173
    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0
    .parameter "localPath"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mLocalPath:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "mProgress"

    .prologue
    .line 136
    iput p1, p0, Lcom/htc/app/FolderItemInfo;->mProgress:I

    .line 137
    return-void
.end method

.method setRadioButton(Lcom/htc/widget/HtcRadioButton;)V
    .locals 0
    .parameter "radioButton"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    .line 73
    return-void
.end method

.method setRadioButtonChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    .line 401
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 405
    :cond_0
    return-void
.end method

.method public setRecentFile(Z)V
    .locals 0
    .parameter "isRecentFile"

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->isRecentFile:Z

    .line 504
    return-void
.end method

.method setServiceName(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mServiceName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setSyncState(Z)V
    .locals 0
    .parameter "syncState"

    .prologue
    .line 523
    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->mSyncState:Z

    .line 524
    return-void
.end method
