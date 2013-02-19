.class Lcom/htc/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mFrom:I

.field private mIsPartialFling:Z

.field mIsRequiredFill:Z

.field private mLastFlingXY:I

.field private mPartialScroller:Landroid/widget/Scroller;

.field private mScroller:Landroid/widget/Scroller;

.field private mTo:I

.field final synthetic this$0:Lcom/htc/widget/Gallery;


# direct methods
.method public constructor <init>(Lcom/htc/widget/Gallery;)V
    .locals 3
    .parameter

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1594
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    .line 1603
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/htc/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1604
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 1605
    .local v0, interpreter:Landroid/view/animation/LinearInterpolator;
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/htc/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    .line 1606
    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1587
    invoke-direct {p0, p1}, Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method private endFling(Z)V
    .locals 10
    .parameter "scrollIntoSlots"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1711
    iget-boolean v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-eqz v4, :cond_3

    .line 1713
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->mIsForceStop:Z
    invoke-static {v4}, Lcom/htc/widget/Gallery;->access$400(Lcom/htc/widget/Gallery;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1715
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->isPortrait:Z
    invoke-static {v4}, Lcom/htc/widget/Gallery;->access$200(Lcom/htc/widget/Gallery;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1717
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalX()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getStartX()I

    move-result v5

    sub-int v2, v4, v5

    .line 1718
    .local v2, fullDeltaX:I
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalX()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v0, v2, v4

    .line 1720
    .local v0, deltaX:I
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mFrom:I

    iget v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mTo:I

    iget-boolean v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsRequiredFill:Z

    invoke-virtual {v4, v5, v6, v0, v7}, Lcom/htc/widget/Gallery;->trackMotionScroll(IIIZ)V

    .line 1730
    .end local v0           #deltaX:I
    .end local v2           #fullDeltaX:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v9}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1735
    :goto_1
    iget-boolean v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-eqz v4, :cond_1

    .line 1737
    iput-boolean v8, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    .line 1738
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v4}, Lcom/htc/widget/Gallery;->onAnimationEnd()V

    .line 1740
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget-boolean v4, v4, Lcom/htc/widget/Gallery;->mNeedModify:Z

    if-eqz v4, :cond_1

    .line 1742
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v5, v4, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v6, v6, Lcom/htc/widget/Gallery;->mDetachCounter:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 1743
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iput-boolean v8, v4, Lcom/htc/widget/Gallery;->mNeedModify:Z

    .line 1746
    :cond_1
    iput-boolean v8, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsRequiredFill:Z

    .line 1747
    return-void

    .line 1724
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalY()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getStartY()I

    move-result v5

    sub-int v3, v4, v5

    .line 1725
    .local v3, fullDeltaY:I
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalY()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v1, v3, v4

    .line 1727
    .local v1, deltaY:I
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mFrom:I

    iget v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mTo:I

    iget-boolean v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsRequiredFill:Z

    invoke-virtual {v4, v5, v6, v1, v7}, Lcom/htc/widget/Gallery;->trackMotionScroll(IIIZ)V

    goto :goto_0

    .line 1733
    .end local v1           #deltaY:I
    .end local v3           #fullDeltaY:I
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v9}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1611
    return-void
.end method


