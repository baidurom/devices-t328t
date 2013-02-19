.class public Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;
.super Ljava/lang/Object;
.source "AnimationTransitioner.java"

# interfaces
.implements Lcom/htc/painting/penmenu15/transition/ViewTransitioner;


# instance fields
.field private mInAnimation:Landroid/view/animation/Animation;

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "target"
    .parameter "in"
    .parameter "out"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;->mTargetView:Landroid/view/View;

    .line 19
    iput-object p2, p0, Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;->mInAnimation:Landroid/view/animation/Animation;

    .line 20
    iput-object p3, p0, Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;->mOutAnimation:Landroid/view/animation/Animation;

    .line 21
    iput-object p1, p0, Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;->mTargetView:Landroid/view/View;

    .line 22
    return-void
.end method


# virtual methods
.method public startTransition(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, animation:Landroid/view/animation/Animation;
    const/16 v1, 0x258

    if-ne p1, v1, :cond_2

    .line 34
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;->mInAnimation:Landroid/view/animation/Animation;

    .line 39
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    iget-object v1, p0, Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 41
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 42
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 44
    :cond_1
    return-void

    .line 35
    :cond_2
    const/16 v1, 0x259

    if-ne p1, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;->mOutAnimation:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method public stopTransition(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, animation:Landroid/view/animation/Animation;
    const/16 v1, 0x258

    if-ne p1, v1, :cond_2

    .line 54
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;->mInAnimation:Landroid/view/animation/Animation;

    .line 59
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 60
    iget-object v1, p0, Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 61
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 62
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 66
    :cond_1
    return-void

    .line 55
    :cond_2
    const/16 v1, 0x259

    if-ne p1, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/AnimationTransitioner;->mOutAnimation:Landroid/view/animation/Animation;

    goto :goto_0
.end method
