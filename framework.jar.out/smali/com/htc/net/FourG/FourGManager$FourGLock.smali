.class public Lcom/htc/net/FourG/FourGManager$FourGLock;
.super Ljava/lang/Object;
.source "FourGManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/FourGManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FourGLock"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/net/FourG/FourGManager;


# direct methods
.method private constructor <init>(Lcom/htc/net/FourG/FourGManager;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 578
    iput-object p1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->this$0:Lcom/htc/net/FourG/FourGManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p2, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mTag:Ljava/lang/String;

    .line 580
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mBinder:Landroid/os/IBinder;

    .line 581
    iput v1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCounted:Z

    .line 583
    iput-boolean v1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    .line 584
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/net/FourG/FourGManager;Ljava/lang/String;Lcom/htc/net/FourG/FourGManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 570
    invoke-direct {p0, p1, p2}, Lcom/htc/net/FourG/FourGManager$FourGLock;-><init>(Lcom/htc/net/FourG/FourGManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .prologue
    .line 589
    iget-object v1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 590
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    if-lez v0, :cond_0

    .line 597
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    .line 599
    :cond_0
    monitor-exit v1

    .line 600
    return-void

    .line 590
    :cond_1
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 654
    iget-object v1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 655
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    if-eqz v0, :cond_0

    .line 663
    :cond_0
    monitor-exit v1

    .line 664
    return-void

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isHeld()Z
    .locals 2

    .prologue
    .line 605
    iget-object v1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 606
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 613
    iget-object v1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 614
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    if-nez v0, :cond_0

    .line 621
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    .line 623
    :cond_0
    iget v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    if-gez v0, :cond_2

    .line 624
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4GLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 614
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 626
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 0
    .parameter "refCounted"

    .prologue
    .line 632
    iput-boolean p1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCounted:Z

    .line 633
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 639
    iget-object v4, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    .line 640
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, s1:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    if-eqz v3, :cond_0

    const-string/jumbo v1, "held; "

    .line 642
    .local v1, s2:Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCounted:Z

    if-eqz v3, :cond_1

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, s3:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "4GLock{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 641
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 645
    .restart local v1       #s2:Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "not refcounted"

    .restart local v2       #s3:Ljava/lang/String;
    goto :goto_1

    .line 648
    .end local v0           #s1:Ljava/lang/String;
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
