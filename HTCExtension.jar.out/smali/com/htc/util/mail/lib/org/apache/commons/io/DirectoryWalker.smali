.class public abstract Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;
.super Ljava/lang/Object;
.source "DirectoryWalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException;
    }
.end annotation


# instance fields
.field private final depthLimit:I

.field private final filter:Ljava/io/FileFilter;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 266
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;-><init>(Ljava/io/FileFilter;I)V

    .line 267
    return-void
.end method

.method protected constructor <init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;I)V
    .locals 1
    .parameter "directoryFilter"
    .parameter "fileFilter"
    .parameter "depthLimit"

    .prologue
    .line 300
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 301
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    .line 310
    :goto_0
    iput p3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->depthLimit:I

    .line 311
    return-void

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    .line 305
    :goto_1
    if-eqz p2, :cond_2

    .line 306
    :goto_2
    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->makeDirectoryOnly(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p1

    .line 307
    invoke-static {p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->makeFileOnly(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p2

    .line 308
    invoke-static {p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->orFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    goto :goto_0

    .line 304
    :cond_1
    sget-object p1, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_1

    .line 305
    :cond_2
    sget-object p2, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_2
.end method

.method protected constructor <init>(Ljava/io/FileFilter;I)V
    .locals 0
    .parameter "filter"
    .parameter "depthLimit"

    .prologue
    .line 281
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    .line 283
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->depthLimit:I

    .line 284
    return-void
.end method

.method private walk(Ljava/io/File;ILjava/util/Collection;)V
    .locals 5
    .parameter "directory"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 356
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V

    .line 358
    add-int/lit8 v0, p2, 0x1

    .line 359
    .local v0, childDepth:I
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->depthLimit:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->depthLimit:I

    if-gt v0, v4, :cond_1

    .line 360
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 361
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    if-nez v4, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 362
    .local v2, childFiles:[Ljava/io/File;
    :goto_0
    if-nez v2, :cond_4

    .line 363
    invoke-virtual {p0, p1, v0, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->handleRestricted(Ljava/io/File;ILjava/util/Collection;)V

    .line 377
    .end local v2           #childFiles:[Ljava/io/File;
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V

    .line 379
    .end local v0           #childDepth:I
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 380
    return-void

    .line 361
    .restart local v0       #childDepth:I
    :cond_3
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    invoke-virtual {p1, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 365
    .restart local v2       #childFiles:[Ljava/io/File;
    :cond_4
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 366
    aget-object v1, v2, v3

    .line 367
    .local v1, childFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 368
    invoke-direct {p0, v1, v0, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    .line 365
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 370
    :cond_5
    invoke-virtual {p0, v1, v0, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 371
    invoke-virtual {p0, v1, v0, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->handleFile(Ljava/io/File;ILjava/util/Collection;)V

    .line 372
    invoke-virtual {p0, v1, v0, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    goto :goto_2
.end method


# virtual methods
.method protected final checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V
    .locals 1
    .parameter "file"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException;

    invoke-direct {v0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException;-><init>(Ljava/io/File;I)V

    throw v0

    .line 405
    :cond_0
    return-void
.end method

.method protected handleCancelled(Ljava/io/File;Ljava/util/Collection;Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException;)V
    .locals 0
    .parameter "startDirectory"
    .parameter "results"
    .parameter "cancel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    throw p3
.end method

.method protected handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z
    .locals 1
    .parameter "directory"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method protected handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .parameter "directory"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    return-void
.end method

.method protected handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .parameter "directory"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    return-void
.end method

.method protected handleEnd(Ljava/util/Collection;)V
    .locals 0
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    return-void
.end method

.method protected handleFile(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .parameter "file"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    return-void
.end method

.method protected handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z
    .locals 1
    .parameter "file"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRestricted(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .parameter "directory"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    return-void
.end method

.method protected handleStart(Ljava/io/File;Ljava/util/Collection;)V
    .locals 0
    .parameter "startDirectory"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    return-void
.end method

.method protected final walk(Ljava/io/File;Ljava/util/Collection;)V
    .locals 3
    .parameter "startDirectory"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 335
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Start Directory is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->handleStart(Ljava/io/File;Ljava/util/Collection;)V

    .line 339
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    .line 340
    invoke-virtual {p0, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->handleEnd(Ljava/util/Collection;)V
    :try_end_0
    .catch Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, cancel:Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException;
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;->handleCancelled(Ljava/io/File;Ljava/util/Collection;Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException;)V

    goto :goto_0
.end method
