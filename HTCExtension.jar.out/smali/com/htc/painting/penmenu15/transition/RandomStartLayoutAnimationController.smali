.class public Lcom/htc/painting/penmenu15/transition/RandomStartLayoutAnimationController;
.super Landroid/view/animation/LayoutAnimationController;
.source "RandomStartLayoutAnimationController.java"


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 21
    return-void
.end method


# virtual methods
.method protected getDelayForView(Landroid/view/View;)J
    .locals 5
    .parameter "view"

    .prologue
    .line 30
    iget-object v2, p0, Lcom/htc/painting/penmenu15/transition/RandomStartLayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-eqz v2, :cond_0

    .line 31
    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget-object v3, p0, Lcom/htc/painting/penmenu15/transition/RandomStartLayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 32
    .local v0, result:J
    const-string v2, "PenMenuNew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "randomized to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .end local v0           #result:J
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
