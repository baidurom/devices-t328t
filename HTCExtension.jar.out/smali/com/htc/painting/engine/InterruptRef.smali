.class public Lcom/htc/painting/engine/InterruptRef;
.super Ljava/lang/Object;
.source "InterruptRef.java"


# instance fields
.field mInterrupt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/InterruptRef;->mInterrupt:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized doInterrupt()V
    .locals 1

    .prologue
    .line 15
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/painting/engine/InterruptRef;->mInterrupt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInterrupted()Z
    .locals 1

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/painting/engine/InterruptRef;->mInterrupt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/painting/engine/InterruptRef;->mInterrupt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
