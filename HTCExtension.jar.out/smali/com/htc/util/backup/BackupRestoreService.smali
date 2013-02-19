.class public Lcom/htc/util/backup/BackupRestoreService;
.super Landroid/app/Service;
.source "BackupRestoreService.java"

# interfaces
.implements Lcom/htc/util/backup/BackupRestoreInerface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/backup/BackupRestoreService$RestoreThread;,
        Lcom/htc/util/backup/BackupRestoreService$BackupThread;,
        Lcom/htc/util/backup/BackupRestoreService$ActionType;
    }
.end annotation


# static fields
.field public static final COMMAND_BACKUP:Ljava/lang/String; = "START_BACKUP"

.field public static COMMAND_RESTORE:Ljava/lang/String; = null

.field public static final KEY_ACTION:Ljava/lang/String; = "ACTION"

.field public static final KEY_WORKING_FOLDER:Ljava/lang/String; = "WORKING_FOLDER"


# instance fields
.field private ACT_TYPE_BACKUP:I

.field private ACT_TYPE_RESTORE:I

.field private final EVENT_BACKUP_NG:I

.field private final EVENT_BACKUP_OK:I

.field private final EVENT_RESTORE_NG:I

.field private final EVENT_RESTORE_OK:I

.field protected TAG:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private level:I

.field protected mBackupWholeDataPartition:Z

.field private mExtraFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputAction:I

.field protected mModel:Ljava/lang/String;

.field protected mMyPkgName:Ljava/lang/String;

.field protected mVersion:Ljava/lang/String;

.field private mWorkingFolder:Ljava/lang/String;

.field private pkgFolder:Ljava/lang/String;

.field private restoreModel:Ljava/lang/String;

