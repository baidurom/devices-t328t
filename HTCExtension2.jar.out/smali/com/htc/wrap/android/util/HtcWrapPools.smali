.class public final Lcom/htc/wrap/android/util/HtcWrapPools;
.super Ljava/lang/Object;
.source "HtcWrapPools.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static finitePool(Landroid/util/HtcIfPoolableManager;I)Landroid/util/HtcIfPool;
    .locals 1
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/util/HtcIfPoolable",
            "<TT;>;>(",
            "Landroid/util/HtcIfPoolableManager",
            "<TT;>;I)",
            "Landroid/util/HtcIfPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, manager:Landroid/util/HtcIfPoolableManager;,"Landroid/util/HtcIfPoolableManager<TT;>;"
    check-cast p0, Landroid/util/PoolableManager;

    .end local p0           #manager:Landroid/util/HtcIfPoolableManager;,"Landroid/util/HtcIfPoolableManager<TT;>;"
    invoke-static {p0, p1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    check-cast v0, Landroid/util/HtcIfPool;

    return-object v0
.end method

.method public static simplePool(Landroid/util/HtcIfPoolableManager;)Landroid/util/HtcIfPool;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/util/HtcIfPoolable",
            "<TT;>;>(",
            "Landroid/util/HtcIfPoolableManager",
            "<TT;>;)",
            "Landroid/util/HtcIfPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, manager:Landroid/util/HtcIfPoolableManager;,"Landroid/util/HtcIfPoolableManager<TT;>;"
    check-cast p0, Landroid/util/PoolableManager;

    .end local p0           #manager:Landroid/util/HtcIfPoolableManager;,"Landroid/util/HtcIfPoolableManager<TT;>;"
    invoke-static {p0}, Landroid/util/Pools;->simplePool(Landroid/util/PoolableManager;)Landroid/util/Pool;

    move-result-object v0

    check-cast v0, Landroid/util/HtcIfPool;

    return-object v0
.end method

.method public static synchronizedPool(Landroid/util/HtcIfPool;)Landroid/util/HtcIfPool;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/util/HtcIfPoolable",
            "<TT;>;>(",
            "Landroid/util/HtcIfPool",
            "<TT;>;)",
            "Landroid/util/HtcIfPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, pool:Landroid/util/HtcIfPool;,"Landroid/util/HtcIfPool<TT;>;"
    check-cast p0, Landroid/util/Pool;

    .end local p0           #pool:Landroid/util/HtcIfPool;,"Landroid/util/HtcIfPool<TT;>;"
    invoke-static {p0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    check-cast v0, Landroid/util/HtcIfPool;

    return-object v0
.end method

.method public static synchronizedPool(Landroid/util/HtcIfPool;Ljava/lang/Object;)Landroid/util/HtcIfPool;
    .locals 1
    .parameter
    .parameter "lock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/util/HtcIfPoolable",
            "<TT;>;>(",
            "Landroid/util/HtcIfPool",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/HtcIfPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, pool:Landroid/util/HtcIfPool;,"Landroid/util/HtcIfPool<TT;>;"
    check-cast p0, Landroid/util/Pool;

    .end local p0           #pool:Landroid/util/HtcIfPool;,"Landroid/util/HtcIfPool<TT;>;"
    invoke-static {p0, p1}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;Ljava/lang/Object;)Landroid/util/Pool;

    move-result-object v0

    check-cast v0, Landroid/util/HtcIfPool;

    return-object v0
.end method
