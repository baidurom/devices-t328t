.class public Lcom/htc/fragment/widget/CarouselWidget;
.super Lcom/htc/fragment/widget/Gallery;
.source "CarouselWidget.java"

# interfaces
.implements Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;
.implements Lcom/htc/fragment/widget/DragSource;
.implements Lcom/htc/fragment/widget/DropTarget;
.implements Lcom/htc/fragment/widget/DragScroller;


# static fields
.field private static final LOCAL_LOGV:Z


# instance fields
.field final BOTTOM_SCROLL_SPEED:F

.field final LEFT_SCROLL_SPEED:F

.field final RIGHT_SCROLL_SPEED:F

.field final SCROLL_REGION:I

.field final TOP_SCROLL_SPEED:F

.field carouselFragment:Lcom/htc/fragment/widget/CarouselFragment;

.field private dividerPadding:I

.field private focusRect:Landroid/graphics/RectF;

.field private insertIndicator:Landroid/graphics/drawable/Drawable;

.field private isDrawIndicator:Z

.field private isDrawRect:Z

.field private isPortraitPreviousTime:Z

.field mAdapter:Lcom/htc/fragment/widget/BinAdapter;

.field private mCancelAnimation:Z

.field mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

.field private mColor:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field mDragId:J

.field private mDragItemPos:I

.field private mDragItemView:Landroid/view/View;

.field private mDragMode:I

.field private mDragMode3layout:Z

.field mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

.field private mHandler:Landroid/os/Handler;

.field private mIsDrop:Z

.field private mIsInit:Z

.field private mIsRemove:Z

.field private mIsSuccessful:Z

.field private mLayoutRequester:Ljava/lang/Runnable;

.field private mMemoryMode:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPoolFocusWidth:I

.field private mRectLeft:I

.field private mRectTop:I

.field mReorderUri:Landroid/net/Uri;

.field private mShowIndicator:Z

.field mTarget:Lcom/htc/fragment/widget/DropTarget;

.field mToPos:I

.field skipAnimationEnd:Z

