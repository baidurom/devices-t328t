.class Lcom/htc/widget/LinearPage$ScrollRunnable;
.super Ljava/lang/Object;
.source "LinearPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/LinearPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollRunnable"
.end annotation


# static fields
.field static final LAUNCH_DELAY:I = 0x258


# instance fields
.field mCacheAdded:Z

.field mCurrentAmount:I

.field mCurrentMove:I

.field mDuration:I

.field mFirstRun:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mNeedToCache:Z

.field mRight:Z

.field mScaleAmount:I

.field mScaleIndex:I

.field mScalePage:Z

.field mScrollDistance:I

.field mStartTime:J

.field mThreadPriority:I

.field final synthetic this$0:Lcom/htc/widget/LinearPage;


# direct methods
.method public constructor <init>(Lcom/htc/widget/LinearPage;)V
    .locals 1
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 410
    return-void
.end method


# virtual methods
.method endScroll()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/LinearPage;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/LinearPage;->access$300(Lcom/htc/widget/LinearPage;Z)V

    .line 613
    iget-object v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/widget/LinearPage;->mScrollMode:I

    .line 614
    iget-object v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget-boolean v1, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mRight:Z

    #calls: Lcom/htc/widget/LinearPage;->reportScrollStateChange(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/LinearPage;->access$400(Lcom/htc/widget/LinearPage;Z)V

    .line 615
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    .line 500
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget v12, v12, Lcom/htc/widget/LinearPage;->mScrollMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 608
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    invoke-virtual {v12}, Lcom/htc/widget/LinearPage;->getChildCount()I

    move-result v12

    if-nez v12, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage$ScrollRunnable;->endScroll()V

    goto :goto_0

    .line 509
    :cond_1
    iget-boolean v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mNeedToCache:Z

    if-eqz v12, :cond_2

    .line 510
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mNeedToCache:Z

    .line 512
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget-object v12, v12, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget-object v12, v12, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v12}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 513
    const-string v12, "LinearPage"

    const-string v13, "run() bitmap isn\'t null, add cached view "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    invoke-virtual {v12}, Lcom/htc/widget/LinearPage;->getChildCount()I

    move-result v0

    .line 515
    .local v0, childNum:I
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    add-int/lit8 v13, v0, -0x1

    invoke-virtual {v12, v13}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 516
    .local v11, v:Landroid/view/View;
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget-object v12, v12, Lcom/htc/widget/LinearPage;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v11, v12}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 517
    new-instance v1, Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    #getter for: Lcom/htc/widget/LinearPage;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/widget/LinearPage;->access$200(Lcom/htc/widget/LinearPage;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 518
    .local v1, im:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget-object v12, v12, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v12}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget-object v12, v12, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v12}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v2, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 521
    .local v2, imlp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget-object v12, v12, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v12}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 522
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 524
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mCacheAdded:Z

    .line 525
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    add-int/lit8 v13, v0, -0x1

    invoke-virtual {v12, v1, v13}, Lcom/htc/widget/LinearPage;->addView(Landroid/view/View;I)V

    .line 532
    .end local v0           #childNum:I
    .end local v1           #im:Landroid/widget/ImageView;
    .end local v2           #imlp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #v:Landroid/view/View;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 533
    .local v8, now:J
    iget-wide v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mStartTime:J

    sub-long v12, v8, v12

    long-to-float v12, v12

    iget v13, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mDuration:I

    int-to-float v13, v13

    div-float v10, v12, v13

    .line 535
    .local v10, ratio:F
    const/high16 v12, 0x3f80

    cmpg-float v12, v10, v12

    if-gez v12, :cond_6

    .line 536
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v12, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 553
    .local v6, movementRatio:F
    iget-boolean v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mFirstRun:Z

    if-eqz v12, :cond_5

    .line 554
    iget-boolean v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mRight:Z

    if-eqz v12, :cond_3

    iget-boolean v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScalePage:Z

    if-eqz v12, :cond_3

    .line 556
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 557
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 558
    .local v7, newLp:Landroid/view/ViewGroup$LayoutParams;
    iget v12, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v12, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 559
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    .end local v4           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v7           #newLp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v5, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScrollDistance:I

    .line 562
    .local v5, movement:I
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mFirstRun:Z

    .line 563
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v13}, Lcom/htc/widget/LinearPage;->scrollBy(II)V

    .line 564
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mCurrentMove:I

    .line 574
    :goto_1
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    const-wide/16 v13, 0x0

    invoke-virtual {v12, p0, v13, v14}, Lcom/htc/widget/LinearPage;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 527
    .end local v5           #movement:I
    .end local v6           #movementRatio:F
    .end local v8           #now:J
    .end local v10           #ratio:F
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage$ScrollRunnable;->endScroll()V

    goto/16 :goto_0

    .line 567
    .restart local v6       #movementRatio:F
    .restart local v8       #now:J
    .restart local v10       #ratio:F
    :cond_5
    iget v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScrollDistance:I

    int-to-float v12, v12

    mul-float/2addr v12, v6

    float-to-int v5, v12

    .line 568
    .restart local v5       #movement:I
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget v13, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mCurrentMove:I

    sub-int v13, v5, v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/htc/widget/LinearPage;->scrollBy(II)V

    .line 569
    iput v5, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mCurrentMove:I

    goto :goto_1

    .line 576
    .end local v5           #movement:I
    .end local v6           #movementRatio:F
    :cond_6
    iget-boolean v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mRight:Z

    if-eqz v12, :cond_7

    iget v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mCurrentMove:I

    iget v13, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScrollDistance:I

    if-gt v12, v13, :cond_8

    :cond_7
    iget-boolean v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mRight:Z

    if-nez v12, :cond_9

    iget v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mCurrentMove:I

    iget v13, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScrollDistance:I

    if-ge v12, v13, :cond_9

    .line 578
    :cond_8
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget v13, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScrollDistance:I

    iget v14, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mCurrentMove:I

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/htc/widget/LinearPage;->scrollBy(II)V

    .line 581
    :cond_9
    iget-boolean v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mCacheAdded:Z

    if-eqz v12, :cond_a

    .line 582
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    invoke-virtual {v12}, Lcom/htc/widget/LinearPage;->getChildCount()I

    move-result v3

    .line 584
    .local v3, lastIndex:I
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v12, v13}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    add-int/lit8 v13, v3, -0x2

    invoke-virtual {v12, v13}, Lcom/htc/widget/LinearPage;->removeViewAt(I)V

    .line 588
    .end local v3           #lastIndex:I
    :cond_a
    iget-boolean v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScalePage:Z

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    invoke-virtual {v12}, Lcom/htc/widget/LinearPage;->getChildCount()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_b

    .line 589
    iget-boolean v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mRight:Z

    if-eqz v12, :cond_c

    .line 591
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 592
    .restart local v4       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget v13, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScaleIndex:I

    invoke-virtual {v12, v13}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 593
    .restart local v7       #newLp:Landroid/view/ViewGroup$LayoutParams;
    iget v12, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v12, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 594
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget v13, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScaleIndex:I

    invoke-virtual {v12, v13}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    .end local v4           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v7           #newLp:Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    :goto_2
    iget v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mThreadPriority:I

    invoke-static {v12}, Landroid/os/Process;->setThreadPriority(I)V

    .line 606
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage$ScrollRunnable;->endScroll()V

    goto/16 :goto_0

    .line 597
    :cond_c
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget-object v13, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    invoke-virtual {v13}, Lcom/htc/widget/LinearPage;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 598
    .restart local v4       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget v13, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScaleIndex:I

    invoke-virtual {v12, v13}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 599
    .restart local v7       #newLp:Landroid/view/ViewGroup$LayoutParams;
    iget v12, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v12, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 600
    iget-object v12, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget v13, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScaleIndex:I

    invoke-virtual {v12, v13}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public startShift(IIZ)V
    .locals 6
    .parameter "distance"
    .parameter "duration"
    .parameter "shouldCacheNext"

    .prologue
    const-wide/16 v4, 0x258

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 418
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mThreadPriority:I

    .line 419
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 421
    iget-object v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    #calls: Lcom/htc/widget/LinearPage;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/LinearPage;->access$000(Lcom/htc/widget/LinearPage;Z)V

    .line 422
    iget-object v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iput v2, v0, Lcom/htc/widget/LinearPage;->mCount:I

    .line 423
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mRight:Z

    .line 424
    iput-boolean v1, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mFirstRun:Z

    .line 425
    iput p2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mDuration:I

    .line 426
    iget-object v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    const/4 v3, 0x2

    iput v3, v0, Lcom/htc/widget/LinearPage;->mScrollMode:I

    .line 429
    iput-boolean v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScalePage:Z

    .line 432
    iget-boolean v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mRight:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mNeedToCache:Z

    .line 433
    iput-boolean v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mCacheAdded:Z

    .line 435
    shr-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScrollDistance:I

    .line 436
    iput v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mCurrentMove:I

    .line 438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mStartTime:J

    .line 439
    iget-boolean v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mRight:Z

    if-eqz v0, :cond_2

    .line 440
    iget-wide v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mStartTime:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mStartTime:J

    .line 441
    iget-object v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    invoke-virtual {v0, p0, v4, v5}, Lcom/htc/widget/LinearPage;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 445
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 423
    goto :goto_0

    :cond_1
    move v1, v2

    .line 432
    goto :goto_1

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    invoke-virtual {v0, p0}, Lcom/htc/widget/LinearPage;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public startShiftAndScale(IIZ)V
    .locals 8
    .parameter "distance"
    .parameter "duration"
    .parameter "shouldCacheNext"

    .prologue
    const-wide/16 v6, 0x258

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 453
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mThreadPriority:I

    .line 454
    const/4 v2, -0x8

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 456
    iget-object v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    #calls: Lcom/htc/widget/LinearPage;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v2, v3}, Lcom/htc/widget/LinearPage;->access$100(Lcom/htc/widget/LinearPage;Z)V

    .line 457
    iget-object v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iput v4, v2, Lcom/htc/widget/LinearPage;->mCount:I

    .line 458
    if-lez p1, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mRight:Z

    .line 459
    iput-boolean v3, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mFirstRun:Z

    .line 460
    iput p2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mDuration:I

    .line 461
    iget-object v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iput v5, v2, Lcom/htc/widget/LinearPage;->mScrollMode:I

    .line 464
    iget-boolean v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mRight:Z

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mNeedToCache:Z

    .line 465
    iput-boolean v4, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mCacheAdded:Z

    .line 467
    shr-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScrollDistance:I

    .line 468
    iput v4, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mCurrentMove:I

    .line 471
    iget-object v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    invoke-virtual {v2}, Lcom/htc/widget/LinearPage;->getChildCount()I

    move-result v0

    .line 472
    .local v0, childNum:I
    if-le v0, v5, :cond_3

    .line 474
    iput-boolean v3, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScalePage:Z

    .line 475
    iput v3, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScaleIndex:I

    .line 477
    iget-boolean v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mRight:Z

    if-eqz v2, :cond_2

    move v1, v4

    .line 478
    .local v1, scaleTo:I
    :goto_2
    iget-object v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    iget v3, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScaleIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    invoke-virtual {v3, v1}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScaleAmount:I

    .line 481
    iput v4, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mCurrentAmount:I

    .line 486
    .end local v1           #scaleTo:I
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mStartTime:J

    .line 487
    iget-boolean v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mRight:Z

    if-eqz v2, :cond_4

    .line 488
    iget-wide v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mStartTime:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mStartTime:J

    .line 489
    iget-object v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    invoke-virtual {v2, p0, v6, v7}, Lcom/htc/widget/LinearPage;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    :goto_4
    return-void

    .end local v0           #childNum:I
    :cond_0
    move v2, v4

    .line 458
    goto :goto_0

    :cond_1
    move v2, v4

    .line 464
    goto :goto_1

    .line 477
    .restart local v0       #childNum:I
    :cond_2
    add-int/lit8 v1, v0, -0x1

    goto :goto_2

    .line 483
    :cond_3
    iput-boolean v4, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->mScalePage:Z

    goto :goto_3

    .line 491
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/LinearPage$ScrollRunnable;->this$0:Lcom/htc/widget/LinearPage;

    invoke-virtual {v2, p0}, Lcom/htc/widget/LinearPage;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method
