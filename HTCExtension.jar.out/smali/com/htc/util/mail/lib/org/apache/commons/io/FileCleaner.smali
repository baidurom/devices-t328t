.class public Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaner;
.super Ljava/lang/Object;
.source "FileCleaner.java"


# static fields
.field static final theInstance:Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaner;->theInstance:Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized exitWhenFinished()V
    .locals 2

    .prologue
    .line 164
    const-class v1, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaner;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaner;->theInstance:Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->exitWhenFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit v1

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaner;->theInstance:Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;

    return-object v0
.end method

.method public static getTrackCount()I
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaner;->theInstance:Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->getTrackCount()I

    move-result v0

    return v0
.end method

.method public static track(Ljava/io/File;Ljava/lang/Object;)V
    .locals 1
    .parameter "file"
    .parameter "marker"

    .prologue
    .line 62
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaner;->theInstance:Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static track(Ljava/io/File;Ljava/lang/Object;Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;)V
    .locals 1
    .parameter "file"
    .parameter "marker"
    .parameter "deleteStrategy"

    .prologue
    .line 81
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaner;->theInstance:Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;)V

    .line 82
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "path"
    .parameter "marker"

    .prologue
    .line 99
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaner;->theInstance:Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/Object;Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;)V
    .locals 1
    .parameter "path"
    .parameter "marker"
    .parameter "deleteStrategy"

    .prologue
    .line 118
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaner;->theInstance:Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;)V

    .line 119
    return-void
.end method