# virtual methods
.method public isPartialFling()Z
    .locals 1

    .prologue
    .line 1668
    iget-boolean v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1755
    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v6, v6, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-nez v6, :cond_0

    .line 1756
    invoke-direct {p0, v10}, Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1812
    :goto_0
    return-void

    .line 1760
    :cond_0
    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    const/4 v7, 0x0

    #setter for: Lcom/htc/widget/Gallery;->mShouldStopFling:Z
    invoke-static {v6, v7}, Lcom/htc/widget/Gallery;->access$502(Lcom/htc/widget/Gallery;Z)Z

    .line 1763
    iget-boolean v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-eqz v6, :cond_2

    .line 1764
    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    .line 1768
    .local v5, scroller:Landroid/widget/Scroller;
    :goto_1
    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 1771
    .local v2, more:Z
    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->isPortrait:Z
    invoke-static {v6}, Lcom/htc/widget/Gallery;->access$200(Lcom/htc/widget/Gallery;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 1772
    .local v1, loc:I
    :goto_2
    iget v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mLastFlingXY:I

    sub-int v0, v6, v1

    .line 1775
    .local v0, delta:I
    if-lez v0, :cond_5

    .line 1777
    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget-object v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v7, v7, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    #setter for: Lcom/htc/widget/Gallery;->mDownTouchPosition:I
    invoke-static {v6, v7}, Lcom/htc/widget/Gallery;->access$602(Lcom/htc/widget/Gallery;I)I

    .line 1780
    iget-boolean v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-nez v6, :cond_1

    .line 1782
    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->isPortrait:Z
    invoke-static {v6}, Lcom/htc/widget/Gallery;->access$200(Lcom/htc/widget/Gallery;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v6}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I
    invoke-static {v7}, Lcom/htc/widget/Gallery;->access$700(Lcom/htc/widget/Gallery;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingRight:I
    invoke-static {v7}, Lcom/htc/widget/Gallery;->access$800(Lcom/htc/widget/Gallery;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v4, v6, -0x1

    .line 1783
    .local v4, pageLength:I
    :goto_3
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1799
    .end local v4           #pageLength:I
    :cond_1
    :goto_4
    iget-boolean v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-nez v6, :cond_7

    .line 1800
    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v6, v0}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    .line 1806
    :goto_5
    if-eqz v2, :cond_8

    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->mShouldStopFling:Z
    invoke-static {v6}, Lcom/htc/widget/Gallery;->access$500(Lcom/htc/widget/Gallery;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1807
    iput v1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mLastFlingXY:I

    .line 1808
    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v6, p0}, Lcom/htc/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1766
    .end local v0           #delta:I
    .end local v1           #loc:I
    .end local v2           #more:Z
    .end local v5           #scroller:Landroid/widget/Scroller;
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .restart local v5       #scroller:Landroid/widget/Scroller;
    goto :goto_1

    .line 1771
    .restart local v2       #more:Z
    :cond_3
    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    goto :goto_2

    .line 1782
    .restart local v0       #delta:I
    .restart local v1       #loc:I
    :cond_4
    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v6}, Lcom/htc/widget/Gallery;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingTop:I
    invoke-static {v7}, Lcom/htc/widget/Gallery;->access$900(Lcom/htc/widget/Gallery;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I
    invoke-static {v7}, Lcom/htc/widget/Gallery;->access$1000(Lcom/htc/widget/Gallery;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v4, v6, -0x1

    goto :goto_3

    .line 1788
    :cond_5
    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v6}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 1789
    .local v3, offsetToLast:I
    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget-object v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v7, v7, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v3

    #setter for: Lcom/htc/widget/Gallery;->mDownTouchPosition:I
    invoke-static {v6, v7}, Lcom/htc/widget/Gallery;->access$602(Lcom/htc/widget/Gallery;I)I

    .line 1792
    iget-boolean v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-nez v6, :cond_1

    .line 1794
    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->isPortrait:Z
    invoke-static {v6}, Lcom/htc/widget/Gallery;->access$200(Lcom/htc/widget/Gallery;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v6}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I
    invoke-static {v7}, Lcom/htc/widget/Gallery;->access$1100(Lcom/htc/widget/Gallery;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingRight:I
    invoke-static {v7}, Lcom/htc/widget/Gallery;->access$1200(Lcom/htc/widget/Gallery;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    neg-int v4, v6

    .line 1795
    .restart local v4       #pageLength:I
    :goto_6
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4

    .line 1794
    .end local v4           #pageLength:I
    :cond_6
    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v6}, Lcom/htc/widget/Gallery;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingTop:I
    invoke-static {v7}, Lcom/htc/widget/Gallery;->access$1300(Lcom/htc/widget/Gallery;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I
    invoke-static {v7}, Lcom/htc/widget/Gallery;->access$1400(Lcom/htc/widget/Gallery;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    neg-int v4, v6

    goto :goto_6

    .line 1802
    .end local v3           #offsetToLast:I
    :cond_7
    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mFrom:I

    iget v8, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mTo:I

    iget-boolean v9, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsRequiredFill:Z

    invoke-virtual {v6, v7, v8, v0, v9}, Lcom/htc/widget/Gallery;->trackMotionScroll(IIIZ)V

    goto/16 :goto_5

    .line 1810
    :cond_8
    invoke-direct {p0, v10}, Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startPartialUsingDistance(IIIZ)V
    .locals 7
    .parameter "from"
    .parameter "to"
    .parameter "distance"
    .parameter "isRequiredFill"

    .prologue
    const/16 v5, 0x1f4

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1676
    if-nez p3, :cond_0

    .line 1696
    :goto_0
    return-void

    .line 1679
    :cond_0
    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1680
    iput-boolean v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    .line 1681
    iput-boolean p4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsRequiredFill:Z

    .line 1682
    invoke-direct {p0}, Lcom/htc/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1684
    iput v1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mLastFlingXY:I

    .line 1685
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->isPortrait:Z
    invoke-static {v0}, Lcom/htc/widget/Gallery;->access$200(Lcom/htc/widget/Gallery;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1686
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    neg-int v3, p3

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1690
    :goto_1
    iput p2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mTo:I

    .line 1691
    iput p1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mFrom:I

    .line 1692
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iput v1, v0, Lcom/htc/widget/Gallery;->mDetachCounter:I

    .line 1694
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iput-boolean v6, v0, Lcom/htc/widget/Gallery;->mNeedModify:Z

    .line 1695
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1688
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    neg-int v4, p3

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1
.end method

.method public startUsingDistance(I)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1647
    iget-boolean v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-eqz v0, :cond_1

    .line 1662
    :cond_0
    :goto_0
    return-void

    .line 1650
    :cond_1
    if-eqz p1, :cond_0

    .line 1653
    invoke-direct {p0}, Lcom/htc/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1655
    iput v1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mLastFlingXY:I

    .line 1656
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->isPortrait:Z
    invoke-static {v0}, Lcom/htc/widget/Gallery;->access$200(Lcom/htc/widget/Gallery;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1657
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/widget/Gallery;->access$300(Lcom/htc/widget/Gallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1661
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1659
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v4, p1

    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/widget/Gallery;->access$300(Lcom/htc/widget/Gallery;)I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1
.end method

.method public startUsingVelocity(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-eqz v0, :cond_1

    .line 1639
    :cond_0
    :goto_0
    return-void

    .line 1625
    :cond_1
    if-eqz p1, :cond_0

    .line 1628
    invoke-direct {p0}, Lcom/htc/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1630
    if-gez p1, :cond_2

    const v1, 0x7fffffff

    .line 1631
    .local v1, initialLoc:I
    :goto_1
    iput v1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mLastFlingXY:I

    .line 1633
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->isPortrait:Z
    invoke-static {v0}, Lcom/htc/widget/Gallery;->access$200(Lcom/htc/widget/Gallery;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1634
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1638
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1630
    .end local v1           #initialLoc:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1636
    .restart local v1       #initialLoc:I
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const v10, 0x7fffffff

    move v4, v1

    move v6, p1

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_2
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1705
    invoke-direct {p0, p1}, Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1706
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget-object v0, v0, Lcom/htc/widget/Gallery;->mDragger:Lcom/htc/widget/DragController;

    check-cast v0, Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->getDropAnimationRunnable()Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    .line 1707
    return-void
.end method
