.class public abstract Lcom/htc/painting/engine/cachebitmap/CacheTask;
.super Ljava/lang/Object;
.source "CacheTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final RESULT_ABORTED:I = 0x5

.field public static final RESULT_SUCCESSFUL:I = 0x4


# instance fields
.field private mIsRunning:Z

.field protected final mListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

.field protected final mRefData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

.field protected final mRequestKey:J

.field protected mResult:I

.field protected mSubTask:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/painting/engine/cachebitmap/CacheTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;)V
    .locals 1
    .parameter "requestKey"
    .parameter "data"
    .parameter "listener"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mIsRunning:Z

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mResult:I

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    .line 52
    iput-wide p1, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mRequestKey:J

    .line 53
    iput-object p4, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 54
    iput-object p3, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mRefData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 55
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mIsRunning:Z

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mResult:I

    .line 80
    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 81
    return-void
.end method

.method public addSubTask(Lcom/htc/painting/engine/cachebitmap/CacheTask;)Z
    .locals 3
    .parameter "task"

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, result:Z
    iget-object v2, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    monitor-exit v2

    .line 129
    return v0

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearSubTask()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 138
    return-void
.end method

.method public abstract end()V
.end method

.method public execute()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mIsRunning:Z

    .line 69
    invoke-virtual {p0}, Lcom/htc/painting/engine/cachebitmap/CacheTask;->run()V

    .line 70
    iget v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mResult:I

    return v0
.end method

.method public getRefData()Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mRefData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    return-object v0
.end method

.method public getRequestKey()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mRequestKey:J

    return-wide v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mResult:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mIsRunning:Z

    return v0
.end method

.method public removeSubTask(Lcom/htc/painting/engine/cachebitmap/CacheTask;)Z
    .locals 1
    .parameter "task"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract run()V
.end method
