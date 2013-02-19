.class Lcom/htc/fragment/widget/Gallery2$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/Gallery2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/fragment/widget/Gallery2;


# direct methods
.method public constructor <init>(Lcom/htc/fragment/widget/Gallery2;)V
    .locals 2
    .parameter

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1747
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/htc/fragment/widget/Gallery2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1748
    return-void
.end method

.method static synthetic access$100(Lcom/htc/fragment/widget/Gallery2$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2
    .parameter "scrollIntoSlots"

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1801
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    #calls: Lcom/htc/fragment/widget/Gallery2;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/htc/fragment/widget/Gallery2;->access$400(Lcom/htc/fragment/widget/Gallery2;)V

    .line 1802
    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/Gallery2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1753
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1810
    iget-object v5, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    iget v5, v5, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    if-nez v5, :cond_0

    .line 1811
    invoke-direct {p0, v7}, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->endFling(Z)V

    .line 1849
    :goto_0
    return-void

    .line 1815
    :cond_0
    iget-object v5, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    const/4 v6, 0x0

    #setter for: Lcom/htc/fragment/widget/Gallery2;->mShouldStopFling:Z
    invoke-static {v5, v6}, Lcom/htc/fragment/widget/Gallery2;->access$502(Lcom/htc/fragment/widget/Gallery2;Z)Z

    .line 1817
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1818
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1819
    .local v1, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1823
    .local v4, x:I
    iget v5, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->mLastFlingX:I

    sub-int v0, v5, v4

    .line 1826
    .local v0, delta:I
    if-lez v0, :cond_1

    .line 1828
    iget-object v5, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    iget v6, v6, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    #setter for: Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I
    invoke-static {v5, v6}, Lcom/htc/fragment/widget/Gallery2;->access$602(Lcom/htc/fragment/widget/Gallery2;I)I

    .line 1831
    iget-object v5, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/Gallery2;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    #getter for: Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/fragment/widget/Gallery2;->access$700(Lcom/htc/fragment/widget/Gallery2;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    #getter for: Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/fragment/widget/Gallery2;->access$800(Lcom/htc/fragment/widget/Gallery2;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1841
    :goto_1
    iget-object v5, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-virtual {v5, v0}, Lcom/htc/fragment/widget/Gallery2;->trackMotionScroll(I)V

    .line 1843
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    #getter for: Lcom/htc/fragment/widget/Gallery2;->mShouldStopFling:Z
    invoke-static {v5}, Lcom/htc/fragment/widget/Gallery2;->access$500(Lcom/htc/fragment/widget/Gallery2;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1844
    iput v4, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->mLastFlingX:I

    .line 1845
    iget-object v5, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-virtual {v5, p0}, Lcom/htc/fragment/widget/Gallery2;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1834
    :cond_1
    iget-object v5, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/Gallery2;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 1835
    .local v2, offsetToLast:I
    iget-object v5, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    iget v6, v6, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v2

    #setter for: Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I
    invoke-static {v5, v6}, Lcom/htc/fragment/widget/Gallery2;->access$602(Lcom/htc/fragment/widget/Gallery2;I)I

    .line 1838
    iget-object v5, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/Gallery2;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    #getter for: Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/fragment/widget/Gallery2;->access$900(Lcom/htc/fragment/widget/Gallery2;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    #getter for: Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/fragment/widget/Gallery2;->access$1000(Lcom/htc/fragment/widget/Gallery2;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 1847
    .end local v2           #offsetToLast:I
    :cond_2
    invoke-direct {p0, v7}, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1776
    if-nez p1, :cond_0

    .line 1783
    :goto_0
    return-void

    .line 1778
    :cond_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->startCommon()V

    .line 1780
    iput v1, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->mLastFlingX:I

    .line 1781
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    #getter for: Lcom/htc/fragment/widget/Gallery2;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/fragment/widget/Gallery2;->access$300(Lcom/htc/fragment/widget/Gallery2;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1782
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/Gallery2;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 1760
    if-nez p1, :cond_0

    .line 1769
    :goto_0
    return-void

    .line 1762
    :cond_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->startCommon()V

    .line 1764
    if-gez p1, :cond_1

    move v1, v6

    .line 1765
    .local v1, initialX:I
    :goto_1
    iput v1, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->mLastFlingX:I

    .line 1766
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1768
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/Gallery2;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1           #initialX:I
    :cond_1
    move v1, v2

    .line 1764
    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/Gallery2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1791
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->endFling(Z)V

    .line 1792
    return-void
.end method
