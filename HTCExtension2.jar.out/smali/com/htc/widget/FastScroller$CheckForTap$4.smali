.class Lcom/htc/widget/FastScroller$CheckForTap$4;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/FastScroller$CheckForTap;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/widget/FastScroller$CheckForTap;


# direct methods
.method constructor <init>(Lcom/htc/widget/FastScroller$CheckForTap;)V
    .locals 0
    .parameter

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/htc/widget/FastScroller$CheckForTap$4;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CheckForTap$4;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/widget/FastScroller$CheckForTap;->animateView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/FastScroller$CheckForTap;->access$2600(Lcom/htc/widget/FastScroller$CheckForTap;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForTap$4;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    iget-object v1, v1, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1501
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 1495
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "anim"

    .prologue
    const/4 v2, 0x1

    .line 1486
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CheckForTap$4;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/FastScroller;->isSkipAnimation:Z
    invoke-static {v0, v1}, Lcom/htc/widget/FastScroller;->access$2202(Lcom/htc/widget/FastScroller;Z)Z

    .line 1487
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CheckForTap$4;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #setter for: Lcom/htc/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v0, v2}, Lcom/htc/widget/FastScroller;->access$1202(Lcom/htc/widget/FastScroller;Z)Z

    .line 1490
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CheckForTap$4;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;
    invoke-static {v0}, Lcom/htc/widget/FastScroller$CheckForTap;->access$2100(Lcom/htc/widget/FastScroller$CheckForTap;)Lcom/htc/widget/CarouselTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CheckForTap$4;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;
    invoke-static {v0}, Lcom/htc/widget/FastScroller$CheckForTap;->access$2100(Lcom/htc/widget/FastScroller$CheckForTap;)Lcom/htc/widget/CarouselTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/CarouselTextView;->enableClickMultiply(Z)V

    .line 1492
    :cond_0
    return-void
.end method
