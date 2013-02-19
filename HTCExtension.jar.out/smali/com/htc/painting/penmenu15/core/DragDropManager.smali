.class public Lcom/htc/painting/penmenu15/core/DragDropManager;
.super Ljava/lang/Object;
.source "DragDropManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/core/DragDropManager;->mListeners:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public addDragViewListener(Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/DragDropManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    return-void
.end method

.method public endDrag()V
    .locals 3

    .prologue
    .line 52
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/DragDropManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;

    .line 53
    .local v1, list:Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;
    invoke-interface {v1}, Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;->onEndDrag()V

    goto :goto_0

    .line 55
    .end local v1           #list:Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;
    :cond_0
    return-void
.end method

.method public removeDragViewListener(Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/DragDropManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
.end method

.method public startDrag()V
    .locals 3

    .prologue
    .line 41
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/DragDropManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;

    .line 42
    .local v1, list:Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;
    invoke-interface {v1}, Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;->onStartDrag()V

    goto :goto_0

    .line 44
    .end local v1           #list:Lcom/htc/painting/penmenu15/core/DragDropManager$DragViewListener;
    :cond_0
    return-void
.end method
