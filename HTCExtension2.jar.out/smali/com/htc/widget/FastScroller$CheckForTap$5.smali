.class Lcom/htc/widget/FastScroller$CheckForTap$5;
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
    .line 1573
    iput-object p1, p0, Lcom/htc/widget/FastScroller$CheckForTap$5;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "anim"

    .prologue
    const/4 v1, 0x0

    .line 1584
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CheckForTap$5;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;
    invoke-static {v0}, Lcom/htc/widget/FastScroller$CheckForTap;->access$2100(Lcom/htc/widget/FastScroller$CheckForTap;)Lcom/htc/widget/CarouselTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CheckForTap$5;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/widget/CarouselTextView;
    invoke-static {v0}, Lcom/htc/widget/FastScroller$CheckForTap;->access$2100(Lcom/htc/widget/FastScroller$CheckForTap;)Lcom/htc/widget/CarouselTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselTextView;->enableClickMultiply(Z)V

    .line 1587
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CheckForTap$5;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #setter for: Lcom/htc/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v0, v1}, Lcom/htc/widget/FastScroller;->access$1202(Lcom/htc/widget/FastScroller;Z)Z

    .line 1588
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CheckForTap$5;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->isSkipAnimation:Z
    invoke-static {v0}, Lcom/htc/widget/FastScroller;->access$2200(Lcom/htc/widget/FastScroller;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1590
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CheckForTap$5;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 1591
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CheckForTap$5;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    iget-object v0, v0, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;
    invoke-static {v0}, Lcom/htc/widget/FastScroller;->access$1400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForTap$5;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/widget/FastScroller$CheckForTap;->scrollYRecord:I
    invoke-static {v1}, Lcom/htc/widget/FastScroller$CheckForTap;->access$3200(Lcom/htc/widget/FastScroller$CheckForTap;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$CheckForTap$5;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/widget/FastScroller$CheckForTap;->alignmentRecord:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller$CheckForTap;->access$2400(Lcom/htc/widget/FastScroller$CheckForTap;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/FastScroller$CheckForTap$5;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    iget-object v3, v3, Lcom/htc/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingTop:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$3000(Lcom/htc/widget/FastScroller;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/FastScroller$CheckForTap$5;->this$1:Lcom/htc/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/widget/FastScroller$CheckForTap;->posRecord:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller$CheckForTap;->access$2500(Lcom/htc/widget/FastScroller$CheckForTap;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 1593
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 1578
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 1575
    return-void
.end method
