.class public Lcom/htc/socialnetwork/SmallTaskManager;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SmallTaskManager.java"


# static fields
.field static final MAX_THREADS:I = 0x2

.field static final MIN_THREADS:I = 0x2

.field static manager:Lcom/htc/socialnetwork/SmallTaskManager;

.field static final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/htc/socialnetwork/SmallTaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/socialnetwork/SmallTaskManager;->manager:Lcom/htc/socialnetwork/SmallTaskManager;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x2

    .line 16
    const-wide/16 v3, 0x64

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/htc/socialnetwork/SmallTaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 17
    return-void
.end method

.method public static obtain()Lcom/htc/socialnetwork/SmallTaskManager;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/htc/socialnetwork/SmallTaskManager;->manager:Lcom/htc/socialnetwork/SmallTaskManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/htc/socialnetwork/SmallTaskManager;

    invoke-direct {v0}, Lcom/htc/socialnetwork/SmallTaskManager;-><init>()V

    sput-object v0, Lcom/htc/socialnetwork/SmallTaskManager;->manager:Lcom/htc/socialnetwork/SmallTaskManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/htc/socialnetwork/SmallTaskManager;->manager:Lcom/htc/socialnetwork/SmallTaskManager;

    return-object v0
.end method


# virtual methods
.method public cancel(J)Z
    .locals 8
    .parameter "threadId"

    .prologue
    .line 34
    sget-object v5, Lcom/htc/socialnetwork/SmallTaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v5

    .line 35
    :try_start_0
    sget-object v4, Lcom/htc/socialnetwork/SmallTaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 36
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 38
    .local v3, r:Ljava/lang/Runnable;
    instance-of v4, v3, Lcom/htc/socialnetwork/ImageDownloadRunnable;

    if-eqz v4, :cond_0

    .line 39
    move-object v0, v3

    check-cast v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;

    move-object v2, v0

    .line 40
    .local v2, mDownload:Lcom/htc/socialnetwork/ImageDownloadRunnable;
    invoke-virtual {v2}, Lcom/htc/socialnetwork/ImageDownloadRunnable;->getId()J

    move-result-wide v6

    cmp-long v4, v6, p1

    if-nez v4, :cond_0

    .line 41
    sget-object v4, Lcom/htc/socialnetwork/SmallTaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v5

    .line 45
    .end local v2           #mDownload:Lcom/htc/socialnetwork/ImageDownloadRunnable;
    .end local v3           #r:Ljava/lang/Runnable;
    :goto_0
    return v4

    .line 44
    :cond_1
    monitor-exit v5

    .line 45
    const/4 v4, 0x0

    goto :goto_0

    .line 44
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public cancelAll()V
    .locals 2

    .prologue
    .line 53
    sget-object v1, Lcom/htc/socialnetwork/SmallTaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/htc/socialnetwork/SmallTaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
