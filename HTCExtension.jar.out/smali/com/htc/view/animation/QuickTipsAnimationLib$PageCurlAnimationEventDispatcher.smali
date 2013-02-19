.class Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;
.super Ljava/lang/Object;
.source "QuickTipsAnimationLib.java"

# interfaces
.implements Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/animation/QuickTipsAnimationLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageCurlAnimationEventDispatcher"
.end annotation


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;->listeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/view/animation/QuickTipsAnimationLib$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public addPageCurlAnimationListener(Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public onPageCurlAnimationEnd()V
    .locals 3

    .prologue
    .line 103
    iget-object v2, p0, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;

    .line 104
    .local v1, listener:Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;
    invoke-interface {v1}, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;->onPageCurlAnimationEnd()V

    goto :goto_0

    .line 106
    .end local v1           #listener:Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;
    :cond_0
    return-void
.end method

.method public onPageCurlAnimationStart()V
    .locals 3

    .prologue
    .line 92
    iget-object v2, p0, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;

    .line 93
    .local v1, listener:Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;
    invoke-interface {v1}, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;->onPageCurlAnimationStart()V

    goto :goto_0

    .line 95
    .end local v1           #listener:Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;
    :cond_0
    return-void
.end method

.method public removePageCurlAnimationListener(Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationEventDispatcher;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method