.field private restoreVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "START_RESTORE"

    sput-object v0, Lcom/htc/util/backup/BackupRestoreService;->COMMAND_RESTORE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    const-string v0, "BR_"

    iput-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    .line 52
    iput v2, p0, Lcom/htc/util/backup/BackupRestoreService;->EVENT_BACKUP_OK:I

    .line 53
    iput v1, p0, Lcom/htc/util/backup/BackupRestoreService;->EVENT_BACKUP_NG:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/util/backup/BackupRestoreService;->EVENT_RESTORE_OK:I

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/util/backup/BackupRestoreService;->EVENT_RESTORE_NG:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->mMyPkgName:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/htc/util/backup/BackupRestoreService;->mBackupWholeDataPartition:Z

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->mWorkingFolder:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFolderList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFileList:Ljava/util/ArrayList;

    .line 67
    iput v2, p0, Lcom/htc/util/backup/BackupRestoreService;->ACT_TYPE_BACKUP:I

    .line 68
    iput v1, p0, Lcom/htc/util/backup/BackupRestoreService;->ACT_TYPE_RESTORE:I

    .line 69
    iput v2, p0, Lcom/htc/util/backup/BackupRestoreService;->mInputAction:I

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->mModel:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->mVersion:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreModel:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreVersion:Ljava/lang/String;

    .line 198
    new-instance v0, Lcom/htc/util/backup/BackupRestoreService$1;

    invoke-direct {v0, p0}, Lcom/htc/util/backup/BackupRestoreService$1;-><init>(Lcom/htc/util/backup/BackupRestoreService;)V

    iput-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->handler:Landroid/os/Handler;

    .line 504
    iput v1, p0, Lcom/htc/util/backup/BackupRestoreService;->level:I

    .line 505
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->pkgFolder:Ljava/lang/String;

    .line 584
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/util/backup/BackupRestoreService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/util/backup/BackupRestoreService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreModel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreModel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/util/backup/BackupRestoreService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/backup/BackupRestoreException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/util/backup/BackupRestoreService;->restoreFromSdcard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/util/backup/BackupRestoreService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/util/backup/BackupRestoreService;->reportStatus(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/util/backup/BackupRestoreService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/util/backup/BackupRestoreService;->stopMyself()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/util/backup/BackupRestoreService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->mWorkingFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/util/backup/BackupRestoreService;->deleteFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/backup/BackupRestoreException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/util/backup/BackupRestoreService;->backupToSdcard(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/util/backup/BackupRestoreService;->copyExtraFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/util/backup/BackupRestoreService;->copyExtraFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/util/backup/BackupRestoreService;->getExceptionStack(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private backupExtraFileToSdcard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "destFile"
    .parameter "srcFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/backup/BackupRestoreException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v8, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Backup Extra File, src path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v7, f:Ljava/io/File;
    const/4 v2, 0x0

    .line 380
    .local v2, bos:Ljava/io/BufferedOutputStream;
    const/4 v0, 0x0

    .line 382
    .local v0, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 383
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 384
    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .local v3, bos:Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 385
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 386
    .local v5, cnt:I
    const/16 v8, 0x1000

    :try_start_2
    new-array v4, v8, [B

    .line 387
    .local v4, buf:[B
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2

    .line 388
    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 390
    .end local v4           #buf:[B
    :catch_0
    move-exception v6

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v2, v3

    .line 391
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #cnt:I
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .local v6, ex:Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v8, Lcom/htc/util/backup/BackupRestoreException;

    const/16 v9, -0x7f8

    invoke-direct {v8, v6, v9}, Lcom/htc/util/backup/BackupRestoreException;-><init>(Ljava/lang/Exception;I)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 393
    .end local v6           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 394
    :goto_2
    if-eqz v0, :cond_0

    .line 395
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 399
    :cond_0
    :goto_3
    if-eqz v2, :cond_1

    .line 400
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 402
    :cond_1
    :goto_4
    throw v8

    .line 394
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #buf:[B
    .restart local v5       #cnt:I
    :cond_2
    if-eqz v1, :cond_3

    .line 395
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 399
    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 400
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 404
    :cond_4
    :goto_6
    return-void

    .line 397
    :catch_1
    move-exception v8

    goto :goto_5

    .line 402
    :catch_2
    move-exception v8

    goto :goto_6

    .line 397
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #buf:[B
    .end local v5           #cnt:I
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v9

    goto :goto_3

    .line 402
    :catch_4
    move-exception v9

    goto :goto_4

    .line 393
    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_2

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #cnt:I
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v2, v3

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 390
    .end local v5           #cnt:I
    :catch_5
    move-exception v6

    goto :goto_1

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    :catch_6
    move-exception v6

    move-object v2, v3

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method private backupExtraToSdcard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 29
    .parameter "rootFolder"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/backup/BackupRestoreException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "fileName="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/16 v17, 0x0

    .line 425
    .local v17, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 426
    .local v5, bos:Ljava/io/BufferedOutputStream;
    const/4 v15, 0x0

    .line 427
    .local v15, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 430
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .local v9, currentFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 433
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 434
    .local v10, currentPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Folder="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v23

    .line 437
    .local v23, subFiles:[Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    .line 438
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v23, v19

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 439
    .local v22, subFileStr:Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    .local v21, subFile:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 441
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 442
    .local v11, destExtraFolderStr:Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .local v24, subFolder:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z

    move-result v20

    .line 445
    .local v20, makeOk:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Make Dir: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    if-nez v20, :cond_4

    .line 447
    new-instance v25, Lcom/htc/util/backup/BackupRestoreException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Create Folder Fail:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x7d0

    invoke-direct/range {v25 .. v27}, Lcom/htc/util/backup/BackupRestoreException;-><init>(Ljava/lang/String;I)V

    throw v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v9           #currentFile:Ljava/io/File;
    .end local v10           #currentPath:Ljava/lang/String;
    .end local v11           #destExtraFolderStr:Ljava/lang/String;
    .end local v19           #i:I
    .end local v20           #makeOk:Z
    .end local v21           #subFile:Ljava/io/File;
    .end local v22           #subFileStr:Ljava/lang/String;
    .end local v23           #subFiles:[Ljava/lang/String;
    .end local v24           #subFolder:Ljava/io/File;
    :catch_0
    move-exception v13

    .line 483
    .local v13, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_1
    new-instance v25, Lcom/htc/util/backup/BackupRestoreException;

    const/16 v26, -0x7f8

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v13, v1}, Lcom/htc/util/backup/BackupRestoreException;-><init>(Ljava/lang/Exception;I)V

    throw v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    .end local v13           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    :goto_2
    if-eqz v3, :cond_0

    .line 487
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 489
    :cond_0
    :goto_3
    if-eqz v15, :cond_1

    .line 491
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 493
    :cond_1
    :goto_4
    if-eqz v5, :cond_2

    .line 495
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 497
    :cond_2
    :goto_5
    if-eqz v17, :cond_3

    .line 499
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 500
    :cond_3
    :goto_6
    throw v25

    .line 450
    .restart local v9       #currentFile:Ljava/io/File;
    .restart local v10       #currentPath:Ljava/lang/String;
    .restart local v11       #destExtraFolderStr:Ljava/lang/String;
    .restart local v19       #i:I
    .restart local v20       #makeOk:Z
    .restart local v21       #subFile:Ljava/io/File;
    .restart local v22       #subFileStr:Ljava/lang/String;
    .restart local v23       #subFiles:[Ljava/lang/String;
    .restart local v24       #subFolder:Ljava/io/File;
    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/util/backup/BackupRestoreService;->backupExtraToSdcard(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .end local v11           #destExtraFolderStr:Ljava/lang/String;
    .end local v20           #makeOk:Z
    .end local v24           #subFolder:Ljava/io/File;
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 453
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/util/backup/BackupRestoreService;->backupExtraToSdcard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 457
    .end local v10           #currentPath:Ljava/lang/String;
    .end local v19           #i:I
    .end local v21           #subFile:Ljava/io/File;
    .end local v22           #subFileStr:Ljava/lang/String;
    .end local v23           #subFiles:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Backup File, path = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    sget-object v28, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "; filename = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 463
    .local v12, destFile:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .local v14, f:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 465
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 466
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .local v18, fos:Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v6, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 467
    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .local v6, bos:Ljava/io/BufferedOutputStream;
    :try_start_8
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    .line 468
    .end local v15           #fis:Ljava/io/FileInputStream;
    .local v16, fis:Ljava/io/FileInputStream;
    :try_start_9
    new-instance v4, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    .line 469
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .local v4, bis:Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    .line 470
    .local v8, cnt:I
    const/16 v25, 0x1000

    :try_start_a
    move/from16 v0, v25

    new-array v7, v0, [B

    .line 471
    .local v7, buf:[B
    :goto_8
    invoke-virtual {v4, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_7

    .line 472
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v6, v7, v0, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_8

    .line 482
    .end local v7           #buf:[B
    :catch_1
    move-exception v13

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    .restart local v7       #buf:[B
    .restart local v16       #fis:Ljava/io/FileInputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :cond_7
    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .line 485
    .end local v7           #buf:[B
    .end local v8           #cnt:I
    .end local v12           #destFile:Ljava/lang/String;
    .end local v14           #f:Ljava/io/File;
    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :cond_8
    if-eqz v3, :cond_9

    .line 487
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 489
    :cond_9
    :goto_9
    if-eqz v15, :cond_a

    .line 491
    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 493
    :cond_a
    :goto_a
    if-eqz v5, :cond_b

    .line 495
    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 497
    :cond_b
    :goto_b
    if-eqz v17, :cond_c

    .line 499
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 502
    :cond_c
    :goto_c
    return-void

    .line 488
    :catch_2
    move-exception v25

    goto :goto_9

    .line 492
    :catch_3
    move-exception v25

    goto :goto_a

    .line 496
    :catch_4
    move-exception v25

    goto :goto_b

    .line 500
    :catch_5
    move-exception v25

    goto :goto_c

    .line 488
    .end local v9           #currentFile:Ljava/io/File;
    :catch_6
    move-exception v26

    goto/16 :goto_3

    .line 492
    :catch_7
    move-exception v26

    goto/16 :goto_4

    .line 496
    :catch_8
    move-exception v26

    goto/16 :goto_5

    .line 500
    :catch_9
    move-exception v26

    goto/16 :goto_6

    .line 485
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #currentFile:Ljava/io/File;
    .restart local v12       #destFile:Ljava/lang/String;
    .restart local v14       #f:Ljava/io/File;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v25

    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v25

    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v25

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    .restart local v8       #cnt:I
    .restart local v16       #fis:Ljava/io/FileInputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v25

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 482
    .end local v8           #cnt:I
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v13

    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v13

    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v13

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method private backupToSdcard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 28
    .parameter "rootFolder"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/backup/BackupRestoreException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "fileName="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/16 v17, 0x0

    .line 512
    .local v17, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 513
    .local v5, bos:Ljava/io/BufferedOutputStream;
    const/4 v14, 0x0

    .line 514
    .local v14, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 517
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    .local v9, currentFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 520
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 521
    .local v10, currentPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Folder="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/backup/BackupRestoreService;->level:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 523
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/backup/BackupRestoreService;->pkgFolder:Ljava/lang/String;

    .line 524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/backup/BackupRestoreService;->level:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/util/backup/BackupRestoreService;->level:I

    .line 540
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v22

    .line 541
    .local v22, subFiles:[Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    .line 542
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v22, v19

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/util/backup/BackupRestoreService;->backupToSdcard(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 530
    .end local v19           #i:I
    .end local v22           #subFiles:[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/backup/BackupRestoreService;->pkgFolder:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    .line 531
    .local v24, subFolderStr:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 532
    .local v23, subFolder:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v16, folder:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    move-result v20

    .line 534
    .local v20, makeOk:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Make Dir: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    if-nez v20, :cond_0

    .line 536
    new-instance v25, Lcom/htc/util/backup/BackupRestoreException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Create Folder Fail:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x7d0

    invoke-direct/range {v25 .. v27}, Lcom/htc/util/backup/BackupRestoreException;-><init>(Ljava/lang/String;I)V

    throw v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .end local v9           #currentFile:Ljava/io/File;
    .end local v10           #currentPath:Ljava/lang/String;
    .end local v16           #folder:Ljava/io/File;
    .end local v20           #makeOk:Z
    .end local v23           #subFolder:Ljava/lang/String;
    .end local v24           #subFolderStr:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 563
    .local v12, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_1
    new-instance v25, Lcom/htc/util/backup/BackupRestoreException;

    const/16 v26, -0x7f8

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v12, v1}, Lcom/htc/util/backup/BackupRestoreException;-><init>(Ljava/lang/Exception;I)V

    throw v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    .end local v12           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    :goto_2
    if-eqz v3, :cond_2

    .line 567
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 569
    :cond_2
    :goto_3
    if-eqz v14, :cond_3

    .line 571
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 573
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    .line 575
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 577
    :cond_4
    :goto_5
    if-eqz v17, :cond_5

    .line 579
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 580
    :cond_5
    :goto_6
    throw v25

    .line 545
    .restart local v9       #currentFile:Ljava/io/File;
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Backup File, filename = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/backup/BackupRestoreService;->pkgFolder:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 547
    .local v21, subFileStr:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 549
    .local v11, destFile:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    .local v13, f:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 552
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 553
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .local v18, fos:Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v6, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 554
    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .local v6, bos:Ljava/io/BufferedOutputStream;
    :try_start_8
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    .line 555
    .end local v14           #fis:Ljava/io/FileInputStream;
    .local v15, fis:Ljava/io/FileInputStream;
    :try_start_9
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    .line 556
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .local v4, bis:Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    .line 557
    .local v8, cnt:I
    const/16 v25, 0x1000

    :try_start_a
    move/from16 v0, v25

    new-array v7, v0, [B

    .line 558
    .local v7, buf:[B
    :goto_7
    invoke-virtual {v4, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_7

    .line 559
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v6, v7, v0, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_7

    .line 562
    .end local v7           #buf:[B
    :catch_1
    move-exception v12

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    .restart local v7       #buf:[B
    .restart local v15       #fis:Ljava/io/FileInputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :cond_7
    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .line 565
    .end local v7           #buf:[B
    .end local v8           #cnt:I
    .end local v11           #destFile:Ljava/lang/String;
    .end local v13           #f:Ljava/io/File;
    .end local v18           #fos:Ljava/io/FileOutputStream;
    .end local v21           #subFileStr:Ljava/lang/String;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :cond_8
    if-eqz v3, :cond_9

    .line 567
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 569
    :cond_9
    :goto_8
    if-eqz v14, :cond_a

    .line 571
    :try_start_c
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 573
    :cond_a
    :goto_9
    if-eqz v5, :cond_b

    .line 575
    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 577
    :cond_b
    :goto_a
    if-eqz v17, :cond_c

    .line 579
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 582
    :cond_c
    :goto_b
    return-void

    .line 568
    :catch_2
    move-exception v25

    goto :goto_8

    .line 572
    :catch_3
    move-exception v25

    goto :goto_9

    .line 576
    :catch_4
    move-exception v25

    goto :goto_a

    .line 580
    :catch_5
    move-exception v25

    goto :goto_b

    .line 568
    .end local v9           #currentFile:Ljava/io/File;
    :catch_6
    move-exception v26

    goto/16 :goto_3

    .line 572
    :catch_7
    move-exception v26

    goto/16 :goto_4

    .line 576
    :catch_8
    move-exception v26

    goto/16 :goto_5

    .line 580
    :catch_9
    move-exception v26

    goto/16 :goto_6

    .line 565
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #currentFile:Ljava/io/File;
    .restart local v11       #destFile:Ljava/lang/String;
    .restart local v13       #f:Ljava/io/File;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    .restart local v21       #subFileStr:Ljava/lang/String;
    :catchall_1
    move-exception v25

    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v25

    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v25

    move-object v14, v15

    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    .restart local v8       #cnt:I
    .restart local v15       #fis:Ljava/io/FileInputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v25

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 562
    .end local v8           #cnt:I
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v12

    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v12

    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v12

    move-object v14, v15

    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method private copyExtraFile(Ljava/lang/String;)V
    .locals 11
    .parameter "backupRootStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v6, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFileList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 361
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFileList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "com.htc.android.pcsync.extra"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, destExtraRoot:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFileList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, destFilePath:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFileList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, destExtra:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v3, extraFolder:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    .line 367
    .local v5, makeOk:Z
    iget-object v6, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Make Dir: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-nez v5, :cond_0

    .line 369
    new-instance v6, Lcom/htc/util/backup/BackupRestoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create Folder Fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, -0x7d0

    invoke-direct {v6, v7, v8}, Lcom/htc/util/backup/BackupRestoreException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 371
    :cond_0
    iget-object v6, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFileList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Lcom/htc/util/backup/BackupRestoreService;->backupExtraFileToSdcard(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 374
    .end local v0           #destExtra:Ljava/lang/String;
    .end local v1           #destExtraRoot:Ljava/lang/String;
    .end local v2           #destFilePath:Ljava/lang/String;
    .end local v3           #extraFolder:Ljava/io/File;
    .end local v4           #i:I
    .end local v5           #makeOk:Z
    :cond_1
    return-void
.end method

.method private copyExtraFolder(Ljava/lang/String;)V
    .locals 8
    .parameter "backupRootStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFolderList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 408
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFolderList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 409
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "com.htc.android.pcsync.extra"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, destExtraRoot:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFolderList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, destExtra:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .local v2, extraFolder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 413
    .local v4, makeOk:Z
    iget-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Make Dir: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-nez v4, :cond_0

    .line 415
    new-instance v5, Lcom/htc/util/backup/BackupRestoreException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create Folder Fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, -0x7d0

    invoke-direct {v5, v6, v7}, Lcom/htc/util/backup/BackupRestoreException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 417
    :cond_0
    iget-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFolderList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/htc/util/backup/BackupRestoreService;->backupExtraToSdcard(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 420
    .end local v0           #destExtra:Ljava/lang/String;
    .end local v1           #destExtraRoot:Ljava/lang/String;
    .end local v2           #extraFolder:Ljava/io/File;
    .end local v3           #i:I
    .end local v4           #makeOk:Z
    :cond_1
    return-void
.end method

.method private deleteFolder(Ljava/lang/String;)V
    .locals 9
    .parameter "filepath"

    .prologue
    .line 768
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    .local v2, delFolder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 770
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 771
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 772
    .local v5, subFiles:[Ljava/lang/String;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v1, v3

    .line 773
    .local v6, subfile:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, absFileStr:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/util/backup/BackupRestoreService;->deleteFolder(Ljava/lang/String;)V

    .line 772
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 776
    .end local v0           #absFileStr:Ljava/lang/String;
    .end local v6           #subfile:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 781
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #subFiles:[Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 778
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private getExceptionStack(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3
    .parameter "ex"

    .prologue
    .line 734
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 735
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 736
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 737
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private overwrite(Ljava/lang/String;)V
    .locals 13
    .parameter "restoreFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 693
    const-string v8, ""

    .line 695
    .local v8, overwriteFilePath:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/htc/util/backup/BackupRestoreService;->inExtraFolder(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 696
    const-string v10, "com.htc.android.pcsync.extra"

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string v11, "com.htc.android.pcsync.extra"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 703
    :goto_0
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 704
    .local v7, folderPath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 705
    .local v6, folder:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 706
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 709
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 710
    .local v5, destFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 712
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 713
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 714
    .local v1, bos:Ljava/io/BufferedOutputStream;
    const/16 v10, 0x1000

    new-array v2, v10, [B

    .line 715
    .local v2, buf:[B
    const/4 v3, 0x0

    .line 716
    .local v3, cnt:I
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    .line 717
    invoke-virtual {v1, v2, v12, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 698
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #buf:[B
    .end local v3           #cnt:I
    .end local v5           #destFile:Ljava/io/File;
    .end local v6           #folder:Ljava/io/File;
    .end local v7           #folderPath:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/util/backup/BackupRestoreService;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 699
    .local v4, dataPath:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreVersion:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    iget-object v11, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreVersion:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 700
    .local v9, relativePath:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 721
    .end local v4           #dataPath:Ljava/lang/String;
    .end local v9           #relativePath:Ljava/lang/String;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #buf:[B
    .restart local v3       #cnt:I
    .restart local v5       #destFile:Ljava/io/File;
    .restart local v6       #folder:Ljava/io/File;
    .restart local v7       #folderPath:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 722
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 727
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 730
    :cond_4
    :goto_3
    return-void

    .line 724
    :catch_0
    move-exception v10

    goto :goto_2

    .line 729
    :catch_1
    move-exception v10

    goto :goto_3
.end method

.method private reportStatus(I)V
    .locals 5
    .parameter "returnCode"

    .prologue
    .line 176
    const-string v0, ""

    .line 177
    .local v0, action:Ljava/lang/String;
    iget v2, p0, Lcom/htc/util/backup/BackupRestoreService;->mInputAction:I

    iget v3, p0, Lcom/htc/util/backup/BackupRestoreService;->ACT_TYPE_BACKUP:I

    if-ne v2, v3, :cond_0

    .line 178
    const-string v0, "com.htc.android.pcsync.BACKUP_REPORT"

    .line 182
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v2, "PKG_NAME"

    iget-object v3, p0, Lcom/htc/util/backup/BackupRestoreService;->mMyPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v2, "RETURN_CODE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    iget-object v2, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nReport Backup/Restore Status\nAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/util/backup/BackupRestoreService;->mMyPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ReturnCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0, v1}, Lcom/htc/util/backup/BackupRestoreService;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    return-void

    .line 180
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v0, "com.htc.android.pcsync.RESTORE_REPORT"

    goto :goto_0
.end method

.method private restoreFromSdcard(Ljava/lang/String;)V
    .locals 10
    .parameter "filepath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/backup/BackupRestoreException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 651
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    .local v6, restoreFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 653
    iget-object v7, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restore Folder: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, fileList:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    array-length v2, v4

    .local v2, cnt:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 656
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, absolutePath:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/util/backup/BackupRestoreService;->restoreFromSdcard(Ljava/lang/String;)V

    .line 655
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 660
    .end local v0           #absolutePath:Ljava/lang/String;
    .end local v2           #cnt:I
    .end local v4           #fileList:[Ljava/lang/String;
    .end local v5           #i:I
    :cond_0
    iget-object v7, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restore File: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v7, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreModel:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreVersion:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, p1}, Lcom/htc/util/backup/BackupRestoreService;->determineAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/backup/BackupRestoreService$ActionType;

    move-result-object v1

    .line 662
    .local v1, actionType:Lcom/htc/util/backup/BackupRestoreService$ActionType;
    sget-object v7, Lcom/htc/util/backup/BackupRestoreService$ActionType;->CONVERT:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    if-ne v1, v7, :cond_2

    .line 663
    iget-object v7, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v8, "ActionType=CONVERT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/htc/util/backup/BackupRestoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 665
    :try_start_1
    iget-object v7, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreModel:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreVersion:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, p1}, Lcom/htc/util/backup/BackupRestoreService;->convertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/htc/util/backup/BackupRestoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 690
    .end local v1           #actionType:Lcom/htc/util/backup/BackupRestoreService$ActionType;
    :cond_1
    :goto_1
    return-void

    .line 666
    .restart local v1       #actionType:Lcom/htc/util/backup/BackupRestoreService$ActionType;
    :catch_0
    move-exception v3

    .line 667
    .local v3, ex:Ljava/lang/Exception;
    :try_start_2
    new-instance v7, Lcom/htc/util/backup/BackupRestoreException;

    const/16 v8, -0x13ec

    invoke-direct {v7, v3, v8}, Lcom/htc/util/backup/BackupRestoreException;-><init>(Ljava/lang/Exception;I)V

    throw v7
    :try_end_2
    .catch Lcom/htc/util/backup/BackupRestoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 685
    .end local v1           #actionType:Lcom/htc/util/backup/BackupRestoreService$ActionType;
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v6           #restoreFile:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 686
    .local v3, ex:Lcom/htc/util/backup/BackupRestoreException;
    throw v3

    .line 669
    .end local v3           #ex:Lcom/htc/util/backup/BackupRestoreException;
    .restart local v1       #actionType:Lcom/htc/util/backup/BackupRestoreService$ActionType;
    .restart local v6       #restoreFile:Ljava/io/File;
    :cond_2
    :try_start_3
    sget-object v7, Lcom/htc/util/backup/BackupRestoreService$ActionType;->OVERWRITE:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    if-ne v1, v7, :cond_3

    .line 670
    iget-object v7, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v8, "ActionType=OVERWRITE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/htc/util/backup/BackupRestoreException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 672
    :try_start_4
    invoke-direct {p0, p1}, Lcom/htc/util/backup/BackupRestoreService;->overwrite(Ljava/lang/String;)V

    .line 673
    iget-object v7, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreModel:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/util/backup/BackupRestoreService;->restoreVersion:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, p1}, Lcom/htc/util/backup/BackupRestoreService;->finishOverwrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/htc/util/backup/BackupRestoreException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 674
    :catch_2
    move-exception v3

    .line 675
    .local v3, ex:Ljava/lang/Exception;
    :try_start_5
    new-instance v7, Lcom/htc/util/backup/BackupRestoreException;

    const/16 v8, -0x802

    invoke-direct {v7, v3, v8}, Lcom/htc/util/backup/BackupRestoreException;-><init>(Ljava/lang/Exception;I)V

    throw v7
    :try_end_5
    .catch Lcom/htc/util/backup/BackupRestoreException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 687
    .end local v1           #actionType:Lcom/htc/util/backup/BackupRestoreService$ActionType;
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v6           #restoreFile:Ljava/io/File;
    :catch_3
    move-exception v3

    .line 688
    .restart local v3       #ex:Ljava/lang/Exception;
    new-instance v7, Lcom/htc/util/backup/BackupRestoreException;

    const/16 v8, -0x7f8

    invoke-direct {v7, v3, v8}, Lcom/htc/util/backup/BackupRestoreException;-><init>(Ljava/lang/Exception;I)V

    throw v7

    .line 677
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v1       #actionType:Lcom/htc/util/backup/BackupRestoreService$ActionType;
    .restart local v6       #restoreFile:Ljava/io/File;
    :cond_3
    :try_start_6
    sget-object v7, Lcom/htc/util/backup/BackupRestoreService$ActionType;->SKIP:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    if-ne v1, v7, :cond_4

    .line 678
    iget-object v7, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v8, "ActionType=SKIP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 680
    :cond_4
    sget-object v7, Lcom/htc/util/backup/BackupRestoreService$ActionType;->INHIBIT:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    if-ne v1, v7, :cond_1

    .line 681
    iget-object v7, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v8, "ActionType=INHIBIT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lcom/htc/util/backup/BackupRestoreException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1
.end method

.method private sendReturnCode(II)V
    .locals 3
    .parameter "what"
    .parameter "returnCode"

    .prologue
    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "RETURN_CODE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 154
    iget-object v2, p0, Lcom/htc/util/backup/BackupRestoreService;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method

.method private stopMyself()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v1, "Stop BackupRestoreService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/htc/util/backup/BackupRestoreService;->stopSelf()V

    .line 196
    return-void
.end method


# virtual methods
.method protected addExtraFile(Ljava/lang/String;)V
    .locals 3
    .parameter "absoluteFilePath"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add Extra File: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    return-void
.end method

.method protected addExtraFolder(Ljava/lang/String;)V
    .locals 3
    .parameter "absoluteExtraPath"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add Extra Folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService;->mExtraFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    return-void
.end method

.method public convertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "restoreModel"
    .parameter "restoreVersion"
    .parameter "restoreFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 928
    return-void
.end method

.method public determineAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/backup/BackupRestoreService$ActionType;
    .locals 1
    .parameter "restoreModel"
    .parameter "restoreVersion"
    .parameter "restoreFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 920
    sget-object v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;->CONVERT:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    .line 921
    .local v0, defaultActionType:Lcom/htc/util/backup/BackupRestoreService$ActionType;
    return-object v0
.end method

.method public finishBackup()V
    .locals 0

    .prologue
    .line 893
    return-void
.end method

.method public finishOverwrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "restoreModel"
    .parameter "restoreVersion"
    .parameter "restoreFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 917
    return-void
.end method

.method public finishRestore()V
    .locals 0

    .prologue
    .line 909
    return-void
.end method

.method protected inExtraFolder(Ljava/lang/String;)Z
    .locals 2
    .parameter "filepath"

    .prologue
    .line 759
    const-string v1, "com.htc.android.pcsync.extra"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 760
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 761
    const/4 v1, 0x1

    .line 763
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initBackup()V
    .locals 0

    .prologue
    .line 885
    return-void
.end method

.method public initRestore()V
    .locals 0

    .prologue
    .line 901
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 164
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 11
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v8, -0x1388

    .line 89
    invoke-virtual {p0}, Lcom/htc/util/backup/BackupRestoreService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mMyPkgName:Ljava/lang/String;

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/util/backup/BackupRestoreService;->mMyPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    .line 91
    iget-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v6, "onStart()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, action:Ljava/lang/String;
    const-string v5, "PKG_NAME"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, pkgName:Ljava/lang/String;
    const-string v5, "WORKING_FOLDER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mWorkingFolder:Ljava/lang/String;

    .line 97
    iget-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WorkingFolder="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/util/backup/BackupRestoreService;->mWorkingFolder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v5, "ro.product.model"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mModel:Ljava/lang/String;

    .line 101
    const-string v5, "com.htc.android.pcsync.START_BACKUP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    iget v5, p0, Lcom/htc/util/backup/BackupRestoreService;->ACT_TYPE_BACKUP:I

    iput v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mInputAction:I

    .line 107
    :goto_0
    const-string v5, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, event:I
    iget v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mInputAction:I

    iget v6, p0, Lcom/htc/util/backup/BackupRestoreService;->ACT_TYPE_BACKUP:I

    if-ne v5, v6, :cond_2

    .line 110
    const/4 v2, 0x1

    .line 114
    :goto_1
    const/16 v5, -0x3e8

    invoke-direct {p0, v2, v5}, Lcom/htc/util/backup/BackupRestoreService;->sendReturnCode(II)V

    .line 146
    .end local v2           #event:I
    :cond_0
    :goto_2
    return-void

    .line 104
    :cond_1
    iget v5, p0, Lcom/htc/util/backup/BackupRestoreService;->ACT_TYPE_RESTORE:I

    iput v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mInputAction:I

    goto :goto_0

    .line 112
    .restart local v2       #event:I
    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    .line 119
    .end local v2           #event:I
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/util/backup/BackupRestoreService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/util/backup/BackupRestoreService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    iget-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mVersion:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 125
    invoke-direct {p0, v9, v8}, Lcom/htc/util/backup/BackupRestoreService;->sendReturnCode(II)V

    goto :goto_2

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-direct {p0, v9, v8}, Lcom/htc/util/backup/BackupRestoreService;->sendReturnCode(II)V

    goto :goto_2

    .line 129
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    iget-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mVersion:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    const/4 v4, 0x0

    .line 133
    .local v4, th:Ljava/lang/Thread;
    iget v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mInputAction:I

    iget v6, p0, Lcom/htc/util/backup/BackupRestoreService;->ACT_TYPE_BACKUP:I

    if-ne v5, v6, :cond_5

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/util/backup/BackupRestoreService;->mWorkingFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/util/backup/BackupRestoreService;->mVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mWorkingFolder:Ljava/lang/String;

    .line 135
    new-instance v4, Lcom/htc/util/backup/BackupRestoreService$BackupThread;

    .end local v4           #th:Ljava/lang/Thread;
    invoke-direct {v4, p0, v10}, Lcom/htc/util/backup/BackupRestoreService$BackupThread;-><init>(Lcom/htc/util/backup/BackupRestoreService;Lcom/htc/util/backup/BackupRestoreService$1;)V

    .line 142
    .restart local v4       #th:Ljava/lang/Thread;
    :goto_3
    if-eqz v4, :cond_0

    .line 143
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 136
    :cond_5
    iget v5, p0, Lcom/htc/util/backup/BackupRestoreService;->mInputAction:I

    iget v6, p0, Lcom/htc/util/backup/BackupRestoreService;->ACT_TYPE_RESTORE:I

    if-ne v5, v6, :cond_6

    .line 137
    new-instance v4, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;

    .end local v4           #th:Ljava/lang/Thread;
    invoke-direct {v4, p0, v10}, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;-><init>(Lcom/htc/util/backup/BackupRestoreService;Lcom/htc/util/backup/BackupRestoreService$1;)V

    .restart local v4       #th:Ljava/lang/Thread;
    goto :goto_3

    .line 139
    :cond_6
    const/4 v4, 0x0

    goto :goto_3
.end method
