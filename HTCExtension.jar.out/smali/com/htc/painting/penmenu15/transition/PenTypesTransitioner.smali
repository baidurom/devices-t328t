.class public Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;
.super Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;
.source "PenTypesTransitioner.java"


# instance fields
.field private mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

.field private mChildIn:Landroid/view/animation/Animation;

.field private mChildInController:Lcom/htc/painting/penmenu15/transition/RandomStartLayoutAnimationController;

.field private mChildOut:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Lcom/htc/painting/penmenu15/view/PenTypeAdapter;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "target"
    .parameter "in"
    .parameter "out"
    .parameter "adapter"
    .parameter "childIn"
    .parameter "childOut"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 24
    iput-object p4, p0, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    .line 25
    iput-object p5, p0, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->mChildIn:Landroid/view/animation/Animation;

    .line 26
    iput-object p6, p0, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->mChildOut:Landroid/view/animation/Animation;

    .line 27
    new-instance v0, Lcom/htc/painting/penmenu15/transition/RandomStartLayoutAnimationController;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->mChildIn:Landroid/view/animation/Animation;

    invoke-direct {v0, v1}, Lcom/htc/painting/penmenu15/transition/RandomStartLayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->mChildInController:Lcom/htc/painting/penmenu15/transition/RandomStartLayoutAnimationController;

    .line 28
    return-void
.end method


# virtual methods
.method public setAdapter(Lcom/htc/painting/penmenu15/view/PenTypeAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    .line 81
    return-void
.end method

.method public startTransition(I)V
    .locals 8
    .parameter "type"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;->startTransition(I)V

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, animation:Landroid/view/animation/Animation;
    const/16 v6, 0x258

    if-ne p1, v6, :cond_2

    .line 39
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->mChildIn:Landroid/view/animation/Animation;

    .line 44
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    .line 46
    iget-object v6, p0, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->mAdapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getAllDrawables()Ljava/util/List;

    move-result-object v4

    .line 47
    .local v4, drawables:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 48
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 49
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    .line 50
    .local v3, drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    if-eqz v3, :cond_1

    .line 51
    iget-object v6, p0, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->mChildInController:Lcom/htc/painting/penmenu15/transition/RandomStartLayoutAnimationController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/painting/penmenu15/transition/RandomStartLayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 52
    .local v1, copy:Landroid/view/animation/Animation;
    invoke-virtual {v3, v1}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->setAnimation(Landroid/view/animation/Animation;)V

    .line 53
    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->start()V

    .line 48
    .end local v1           #copy:Landroid/view/animation/Animation;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 40
    .end local v2           #count:I
    .end local v3           #drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    .end local v4           #drawables:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;>;"
    .end local v5           #i:I
    :cond_2
    const/16 v6, 0x259

    if-ne p1, v6, :cond_0

    .line 41
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/PenTypesTransitioner;->mChildOut:Landroid/view/animation/Animation;

    goto :goto_0

    .line 57
    :cond_3
    return-void
.end method

.method public stopAllTransitions()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public stopTransition(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 65
    return-void
.end method