.field private widgetSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 294
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->SCROLL_REGION:I

    .line 38
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->TOP_SCROLL_SPEED:F

    .line 40
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->LEFT_SCROLL_SPEED:F

    .line 42
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->RIGHT_SCROLL_SPEED:F

    .line 44
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->BOTTOM_SCROLL_SPEED:F

    .line 49
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    .line 69
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    .line 72
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    .line 76
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 77
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    .line 79
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawIndicator:Z

    .line 82
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/htc/fragment/widget/CarouselWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselWidget$1;-><init>(Lcom/htc/fragment/widget/CarouselWidget;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mLayoutRequester:Ljava/lang/Runnable;

    .line 220
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    .line 445
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    .line 446
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    .line 455
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 738
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 1306
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    .line 1577
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    .line 1578
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    .line 295
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->gInit(Landroid/content/Context;)V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->SCROLL_REGION:I

    .line 38
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->TOP_SCROLL_SPEED:F

    .line 40
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->LEFT_SCROLL_SPEED:F

    .line 42
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->RIGHT_SCROLL_SPEED:F

    .line 44
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->BOTTOM_SCROLL_SPEED:F

    .line 49
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    .line 69
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    .line 72
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    .line 76
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 77
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    .line 79
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawIndicator:Z

    .line 82
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/htc/fragment/widget/CarouselWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselWidget$1;-><init>(Lcom/htc/fragment/widget/CarouselWidget;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mLayoutRequester:Ljava/lang/Runnable;

    .line 220
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    .line 445
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    .line 446
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    .line 455
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 738
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 1306
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    .line 1577
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    .line 1578
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    .line 301
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->gInit(Landroid/content/Context;)V

    .line 302
    return-void
.end method

.method private createGreenIndicator()V
    .locals 1

    .prologue
    .line 1125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    .line 1126
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawPortraitDivider(Landroid/graphics/Canvas;)V

    .line 463
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawLandscapeDivider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawLandscapeDivider(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 565
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-gtz v10, :cond_1

    .line 634
    :cond_0
    return-void

    .line 568
    :cond_1
    const/4 v8, 0x0

    .line 570
    .local v8, view:Landroid/view/View;
    const/4 v9, -0x1

    .line 571
    .local v9, ypos:I
    const/4 v4, 0x1

    .line 572
    .local v4, index:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v0

    .line 573
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getReducedPosition()I

    move-result v6

    .line 574
    .local v6, reducedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v7

    .line 575
    .local v7, shrinkedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v1

    .line 577
    .local v1, expandedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 578
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 580
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v10

    if-gt v0, v10, :cond_5

    .line 582
    const/4 v9, -0x1

    .line 583
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 585
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    sub-int/2addr v10, v9

    const/4 v11, 0x6

    if-le v10, v11, :cond_3

    .line 587
    int-to-float v10, v9

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 588
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 589
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 590
    add-int/lit8 v4, v4, 0x1

    .line 593
    :cond_3
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 594
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 595
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_0

    .line 600
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    .line 601
    .local v2, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v5

    .line 603
    .local v5, lastVisPos:I
    move v3, v2

    .local v3, i:I
    :goto_1
    if-gt v3, v5, :cond_6

    .line 604
    if-eq v3, v7, :cond_7

    if-eq v3, v1, :cond_7

    if-eq v3, v6, :cond_7

    .line 606
    sub-int v10, v3, v2

    invoke-virtual {p0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 607
    if-eqz v8, :cond_7

    .line 611
    :cond_6
    if-eqz v8, :cond_0

    .line 613
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 614
    :goto_2
    if-ltz v9, :cond_8

    .line 616
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_2

    .line 603
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 619
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 621
    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-eq v9, v10, :cond_9

    .line 623
    int-to-float v10, v9

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 624
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 625
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 628
    :cond_9
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 629
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 630
    :cond_a
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_3
.end method

.method private drawPortraitDivider(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-gtz v10, :cond_1

    .line 561
    :cond_0
    return-void

    .line 495
    :cond_1
    const/4 v8, 0x0

    .line 497
    .local v8, view:Landroid/view/View;
    const/4 v9, -0x1

    .line 498
    .local v9, xpos:I
    const/4 v4, 0x1

    .line 499
    .local v4, index:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v0

    .line 500
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getReducedPosition()I

    move-result v6

    .line 501
    .local v6, reducedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v7

    .line 502
    .local v7, shrinkedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v1

    .line 504
    .local v1, expandedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 505
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 507
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v10

    if-gt v0, v10, :cond_5

    .line 509
    const/4 v9, -0x1

    .line 510
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 512
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    sub-int/2addr v10, v9

    const/4 v11, 0x6

    if-le v10, v11, :cond_3

    .line 514
    int-to-float v10, v9

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 515
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 516
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 517
    add-int/lit8 v4, v4, 0x1

    .line 520
    :cond_3
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 521
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 522
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_0

    .line 527
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    .line 528
    .local v2, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v5

    .line 530
    .local v5, lastVisPos:I
    move v3, v2

    .local v3, i:I
    :goto_1
    if-gt v3, v5, :cond_6

    .line 531
    if-eq v3, v7, :cond_7

    if-eq v3, v1, :cond_7

    if-eq v3, v6, :cond_7

    .line 533
    sub-int v10, v3, v2

    invoke-virtual {p0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 534
    if-eqz v8, :cond_7

    .line 538
    :cond_6
    if-eqz v8, :cond_0

    .line 540
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 541
    :goto_2
    if-ltz v9, :cond_8

    .line 543
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_2

    .line 530
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 546
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 548
    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-eq v9, v10, :cond_9

    .line 550
    int-to-float v10, v9

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 551
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 552
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 555
    :cond_9
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 556
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 557
    :cond_a
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_3
.end method

.method private drawRect(Landroid/graphics/Canvas;I)V
    .locals 8
    .parameter "canvas"
    .parameter "xy"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 225
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect:Z

    if-eqz v2, :cond_4

    .line 227
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 228
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 230
    :cond_0
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    if-gez v2, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v4, "app_selection_highlight"

    const v5, 0x2060033

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    .line 234
    :cond_1
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    if-gez v2, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20e0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    .line 237
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 239
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 240
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    if-nez v2, :cond_3

    .line 243
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    .line 245
    :cond_3
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_8

    .line 247
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    int-to-float v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 248
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 250
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iput v6, v2, Landroid/graphics/RectF;->top:F

    .line 251
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 262
    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 263
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->invalidate()V

    .line 267
    :cond_4
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawIndicator:Z

    if-eqz v2, :cond_7

    .line 269
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    .line 270
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    const v4, 0x208019c

    const-string v5, "common_subnav_tab_rearrange"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/fragment/widget/CarouselSkinUtil;->getDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 273
    :cond_5
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v2, :cond_6

    .line 274
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 276
    :cond_6
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_9

    .line 278
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 279
    .local v1, width:I
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    sub-int v3, p2, v1

    add-int v4, p2, v1

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 287
    .end local v1           #width:I
    :goto_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 288
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->invalidate()V

    .line 290
    :cond_7
    return-void

    .line 255
    :cond_8
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    int-to-float v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 256
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 258
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iput v6, v2, Landroid/graphics/RectF;->left:F

    .line 259
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 283
    :cond_9
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 284
    .local v0, height:I
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    sub-int v3, p2, v0

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    add-int v5, p2, v0

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private findInsertedPosition(Landroid/view/ViewGroup;IIII)I
    .locals 1
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v0

    .line 882
    :goto_0
    return v0

    .line 879
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 880
    invoke-direct/range {p0 .. p5}, Lcom/htc/fragment/widget/CarouselWidget;->findPortraitInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v0

    goto :goto_0

    .line 882
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/htc/fragment/widget/CarouselWidget;->findLandscapeInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v0

    goto :goto_0
.end method

.method private findLandscapeInsertedPosition(Landroid/view/ViewGroup;IIII)I
    .locals 16
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 1006
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1007
    .local v2, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v14

    add-int v12, p3, v14

    .line 1009
    .local v12, scrolledY:I
    if-gtz v2, :cond_1

    .line 1011
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 1012
    const/4 v7, 0x1

    .line 1120
    :cond_0
    :goto_0
    return v7

    .line 1015
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v13

    .line 1016
    .local v13, shrinkedPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v4

    .line 1017
    .local v4, expandedPos:I
    const/4 v3, 0x0

    .line 1019
    .local v3, dataCount:I
    const/4 v8, 0x0

    .line 1020
    .local v8, isAdd:Z
    const/4 v9, 0x0

    .line 1022
    .local v9, isLast:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1024
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    invoke-interface {v14}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 1025
    if-le v13, v3, :cond_3

    const/4 v8, 0x1

    .line 1028
    :cond_2
    :goto_1
    add-int/lit8 v11, v2, -0x1

    .line 1029
    .local v11, last_pos:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    if-lt v12, v14, :cond_6

    .line 1031
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1033
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 1035
    if-eqz v8, :cond_4

    .line 1036
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 1025
    .end local v1           #child:Landroid/view/View;
    .end local v11           #last_pos:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1037
    .restart local v1       #child:Landroid/view/View;
    .restart local v11       #last_pos:I
    :cond_4
    if-eqz v9, :cond_5

    .line 1038
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 1040
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto :goto_0

    .line 1043
    .end local v1           #child:Landroid/view/View;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    .line 1044
    .local v5, firstVisPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v10

    .line 1046
    .local v10, lastVisPos:I
    move v6, v5

    .local v6, i:I
    :goto_2
    if-gt v6, v10, :cond_f

    .line 1048
    sub-int v14, v6, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1050
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 1052
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v14

    if-gt v12, v14, :cond_e

    .line 1054
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    .line 1055
    .local v7, index:I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 1057
    if-eqz v8, :cond_8

    .line 1059
    if-ne v6, v4, :cond_7

    .line 1061
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 1065
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 1066
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1069
    :cond_7
    if-le v6, v4, :cond_0

    .line 1070
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1076
    :cond_8
    if-ne v6, v4, :cond_9

    if-ge v4, v13, :cond_9

    .line 1078
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 1082
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 1083
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1086
    :cond_9
    if-ne v6, v4, :cond_a

    .line 1088
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-gt v12, v14, :cond_0

    .line 1089
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 1093
    :cond_a
    if-ge v6, v4, :cond_b

    if-le v6, v13, :cond_b

    .line 1095
    const/4 v14, 0x1

    if-le v7, v14, :cond_0

    .line 1096
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 1100
    :cond_b
    if-ge v6, v4, :cond_c

    if-lt v6, v13, :cond_0

    .line 1102
    :cond_c
    if-le v6, v4, :cond_d

    if-gt v6, v13, :cond_0

    .line 1104
    :cond_d
    if-le v6, v4, :cond_0

    if-ge v6, v13, :cond_0

    .line 1106
    if-ge v7, v3, :cond_0

    .line 1107
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1046
    .end local v7           #index:I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 1116
    .end local v1           #child:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1117
    .restart local v1       #child:Landroid/view/View;
    if-eqz v8, :cond_10

    .line 1118
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto/16 :goto_0

    .line 1120
    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto/16 :goto_0
.end method

.method private findPortraitInsertedPosition(Landroid/view/ViewGroup;IIII)I
    .locals 16
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 887
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 888
    .local v2, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v14

    add-int v12, p2, v14

    .line 890
    .local v12, scrolledX:I
    if-gtz v2, :cond_1

    .line 892
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 893
    const/4 v7, 0x1

    .line 1001
    :cond_0
    :goto_0
    return v7

    .line 896
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v13

    .line 897
    .local v13, shrinkedPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v4

    .line 898
    .local v4, expandedPos:I
    const/4 v3, 0x0

    .line 900
    .local v3, dataCount:I
    const/4 v8, 0x0

    .line 901
    .local v8, isAdd:Z
    const/4 v9, 0x0

    .line 903
    .local v9, isLast:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    invoke-interface {v14}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 906
    if-le v13, v3, :cond_3

    const/4 v8, 0x1

    .line 909
    :cond_2
    :goto_1
    add-int/lit8 v11, v2, -0x1

    .line 910
    .local v11, last_pos:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v14

    if-lt v12, v14, :cond_6

    .line 912
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 914
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 916
    if-eqz v8, :cond_4

    .line 917
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 906
    .end local v1           #child:Landroid/view/View;
    .end local v11           #last_pos:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 918
    .restart local v1       #child:Landroid/view/View;
    .restart local v11       #last_pos:I
    :cond_4
    if-eqz v9, :cond_5

    .line 919
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 921
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto :goto_0

    .line 924
    .end local v1           #child:Landroid/view/View;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    .line 925
    .local v5, firstVisPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v10

    .line 927
    .local v10, lastVisPos:I
    move v6, v5

    .local v6, i:I
    :goto_2
    if-gt v6, v10, :cond_f

    .line 929
    sub-int v14, v6, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 931
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 933
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v14

    if-gt v12, v14, :cond_e

    .line 935
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    .line 936
    .local v7, index:I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 938
    if-eqz v8, :cond_8

    .line 940
    if-ne v6, v4, :cond_7

    .line 942
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 946
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 947
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 950
    :cond_7
    if-le v6, v4, :cond_0

    .line 951
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 957
    :cond_8
    if-ne v6, v4, :cond_9

    if-ge v4, v13, :cond_9

    .line 959
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 963
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 964
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 967
    :cond_9
    if-ne v6, v4, :cond_a

    .line 969
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-gt v12, v14, :cond_0

    .line 970
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 974
    :cond_a
    if-ge v6, v4, :cond_b

    if-le v6, v13, :cond_b

    .line 976
    const/4 v14, 0x1

    if-le v7, v14, :cond_0

    .line 977
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 981
    :cond_b
    if-ge v6, v4, :cond_c

    if-lt v6, v13, :cond_0

    .line 983
    :cond_c
    if-le v6, v4, :cond_d

    if-gt v6, v13, :cond_0

    .line 985
    :cond_d
    if-le v6, v4, :cond_0

    if-ge v6, v13, :cond_0

    .line 987
    if-ge v7, v3, :cond_0

    .line 988
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 927
    .end local v7           #index:I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 997
    .end local v1           #child:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 998
    .restart local v1       #child:Landroid/view/View;
    if-eqz v8, :cond_10

    .line 999
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto/16 :goto_0

    .line 1001
    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto/16 :goto_0
.end method

.method private gInit(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    .line 133
    iput-boolean v6, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    .line 134
    const/16 v1, 0x3e9

    iput v1, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    .line 136
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    .line 138
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    .local v0, resource:Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    .line 142
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v1, :cond_0

    .line 143
    const v1, 0x205006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 145
    :cond_0
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_2

    const v1, 0x2080036

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 147
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    if-gez v1, :cond_1

    .line 148
    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    .line 150
    :cond_1
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    :goto_1
    return-void

    .line 145
    :cond_2
    const v1, 0x2080041

    goto :goto_0

    .line 153
    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private getLocationFromPos(I[I)V
    .locals 4
    .parameter "pos"
    .parameter "loc"

    .prologue
    const/4 v3, 0x0

    .line 797
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 799
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 800
    aget v0, p2, v3

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    aput v0, p2, v3

    .line 803
    :goto_0
    return-void

    .line 802
    :cond_0
    const/4 v0, 0x1

    aget v1, p2, v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, p2, v0

    goto :goto_0
.end method

.method private initMember()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 332
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    if-ne v1, v2, :cond_0

    .line 342
    :goto_0
    return-void

    .line 336
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 338
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "There should be AT LEAST ONE element in the TAB."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_1
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    goto :goto_0
.end method

.method private isDrawRect(I)Z
    .locals 4
    .parameter "xy"

    .prologue
    const/4 v0, 0x1

    const/high16 v3, 0x3f00

    .line 467
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_2

    .line 469
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return v0

    .line 471
    :cond_1
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 473
    iput p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    goto :goto_0

    .line 479
    :cond_2
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 481
    :cond_3
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 483
    iput p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    goto :goto_0

    .line 487
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveIndicator(II)V
    .locals 3
    .parameter "scrolledXY"
    .parameter "overlap_pos"

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1145
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1147
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1149
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v1

    .line 1150
    .local v1, shrinkedPos:I
    if-gt p2, v1, :cond_1

    .line 1152
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1153
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1154
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    .line 1162
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startWaveRunnable()V

    .line 1189
    .end local v1           #shrinkedPos:I
    :cond_0
    :goto_1
    return-void

    .line 1158
    .restart local v1       #shrinkedPos:I
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1159
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1160
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    goto :goto_0

    .line 1165
    .end local v1           #shrinkedPos:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne p2, v2, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1168
    if-eqz v0, :cond_0

    .line 1170
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1172
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v1

    .line 1173
    .restart local v1       #shrinkedPos:I
    if-gt p2, v1, :cond_3

    .line 1175
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1176
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1177
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    .line 1185
    :goto_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startWaveRunnable()V

    goto :goto_1

    .line 1181
    :cond_3
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1182
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1183
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    goto :goto_2
.end method

.method private removeIndicator()V
    .locals 1

    .prologue
    .line 1244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    .line 1245
    return-void
.end method

.method private startReduceCountAnimation()V
    .locals 3

    .prologue
    .line 1582
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 1583
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v0

    .line 1585
    .local v0, orgWidthHeight:I
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 1586
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v1

    .line 1588
    .local v1, targetWidthHeight:I
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->startWidthHeightAnimation(II)V

    .line 1589
    return-void

    .line 1583
    .end local v0           #orgWidthHeight:I
    .end local v1           #targetWidthHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v0

    goto :goto_0

    .line 1586
    .restart local v0       #orgWidthHeight:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1263
    const/4 v0, 0x1

    return v0
.end method

.method cancelAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    .line 1595
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    .line 1596
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    .line 1597
    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->cancelAnimation()V

    .line 1598
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawDivider(Landroid/graphics/Canvas;)V

    .line 677
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 680
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 681
    return-void

    .line 673
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 674
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawDivider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1406
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispatchSetSelected(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->dispatchSetSelected(Z)V

    return-void
.end method

.method doAnimationForDifferentTarget(Lcom/htc/fragment/widget/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 723
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    .line 724
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 725
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mTarget:Lcom/htc/fragment/widget/DropTarget;

    .line 731
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startWaveRunnable()V

    .line 733
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 639
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->draw(Landroid/graphics/Canvas;)V

    .line 641
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    if-eqz v3, :cond_0

    .line 643
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v3, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    .line 644
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    .line 647
    :cond_0
    sget-boolean v3, Lcom/htc/fragment/widget/FastScroller;->SCROLL_DEBUG:Z

    if-eqz v3, :cond_2

    .line 648
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_1

    .line 649
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    iget-object v3, v3, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 650
    .local v1, x:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    neg-int v4, v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 651
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 652
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 655
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #x:Ljava/lang/Integer;
    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    iget-object v3, v3, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 656
    .local v2, y:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    neg-int v3, v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 657
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 658
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 662
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #y:Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public enableSecondBackground(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1604
    return-void
.end method

.method public bridge synthetic forceStopPartialFling()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->forceStopPartialFling()V

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 1639
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 1627
    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1610
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method getFragment()Lcom/htc/fragment/widget/CarouselFragment;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->carouselFragment:Lcom/htc/fragment/widget/CarouselFragment;

    return-object v0
.end method

.method getStateWidget()I
    .locals 1

    .prologue
    .line 1514
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    return v0
.end method

.method public getWidgetHeight()I
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getWidgetWidth()I
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method initFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    .line 326
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsSuccessful:Z

    .line 328
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    .line 329
    return-void
.end method

.method initLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->setOrientation()V

    .line 98
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x205006b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 107
    .local v0, lparams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    :cond_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 110
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 111
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x50

    :goto_1
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 113
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    .line 117
    .end local v0           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/high16 v1, 0x300

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setScrollBarStyle(I)V

    .line 119
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_6

    const-string v1, "common_app_bkg_down_src"

    :goto_2
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_7

    const v2, 0x2080039

    :goto_3
    invoke-static {v3, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setBackgroundResource(I)V

    .line 122
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/htc/fragment/widget/CarouselWidget;->setPadding(IIII)V

    .line 124
    invoke-virtual {p0, v4}, Lcom/htc/fragment/widget/CarouselWidget;->setSpacing(I)V

    .line 125
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->forceLayout()V

    .line 126
    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/CarouselWidget;->setFocusable(Z)V

    .line 127
    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/CarouselWidget;->setFocusableInTouchMode(Z)V

    .line 128
    return-void

    .line 107
    .restart local v0       #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    goto :goto_0

    .line 111
    :cond_5
    const/4 v2, 0x5

    goto :goto_1

    .line 119
    .end local v0           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const-string v1, "common_app_bkg_down_land_src"

    goto :goto_2

    :cond_7
    const v2, 0x2080148

    goto :goto_3
.end method

.method isBusy()Z
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->isBusy()Z

    move-result v0

    .line 1650
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDragging()Z
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->isDragging()Z

    move-result v0

    .line 1523
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 2
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    if-eqz v0, :cond_0

    .line 349
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    .line 350
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startReduceCountAnimation()V

    .line 352
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery;->layout(IZ)V

    .line 354
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    if-nez v0, :cond_1

    .line 355
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    .line 358
    :cond_1
    return-void
.end method

.method public bridge synthetic offsetChildrenTopAndBottom(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->offsetChildrenTopAndBottom(I)V

    return-void
.end method

.method protected onAnimationEnd()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x1

    .line 744
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    if-eqz v1, :cond_0

    .line 746
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 747
    const-string v1, "enable skipAnimationEnd"

    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselLog;->i(Ljava/lang/String;)V

    .line 792
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v13

    check-cast v13, Lcom/htc/fragment/widget/BinAdapter;

    .line 756
    .local v13, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v13}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    .line 757
    .local v0, handle:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v1, v14, :cond_3

    .line 758
    if-eqz v0, :cond_2

    .line 759
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 760
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 765
    iput-boolean v14, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    .line 789
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->realign()V

    .line 791
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    goto :goto_0

    .line 763
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 766
    :cond_3
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 767
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 768
    .restart local v4       #values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 769
    const-string v1, "task_order"

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    if-eqz v0, :cond_4

    .line 771
    const/16 v7, 0x3ea

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v0

    move-object v10, v4

    move-object v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 775
    iput-boolean v14, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    goto :goto_1

    .line 773
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 776
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_5
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 777
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mTarget:Lcom/htc/fragment/widget/DropTarget;

    instance-of v1, v1, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v1, :cond_1

    .line 779
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTab()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 780
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->setNextTab()V

    .line 781
    :cond_6
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mTarget:Lcom/htc/fragment/widget/DropTarget;

    check-cast v1, Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/BinGridView;->addtoDB()V

    .line 783
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    if-nez v1, :cond_1

    .line 784
    iput-boolean v14, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    goto/16 :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const v5, 0x205006b

    const/4 v3, -0x1

    const/4 v7, 0x0

    .line 165
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 170
    .local v1, resource:Landroid/content/res/Resources;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 173
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    iget-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eq v2, v4, :cond_3

    .line 175
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setOrientationChangedFlag(Z)V

    .line 177
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v2, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 185
    .local v0, lparams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 186
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    :cond_1
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 189
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x50

    :goto_1
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 191
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    .line 194
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mLayoutRequester:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mLayoutRequester:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    .end local v0           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_8

    const-string v2, "common_app_bkg_down_src"

    :goto_2
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_9

    const v3, 0x2080039

    :goto_3
    invoke-static {v4, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setBackgroundResource(I)V

    .line 202
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/htc/fragment/widget/CarouselWidget;->setPadding(IIII)V

    .line 204
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v2, :cond_4

    .line 205
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 207
    :cond_4
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_a

    const v2, 0x2080036

    :goto_4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 209
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    if-gez v2, :cond_5

    .line 210
    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    .line 212
    :cond_5
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_b

    .line 213
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v6, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    :goto_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    .line 218
    return-void

    .line 185
    .restart local v0       #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    goto/16 :goto_0

    .line 189
    :cond_7
    const/4 v3, 0x5

    goto :goto_1

    .line 199
    .end local v0           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    const-string v2, "common_app_bkg_down_land_src"

    goto :goto_2

    :cond_9
    const v3, 0x2080148

    goto :goto_3

    .line 207
    :cond_a
    const v2, 0x2080041

    goto :goto_4

    .line 215
    :cond_b
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5
.end method

.method public bridge synthetic onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDragEnter(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initMember()V

    .line 1137
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->createGreenIndicator()V

    .line 1138
    return-void
.end method

.method public onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->removeIndicator()V

    .line 1255
    return-void
.end method

.method public onDragOver(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 11
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1197
    move-object v0, p0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/fragment/widget/CarouselWidget;->findInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v10

    .line 1199
    .local v10, pos:I
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_3

    .line 1201
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getScrollX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, v0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->moveIndicator(II)V

    .line 1203
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1204
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollRight()V

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getRight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1207
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v7

    .line 1208
    .local v7, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 1210
    .local v8, lastPos:I
    sub-int v0, v8, v7

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1211
    .local v9, lastVisView:Landroid/view/View;
    if-eqz v9, :cond_2

    .line 1213
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1214
    .local v6, anchor:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v6, v0, :cond_0

    .line 1217
    .end local v6           #anchor:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollLeft()V

    goto :goto_0

    .line 1222
    .end local v7           #firstVisPos:I
    .end local v8           #lastPos:I
    .end local v9           #lastVisView:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getScrollY()I

    move-result v0

    add-int/2addr v0, p3

    invoke-direct {p0, v0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->moveIndicator(II)V

    .line 1224
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p3, v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 1225
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBottom()V

    goto :goto_0

    .line 1226
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getBottom()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    if-le p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1228
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v7

    .line 1229
    .restart local v7       #firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 1231
    .restart local v8       #lastPos:I
    sub-int v0, v8, v7

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1232
    .restart local v9       #lastVisView:Landroid/view/View;
    if-eqz v9, :cond_5

    .line 1234
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1235
    .restart local v6       #anchor:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v6, v0, :cond_0

    .line 1238
    .end local v6           #anchor:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollTop()V

    goto/16 :goto_0
.end method

.method public onDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    move-object v0, p0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 813
    invoke-direct/range {v0 .. v5}, Lcom/htc/fragment/widget/CarouselWidget;->findInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v10

    .local v10, pos:I
    move-object/from16 v8, p6

    .line 814
    check-cast v8, Lcom/htc/fragment/widget/TaskInfo;

    .line 815
    .local v8, info:Lcom/htc/fragment/widget/TaskInfo;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/fragment/widget/BinAdapter;

    .line 816
    .local v7, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v7}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    .line 817
    .local v0, handle:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;
    invoke-virtual {v7}, Lcom/htc/fragment/widget/BinAdapter;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 818
    .local v11, uri:Landroid/net/Uri;
    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselWidget;->mAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 819
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 821
    .local v9, loc:[I
    check-cast p1, Lcom/htc/fragment/widget/DropTarget;

    .end local p1
    if-eq p0, p1, :cond_1

    .line 822
    iput-object v11, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    .line 823
    iput v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    .line 824
    iget-wide v1, v8, Lcom/htc/fragment/widget/TaskInfo;->_id:J

    iput-wide v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragId:J

    .line 825
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    .line 827
    invoke-direct {p0, v10, v9}, Lcom/htc/fragment/widget/CarouselWidget;->getLocationFromPos(I[I)V

    .line 828
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v5, 0x1

    aget v5, v9, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 831
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->onAnimationEnd()V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 840
    .local v3, reorderUri:Landroid/net/Uri;
    const-string v1, "reorder_task"

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 842
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v8, Lcom/htc/fragment/widget/TaskInfo;->_id:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "from"

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "to"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "gId"

    const-string v5, "gId"

    invoke-virtual {v11, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 848
    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    .line 849
    iput v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    .line 850
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    .line 852
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    if-eq v1, v10, :cond_2

    .line 853
    invoke-direct {p0, v10, v9}, Lcom/htc/fragment/widget/CarouselWidget;->getLocationFromPos(I[I)V

    .line 854
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v5, 0x1

    aget v5, v9, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 857
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->onAnimationEnd()V

    .line 860
    :cond_2
    if-eqz v0, :cond_3

    .line 861
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    if-ne v1, v10, :cond_0

    .line 862
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 863
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    const/16 v1, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    goto/16 :goto_0

    .line 868
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDropAnimationEnd(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsSuccessful:Z

    if-nez v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    .line 695
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    .line 697
    :cond_1
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 5
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v4, 0x0

    .line 704
    iput-boolean p2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsSuccessful:Z

    .line 705
    if-nez p2, :cond_2

    .line 706
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 707
    .local v0, loc:[I
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 709
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    aget v2, v0, v4

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 712
    :cond_0
    if-eqz p1, :cond_1

    .line 713
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x20401d4

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 719
    .end local v0           #loc:[I
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 716
    .restart local p1
    :cond_2
    check-cast p1, Lcom/htc/fragment/widget/DragSource;

    .end local p1
    if-eq p1, p0, :cond_3

    .line 717
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 365
    invoke-virtual {p0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setOnItemLongClickListener(Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;)V

    .line 366
    invoke-virtual {p0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setOnItemClickListener(Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;)V

    .line 367
    return-void
.end method

.method public bridge synthetic onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Lcom/htc/fragment/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fragment/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1335
    .local p1, parent:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<*>;"
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 1351
    :goto_0
    return-void

    .line 1337
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/TaskInfo;

    .line 1338
    .local v0, info:Lcom/htc/fragment/widget/TaskInfo;
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 1341
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 1342
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "system_server"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "tab_index"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "tab_index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 1345
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 1346
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto :goto_0

    .line 1335
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Lcom/htc/fragment/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fragment/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<*>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 382
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v2

    .line 408
    :goto_0
    return v0

    .line 385
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 386
    goto :goto_0

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    if-nez v0, :cond_3

    .line 390
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->openDrawer()V

    move v0, v2

    .line 391
    goto :goto_0

    .line 394
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/TaskInfo;

    iget v0, v0, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    .line 395
    iput-object p2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    .line 397
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 398
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 400
    iget v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(I)V

    .line 401
    iget v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 402
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestLayout()V

    .line 404
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    .line 405
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, p2, p0, v3, v1}, Lcom/htc/fragment/widget/DragController;->startDrag(Landroid/view/View;Lcom/htc/fragment/widget/DragSource;Ljava/lang/Object;I)V

    .line 406
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initMember()V

    move v0, v2

    .line 408
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keycode"
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 1418
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_3

    .line 1420
    sparse-switch p1, :sswitch_data_0

    .line 1450
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_6

    .line 1452
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1454
    .local v0, content:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 1456
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    move-result v1

    .line 1457
    .local v1, handle:Z
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1508
    .end local v0           #content:Landroid/view/View;
    .end local v1           #handle:Z
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 1423
    :sswitch_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1425
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_1

    .line 1426
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->movePrevious()Z

    .line 1428
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1429
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1434
    :sswitch_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1436
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_2

    .line 1437
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->moveNext()Z

    .line 1439
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1440
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1465
    :cond_3
    sparse-switch p1, :sswitch_data_1

    .line 1495
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_6

    .line 1497
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1499
    .restart local v0       #content:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 1501
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    move-result v1

    .line 1502
    .restart local v1       #handle:Z
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1503
    goto :goto_0

    .line 1468
    .end local v0           #content:Landroid/view/View;
    .end local v1           #handle:Z
    :sswitch_3
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1470
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_4

    .line 1471
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->movePrevious()Z

    .line 1473
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1474
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1479
    :sswitch_4
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1481
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_5

    .line 1482
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->moveNext()Z

    .line 1484
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1485
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1508
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1420
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1465
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method openDrawer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->open()V

    .line 419
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    .line 420
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setOrientationChangedFlag(Z)V

    .line 422
    :cond_0
    return-void
.end method

.method public bridge synthetic partialFling(III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/widget/Gallery;->partialFling(III)V

    return-void
.end method

.method public bridge synthetic partialFling(IIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->partialFling(IIIZ)V

    return-void
.end method

.method realign()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 1529
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1575
    :cond_0
    :goto_0
    return-void

    .line 1532
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 1535
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v0

    .line 1536
    .local v0, firstVisPos:I
    const/4 v1, -0x1

    .line 1538
    .local v1, lastPos:I
    const/4 v2, 0x0

    .line 1539
    .local v2, lastView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1541
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1542
    sub-int v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1545
    :cond_2
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_7

    .line 1547
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1549
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v8, :cond_3

    .line 1551
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    add-int/lit8 v4, v1, 0x2

    if-ne v3, v4, :cond_0

    .line 1552
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    .line 1554
    :cond_3
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_4

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v7, :cond_0

    .line 1555
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    .line 1557
    :cond_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_6

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v5, :cond_0

    .line 1558
    :cond_6
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    .line 1562
    :cond_7
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 1564
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v8, :cond_8

    .line 1566
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    add-int/lit8 v4, v1, 0x2

    if-ne v3, v4, :cond_0

    .line 1567
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    .line 1569
    :cond_8
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_9

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v5, :cond_9

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v7, :cond_0

    .line 1570
    :cond_9
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    .line 1572
    :cond_a
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_b

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v5, :cond_0

    .line 1573
    :cond_b
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0
.end method

.method public scrollBottom()V
    .locals 2

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    .line 1301
    return-void
.end method

.method public bridge synthetic scrollBy(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    return-void
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 1273
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    .line 1274
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    .line 1283
    return-void
.end method

.method public scrollTop()V
    .locals 2

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    .line 1292
    return-void
.end method

.method public bridge synthetic setAnimationDuration(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setAnimationDuration(I)V

    return-void
.end method

.method public bridge synthetic setCallbackDuringFling(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setCallbackDuringFling(Z)V

    return-void
.end method

.method public bridge synthetic setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setCallbackOnUnselectedItemClick(Z)V

    return-void
.end method

.method setCarouselHost(Lcom/htc/fragment/widget/CarouselHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    .line 1328
    return-void
.end method

.method setCountText(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "text"

    .prologue
    .line 1363
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1364
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1365
    .local v0, child:Landroid/widget/FrameLayout;
    const v2, 0x2020062

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1367
    .local v1, count:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1368
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setCountTextVisibility(II)V

    .line 1373
    .end local v0           #child:Landroid/widget/FrameLayout;
    .end local v1           #count:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 1370
    .restart local v0       #child:Landroid/widget/FrameLayout;
    .restart local v1       #count:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setCountTextVisibility(II)V
    .locals 4
    .parameter "index"
    .parameter "visibility"

    .prologue
    .line 1377
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1378
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1379
    .local v0, child:Landroid/widget/FrameLayout;
    const v2, 0x2020062

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1381
    .local v1, count:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1382
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1387
    .end local v0           #child:Landroid/widget/FrameLayout;
    .end local v1           #count:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 1384
    .restart local v0       #child:Landroid/widget/FrameLayout;
    .restart local v1       #count:Landroid/widget/TextView;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method setCurrentTabUtil(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1310
    if-gez p1, :cond_0

    .line 1323
    :goto_0
    return-void

    .line 1316
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->setNextSelectedPositionInt(I)V

    .line 1318
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->calibrateThumb(I)V

    .line 1321
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestLayout()V

    goto :goto_0
.end method

.method setDragger(Lcom/htc/fragment/widget/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    .line 428
    return-void
.end method

.method setDrawer(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)V
    .locals 0
    .parameter "drawer"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    .line 434
    return-void
.end method

.method setEditorMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->setEditorMode(Z)V

    .line 1395
    :cond_0
    return-void
.end method

.method setFragment(Lcom/htc/fragment/widget/CarouselFragment;)V
    .locals 0
    .parameter "carouselFragment"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->carouselFragment:Lcom/htc/fragment/widget/CarouselFragment;

    .line 443
    return-void
.end method

.method public bridge synthetic setGravity(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setGravity(I)V

    return-void
.end method

.method setMemoryMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    .line 372
    return-void
.end method

.method public bridge synthetic setSpacing(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setSpacing(I)V

    return-void
.end method

.method setStateMode(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1355
    iput p1, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    .line 1356
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    .line 1357
    .local v0, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/BinAdapter;->setStateMode(I)V

    .line 1358
    return-void
.end method

.method public bridge synthetic setUnselectedAlpha(F)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setUnselectedAlpha(F)V

    return-void
.end method

.method public bridge synthetic showContextMenu()Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
