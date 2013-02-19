.class public Lcom/htc/view/table/AbstractTableView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbstractTableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/table/AbstractTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final SCROLL_MODE_FLING:I = 0x0

.field private static final SCROLL_MODE_RETURN:I = 0x1


# instance fields
.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mScrollMode:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/view/table/AbstractTableView;


# direct methods
.method public constructor <init>(Lcom/htc/view/table/AbstractTableView;)V
    .locals 2
    .parameter

    .prologue
    .line 3267
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3269
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/htc/view/table/AbstractTableView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 3270
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/view/table/AbstractTableView$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private getAnimationDurationAlongDistance(I)I
    .locals 2
    .parameter "distance"

    .prologue
    .line 3327
    mul-int/lit8 v0, p1, 0xa

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 3278
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v0, p0}, Lcom/htc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3279
    return-void
.end method


# virtual methods
.method public endFling(Z)V
    .locals 2
    .parameter "scrollIntoSlots"

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 3359
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScrollMode:I

    if-nez v0, :cond_0

    .line 3360
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractTableView;->scrollIntoSlots()V

    .line 3365
    :goto_0
    return-void

    .line 3362
    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 3376
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget v6, v6, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-nez v6, :cond_0

    .line 3378
    invoke-virtual {p0, v8}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->endFling(Z)V

    .line 3419
    :goto_0
    return-void

    .line 3382
    :cond_0
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    const/4 v7, 0x0

    #setter for: Lcom/htc/view/table/AbstractTableView;->mShouldStopFling:Z
    invoke-static {v6, v7}, Lcom/htc/view/table/AbstractTableView;->access$1102(Lcom/htc/view/table/AbstractTableView;Z)Z

    .line 3384
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 3385
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 3386
    .local v2, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 3387
    .local v4, x:I
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 3391
    .local v5, y:I
    iget v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingX:I

    sub-int v0, v6, v4

    .line 3392
    .local v0, deltaX:I
    iget v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingY:I

    sub-int v1, v6, v5

    .line 3395
    .local v1, deltaY:I
    if-lez v0, :cond_1

    .line 3397
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/view/table/AbstractTableView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingLeft:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1200(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingRight:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1300(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3402
    :goto_1
    if-lez v1, :cond_2

    .line 3403
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1600(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1700(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3409
    :goto_2
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget-object v6, v6, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v6, v0, v1, v8}, Lcom/htc/view/table/TableColleague;->scrollWithConstrain(IIZ)V

    .line 3411
    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mShouldStopFling:Z
    invoke-static {v6}, Lcom/htc/view/table/AbstractTableView;->access$1100(Lcom/htc/view/table/AbstractTableView;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3412
    iput v4, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingX:I

    .line 3413
    iput v5, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingY:I

    .line 3414
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v6, p0}, Lcom/htc/view/table/AbstractTableView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3400
    :cond_1
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/view/table/AbstractTableView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingRight:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1400(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingLeft:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1500(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    neg-int v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 3406
    :cond_2
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1800(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1900(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    neg-int v6, v6

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 3417
    :cond_3
    invoke-virtual {p0, v8}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(II)V
    .locals 7
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v1, 0x0

    .line 3314
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 3324
    :goto_0
    return-void

    .line 3316
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScrollMode:I

    .line 3317
    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->startCommon()V

    .line 3319
    iput v1, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingX:I

    .line 3320
    iput v1, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingY:I

    .line 3321
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    neg-int v4, p2

    mul-int v2, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v2, v5

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-int v2, v5

    invoke-direct {p0, v2}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->getAnimationDurationAlongDistance(I)I

    move-result v5

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 3322
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v0, p0}, Lcom/htc/view/table/AbstractTableView;->post(Ljava/lang/Runnable;)Z

    .line 3323
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method public startUsingVelocity(II)V
    .locals 9
    .parameter "initialVelocityX"
    .parameter "initialVelocityY"

    .prologue
    const v6, 0x7fffffff

    const/4 v5, 0x0

    .line 3290
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 3303
    :goto_0
    return-void

    .line 3292
    :cond_0
    iput v5, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScrollMode:I

    .line 3293
    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->startCommon()V

    .line 3295
    if-gtz p1, :cond_1

    move v1, v6

    .line 3296
    .local v1, initialX:I
    :goto_1
    if-gtz p2, :cond_2

    move v2, v6

    .line 3297
    .local v2, initialY:I
    :goto_2
    iput v1, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingX:I

    .line 3298
    iput v2, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingY:I

    .line 3299
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 3301
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v0, p0}, Lcom/htc/view/table/AbstractTableView;->post(Ljava/lang/Runnable;)Z

    .line 3302
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/htc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    goto :goto_0

    .end local v1           #initialX:I
    .end local v2           #initialY:I
    :cond_1
    move v1, v5

    .line 3295
    goto :goto_1

    .restart local v1       #initialX:I
    :cond_2
    move v2, v5

    .line 3296
    goto :goto_2
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 3339
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v0, p0}, Lcom/htc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3341
    invoke-virtual {p0, p1}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->endFling(Z)V

    .line 3342
    return-void
.end method
