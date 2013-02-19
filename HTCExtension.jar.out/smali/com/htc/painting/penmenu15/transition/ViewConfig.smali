.class public Lcom/htc/painting/penmenu15/transition/ViewConfig;
.super Ljava/lang/Object;
.source "ViewConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/transition/ViewConfig$1;,
        Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;
    }
.end annotation


# instance fields
.field public final mId:I

.field private mTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig;->mTable:Ljava/util/HashMap;

    .line 27
    iput p1, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig;->mId:I

    .line 28
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig;->mTable:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig;->mTable:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig;->mTable:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private playEffect(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;Z)V
    .locals 2
    .parameter "viewRow"
    .parameter "nowVisible"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, effect:Landroid/view/animation/Animation;
    if-eqz p2, :cond_1

    .line 102
    #getter for: Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mInEffect:Landroid/view/animation/Animation;
    invoke-static {p1}, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->access$200(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 107
    :goto_0
    if-eqz v0, :cond_0

    .line 108
    #getter for: Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->access$100(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 109
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 110
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 112
    :cond_0
    return-void

    .line 104
    :cond_1
    #getter for: Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mOutEffect:Landroid/view/animation/Animation;
    invoke-static {p1}, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->access$300(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method private playTransition(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;IIZ)V
    .locals 4
    .parameter "viewRow"
    .parameter "oldVisibitility"
    .parameter "visibility"
    .parameter "playAnimation"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 76
    if-nez p2, :cond_1

    move v2, v0

    .line 77
    .local v2, wasVisible:Z
    :goto_0
    if-nez p3, :cond_2

    .line 79
    .local v0, nowVisible:Z
    :goto_1
    if-ne v2, v0, :cond_3

    .line 97
    :cond_0
    :goto_2
    return-void

    .end local v0           #nowVisible:Z
    .end local v2           #wasVisible:Z
    :cond_1
    move v2, v3

    .line 76
    goto :goto_0

    .restart local v2       #wasVisible:Z
    :cond_2
    move v0, v3

    .line 77
    goto :goto_1

    .line 81
    .restart local v0       #nowVisible:Z
    :cond_3
    const/4 v1, 0x0

    .line 82
    .local v1, transition:Lcom/htc/painting/penmenu15/transition/Transitionable;
    #getter for: Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->access$100(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/painting/penmenu15/transition/Transitionable;

    if-eqz v3, :cond_4

    .line 83
    #getter for: Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->access$100(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;)Landroid/view/View;

    move-result-object v1

    .end local v1           #transition:Lcom/htc/painting/penmenu15/transition/Transitionable;
    check-cast v1, Lcom/htc/painting/penmenu15/transition/Transitionable;

    .line 87
    .restart local v1       #transition:Lcom/htc/painting/penmenu15/transition/Transitionable;
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 88
    invoke-interface {v1}, Lcom/htc/painting/penmenu15/transition/Transitionable;->onTransitionIn()V

    .line 91
    :cond_5
    if-eqz p4, :cond_6

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->playEffect(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;Z)V

    .line 94
    :cond_6
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 95
    invoke-interface {v1}, Lcom/htc/painting/penmenu15/transition/Transitionable;->onTransitionOut()V

    goto :goto_2
.end method

.method private setVisibility(Ljava/util/List;IZ)V
    .locals 4
    .parameter
    .parameter "visibility"
    .parameter "playAnimation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;

    .line 67
    .local v2, row:Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;
    #getter for: Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->access$100(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 68
    .local v1, oldVisibitility:I
    if-eq v1, p2, :cond_0

    .line 69
    #getter for: Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->access$100(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-direct {p0, v2, v1, p2, p3}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->playTransition(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;IIZ)V

    goto :goto_0

    .line 73
    .end local v1           #oldVisibitility:I
    .end local v2           #row:Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 6
    .parameter "view"
    .parameter "visibility"
    .parameter "in"
    .parameter "out"

    .prologue
    .line 43
    new-instance v0, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;-><init>(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;Lcom/htc/painting/penmenu15/transition/ViewConfig$1;)V

    .line 44
    .local v0, row:Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig;->mTable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public enforceConfig(Z)V
    .locals 8
    .parameter "playAnimation"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 53
    iget-object v3, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig;->mTable:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 54
    .local v2, visibleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;>;"
    invoke-direct {p0, v2, v5, p1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->setVisibility(Ljava/util/List;IZ)V

    .line 57
    iget-object v3, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig;->mTable:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 58
    .local v1, invisibleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;>;"
    invoke-direct {p0, v1, v6, p1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->setVisibility(Ljava/util/List;IZ)V

    .line 61
    iget-object v3, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig;->mTable:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 62
    .local v0, goneList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;>;"
    invoke-direct {p0, v0, v7, p1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->setVisibility(Ljava/util/List;IZ)V

    .line 63
    return-void
.end method
