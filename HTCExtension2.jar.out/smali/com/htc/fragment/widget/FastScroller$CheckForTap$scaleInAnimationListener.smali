.class final Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/FastScroller$CheckForTap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "scaleInAnimationListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)V
    .locals 0
    .parameter

    .prologue
    .line 1458
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/FastScroller$CheckForTap;Lcom/htc/fragment/widget/FastScroller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1458
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;-><init>(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/fragment/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->access$1600(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    iget-object v1, v1, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1489
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 1484
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "anim"

    .prologue
    const/4 v4, 0x1

    .line 1466
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/fragment/widget/FastScroller$CheckForTap;->mClickAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->access$1100(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->access$1200(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Lcom/htc/fragment/widget/CarouselTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->access$1200(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Lcom/htc/fragment/widget/CarouselTextView;

    move-result-object v1

    const/16 v2, 0x5dd

    const-string v3, "CAROUSEL_CLICK_ITEM"

    invoke-static {v4, v1, v2, v3}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v1

    #setter for: Lcom/htc/fragment/widget/FastScroller$CheckForTap;->mClickAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->access$1102(Lcom/htc/fragment/widget/FastScroller$CheckForTap;Lcom/htc/utils/perf/FramerateMonitor;)Lcom/htc/utils/perf/FramerateMonitor;

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/fragment/widget/FastScroller$CheckForTap;->mClickAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->access$1100(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1469
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/fragment/widget/FastScroller$CheckForTap;->mClickAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->access$1100(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 1471
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v1, 0x0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->isSkipAnimation:Z
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->access$1302(Lcom/htc/fragment/widget/FastScroller;Z)Z

    .line 1472
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #setter for: Lcom/htc/fragment/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v0, v4}, Lcom/htc/fragment/widget/FastScroller;->access$1402(Lcom/htc/fragment/widget/FastScroller;Z)Z

    .line 1475
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->access$1200(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Lcom/htc/fragment/widget/CarouselTextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1476
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleInAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->access$1200(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Lcom/htc/fragment/widget/CarouselTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/fragment/widget/CarouselTextView;->enableClickMultiply(Z)V

    .line 1477
    :cond_2
    return-void
.end method
