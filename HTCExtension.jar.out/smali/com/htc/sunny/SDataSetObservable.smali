.class public Lcom/htc/sunny/SDataSetObservable;
.super Landroid/database/Observable;
.source "SDataSetObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcom/htc/sunny/SDataSetObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChanged()V
    .locals 4

    .prologue
    .line 40
    iget-object v3, p0, Lcom/htc/sunny/SDataSetObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SDataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny/SDataSetObserver;

    .line 42
    .local v1, observer:Lcom/htc/sunny/SDataSetObserver;
    invoke-virtual {v1}, Lcom/htc/sunny/SDataSetObserver;->onChanged()V

    goto :goto_0

    .line 44
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lcom/htc/sunny/SDataSetObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    return-void
.end method

.method public notifyChanged(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 48
    iget-object v3, p0, Lcom/htc/sunny/SDataSetObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SDataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny/SDataSetObserver;

    .line 50
    .local v1, observer:Lcom/htc/sunny/SDataSetObserver;
    invoke-virtual {v1, p1}, Lcom/htc/sunny/SDataSetObserver;->onChanged(I)V

    goto :goto_0

    .line 52
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lcom/htc/sunny/SDataSetObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    return-void
.end method

.method public notifyInvalidated()V
    .locals 4

    .prologue
    .line 64
    iget-object v3, p0, Lcom/htc/sunny/SDataSetObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SDataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny/SDataSetObserver;

    .line 66
    .local v1, observer:Lcom/htc/sunny/SDataSetObserver;
    invoke-virtual {v1}, Lcom/htc/sunny/SDataSetObserver;->onInvalidated()V

    goto :goto_0

    .line 68
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lcom/htc/sunny/SDataSetObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    return-void
.end method
