.class public Lcom/htc/widget/CarouselWidget;
.super Lcom/htc/widget/Gallery;
.source "CarouselWidget.java"

# interfaces
.implements Lcom/htc/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/htc/widget/AdapterView$OnItemClickListener;
.implements Lcom/htc/widget/DragSource;
.implements Lcom/htc/widget/DropTarget;
.implements Lcom/htc/widget/DragScroller;


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "CarouselWidget"


# instance fields
.field final BOTTOM_SCROLL_SPEED:F

.field final LEFT_SCROLL_SPEED:F

.field final RIGHT_SCROLL_SPEED:F

.field final SCROLL_REGION:I

.field final TOP_SCROLL_SPEED:F

.field private display:Landroid/view/Display;

.field private dividerPadding:I

.field private focusRect:Landroid/graphics/RectF;

.field private insertIndicator:Landroid/graphics/drawable/Drawable;

.field private isDrawIndicator:Z

.field private isDrawRect:Z

.field private isPortrait:Z

.field mAdapter:Lcom/htc/widget/BinAdapter;

.field private mCancelAnimation:Z

.field mCarouselHost:Lcom/htc/widget/CarouselHost;

.field private mColor:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field mDragId:J

.field private mDragItemPos:I

.field private mDragItemView:Landroid/view/View;

.field private mDragMode:I

.field private mDragMode3layout:Z

.field mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

.field private mIsDrop:Z

.field private mIsInit:Z

.field private mIsRemove:Z

.field private mIsSuccessful:Z

.field private mMemoryMode:Z

.field mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPoolFocusWidth:I

.field private mRectLeft:I

.field private mRectTop:I

.field mReorderUri:Landroid/net/Uri;

.field private mShowIndicator:Z

.field mTarget:Lcom/htc/widget/DropTarget;

.field mToPos:I

.field skipAnimationEnd:Z

.field private widgetSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f00

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 280
    invoke-direct {p0, p1}, Lcom/htc/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 37
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->SCROLL_REGION:I

    .line 40
    iput v4, p0, Lcom/htc/widget/CarouselWidget;->TOP_SCROLL_SPEED:F

    .line 41
    iput v4, p0, Lcom/htc/widget/CarouselWidget;->LEFT_SCROLL_SPEED:F

    .line 42
    iput v4, p0, Lcom/htc/widget/CarouselWidget;->RIGHT_SCROLL_SPEED:F

    .line 43
    iput v4, p0, Lcom/htc/widget/CarouselWidget;->BOTTOM_SCROLL_SPEED:F

    .line 48
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mIsInit:Z

    .line 63
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    .line 66
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mMemoryMode:Z

    .line 71
    iput v3, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    .line 72
    iput v3, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    .line 74
    iput-boolean v5, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->isDrawRect:Z

    .line 76
    iput-boolean v5, p0, Lcom/htc/widget/CarouselWidget;->isDrawIndicator:Z

    .line 78
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->display:Landroid/view/Display;

    .line 79
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 148
    iput v3, p0, Lcom/htc/widget/CarouselWidget;->mOrientation:I

    .line 206
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    .line 405
    iput v3, p0, Lcom/htc/widget/CarouselWidget;->mColor:I

    .line 406
    iput v3, p0, Lcom/htc/widget/CarouselWidget;->mPoolFocusWidth:I

    .line 415
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 674
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 1205
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    .line 1451
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode3layout:Z

    .line 1452
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mCancelAnimation:Z

    .line 282
    invoke-direct {p0}, Lcom/htc/widget/CarouselWidget;->setOrientation()V

    .line 283
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselWidget;->gInit(Landroid/content/Context;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f00

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->SCROLL_REGION:I

    .line 40
    iput v4, p0, Lcom/htc/widget/CarouselWidget;->TOP_SCROLL_SPEED:F

    .line 41
    iput v4, p0, Lcom/htc/widget/CarouselWidget;->LEFT_SCROLL_SPEED:F

    .line 42
    iput v4, p0, Lcom/htc/widget/CarouselWidget;->RIGHT_SCROLL_SPEED:F

    .line 43
    iput v4, p0, Lcom/htc/widget/CarouselWidget;->BOTTOM_SCROLL_SPEED:F

    .line 48
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mIsInit:Z

    .line 63
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    .line 66
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mMemoryMode:Z

    .line 71
    iput v3, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    .line 72
    iput v3, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    .line 74
    iput-boolean v5, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->isDrawRect:Z

    .line 76
    iput-boolean v5, p0, Lcom/htc/widget/CarouselWidget;->isDrawIndicator:Z

    .line 78
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->display:Landroid/view/Display;

    .line 79
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 148
    iput v3, p0, Lcom/htc/widget/CarouselWidget;->mOrientation:I

    .line 206
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    .line 405
    iput v3, p0, Lcom/htc/widget/CarouselWidget;->mColor:I

    .line 406
    iput v3, p0, Lcom/htc/widget/CarouselWidget;->mPoolFocusWidth:I

    .line 415
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 674
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 1205
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    .line 1451
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode3layout:Z

    .line 1452
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mCancelAnimation:Z

    .line 290
    invoke-direct {p0}, Lcom/htc/widget/CarouselWidget;->setOrientation()V

    .line 291
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselWidget;->gInit(Landroid/content/Context;)V

    .line 292
    return-void
.end method

.method private createGreenIndicator()V
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mShowIndicator:Z

    .line 1058
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 420
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselWidget;->drawPortraitDivider(Landroid/graphics/Canvas;)V

    .line 423
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselWidget;->drawLandscapeDivider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawLandscapeDivider(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-gtz v10, :cond_1

    .line 594
    :cond_0
    return-void

    .line 528
    :cond_1
    const/4 v8, 0x0

    .line 530
    .local v8, view:Landroid/view/View;
    const/4 v9, -0x1

    .line 531
    .local v9, ypos:I
    const/4 v4, 0x1

    .line 532
    .local v4, index:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getChildCount()I

    move-result v0

    .line 533
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getReducedPosition()I

    move-result v6

    .line 534
    .local v6, reducedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v7

    .line 535
    .local v7, shrinkedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getExpandedPosition()I

    move-result v1

    .line 537
    .local v1, expandedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 538
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 540
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getMaxCapacity()I

    move-result v10

    if-gt v0, v10, :cond_5

    .line 542
    const/4 v9, -0x1

    .line 543
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 545
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v10

    sub-int/2addr v10, v9

    const/4 v11, 0x6

    if-le v10, v11, :cond_3

    .line 547
    int-to-float v10, v9

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 548
    iget-object v10, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 549
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 550
    add-int/lit8 v4, v4, 0x1

    .line 553
    :cond_3
    invoke-direct {p0, v9}, Lcom/htc/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 554
    invoke-direct {p0, p1, v9}, Lcom/htc/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 555
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_0

    .line 560
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    .line 561
    .local v2, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v5

    .line 563
    .local v5, lastVisPos:I
    move v3, v2

    .local v3, i:I
    :goto_1
    if-gt v3, v5, :cond_6

    .line 564
    if-eq v3, v7, :cond_7

    if-eq v3, v1, :cond_7

    if-eq v3, v6, :cond_7

    .line 566
    sub-int v10, v3, v2

    invoke-virtual {p0, v10}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 567
    if-eqz v8, :cond_7

    .line 571
    :cond_6
    if-eqz v8, :cond_0

    .line 573
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 574
    :goto_2
    if-ltz v9, :cond_8

    .line 576
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_2

    .line 563
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 579
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 581
    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-eq v9, v10, :cond_9

    .line 583
    int-to-float v10, v9

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 584
    iget-object v10, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 585
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 588
    :cond_9
    invoke-direct {p0, v9}, Lcom/htc/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 589
    invoke-direct {p0, p1, v9}, Lcom/htc/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 590
    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_3
.end method

.method private drawPortraitDivider(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-gtz v10, :cond_1

    .line 521
    :cond_0
    return-void

    .line 455
    :cond_1
    const/4 v8, 0x0

    .line 457
    .local v8, view:Landroid/view/View;
    const/4 v9, -0x1

    .line 458
    .local v9, xpos:I
    const/4 v4, 0x1

    .line 459
    .local v4, index:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getChildCount()I

    move-result v0

    .line 460
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getReducedPosition()I

    move-result v6

    .line 461
    .local v6, reducedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v7

    .line 462
    .local v7, shrinkedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getExpandedPosition()I

    move-result v1

    .line 464
    .local v1, expandedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 465
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 467
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getMaxCapacity()I

    move-result v10

    if-gt v0, v10, :cond_5

    .line 469
    const/4 v9, -0x1

    .line 470
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 472
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v10

    sub-int/2addr v10, v9

    const/4 v11, 0x6

    if-le v10, v11, :cond_3

    .line 474
    int-to-float v10, v9

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 475
    iget-object v10, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 476
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 477
    add-int/lit8 v4, v4, 0x1

    .line 480
    :cond_3
    invoke-direct {p0, v9}, Lcom/htc/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 481
    invoke-direct {p0, p1, v9}, Lcom/htc/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 482
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_0

    .line 487
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    .line 488
    .local v2, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v5

    .line 490
    .local v5, lastVisPos:I
    move v3, v2

    .local v3, i:I
    :goto_1
    if-gt v3, v5, :cond_6

    .line 491
    if-eq v3, v7, :cond_7

    if-eq v3, v1, :cond_7

    if-eq v3, v6, :cond_7

    .line 493
    sub-int v10, v3, v2

    invoke-virtual {p0, v10}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 494
    if-eqz v8, :cond_7

    .line 498
    :cond_6
    if-eqz v8, :cond_0

    .line 500
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 501
    :goto_2
    if-ltz v9, :cond_8

    .line 503
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_2

    .line 490
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 506
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 508
    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-eq v9, v10, :cond_9

    .line 510
    int-to-float v10, v9

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 511
    iget-object v10, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 512
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 515
    :cond_9
    invoke-direct {p0, v9}, Lcom/htc/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 516
    invoke-direct {p0, p1, v9}, Lcom/htc/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 517
    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

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

    .line 211
    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->mShowIndicator:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->isDrawRect:Z

    if-eqz v2, :cond_4

    .line 213
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 214
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 216
    :cond_0
    iget v2, p0, Lcom/htc/widget/CarouselWidget;->mColor:I

    if-gez v2, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v4, "app_selection_highlight"

    const v5, 0x2060033

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/CarouselWidget;->mColor:I

    .line 220
    :cond_1
    iget v2, p0, Lcom/htc/widget/CarouselWidget;->mPoolFocusWidth:I

    if-gez v2, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20e0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/CarouselWidget;->mPoolFocusWidth:I

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 225
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mPoolFocusWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 228
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    if-nez v2, :cond_3

    .line 229
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    .line 231
    :cond_3
    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_8

    .line 233
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    int-to-float v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 234
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 236
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iput v6, v2, Landroid/graphics/RectF;->top:F

    .line 237
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/CarouselWidget;->mPoolFocusWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 248
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 249
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->invalidate()V

    .line 253
    :cond_4
    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->mShowIndicator:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->isDrawIndicator:Z

    if-eqz v2, :cond_7

    .line 255
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    .line 256
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    const v4, 0x208019c

    const-string v5, "common_subnav_tab_rearrange"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/widget/CarouselSkinUtil;->getDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 259
    :cond_5
    iget v2, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    if-gez v2, :cond_6

    .line 260
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    .line 262
    :cond_6
    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_9

    .line 264
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 265
    .local v1, width:I
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    sub-int v3, p2, v1

    add-int v4, p2, v1

    iget v5, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    .end local v1           #width:I
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 274
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->invalidate()V

    .line 276
    :cond_7
    return-void

    .line 241
    :cond_8
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    int-to-float v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 242
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 244
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iput v6, v2, Landroid/graphics/RectF;->left:F

    .line 245
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/CarouselWidget;->mPoolFocusWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 269
    :cond_9
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 270
    .local v0, height:I
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    sub-int v3, p2, v0

    iget v4, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

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
    .line 808
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v0

    .line 814
    :goto_0
    return v0

    .line 811
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 812
    invoke-direct/range {p0 .. p5}, Lcom/htc/widget/CarouselWidget;->findPortraitInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v0

    goto :goto_0

    .line 814
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/htc/widget/CarouselWidget;->findLandscapeInsertedPosition(Landroid/view/ViewGroup;IIII)I

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
    .line 938
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 939
    .local v2, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v14

    add-int v12, p3, v14

    .line 941
    .local v12, scrolledY:I
    if-gtz v2, :cond_1

    .line 943
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/widget/CarouselWidget;->mRectTop:I

    .line 944
    const/4 v7, 0x1

    .line 1052
    :cond_0
    :goto_0
    return v7

    .line 947
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v13

    .line 948
    .local v13, shrinkedPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getExpandedPosition()I

    move-result v4

    .line 949
    .local v4, expandedPos:I
    const/4 v3, 0x0

    .line 951
    .local v3, dataCount:I
    const/4 v8, 0x0

    .line 952
    .local v8, isAdd:Z
    const/4 v9, 0x0

    .line 954
    .local v9, isLast:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    invoke-interface {v14}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 957
    if-le v13, v3, :cond_3

    const/4 v8, 0x1

    .line 960
    :cond_2
    :goto_1
    add-int/lit8 v11, v2, -0x1

    .line 961
    .local v11, last_pos:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    if-lt v12, v14, :cond_6

    .line 963
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 965
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/widget/CarouselWidget;->mRectTop:I

    .line 967
    if-eqz v8, :cond_4

    .line 968
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/TaskInfo;

    iget v14, v14, Lcom/htc/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 957
    .end local v1           #child:Landroid/view/View;
    .end local v11           #last_pos:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 969
    .restart local v1       #child:Landroid/view/View;
    .restart local v11       #last_pos:I
    :cond_4
    if-eqz v9, :cond_5

    .line 970
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/TaskInfo;

    iget v14, v14, Lcom/htc/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 972
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/TaskInfo;

    iget v7, v14, Lcom/htc/widget/TaskInfo;->taskOrder:I

    goto :goto_0

    .line 975
    .end local v1           #child:Landroid/view/View;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    .line 976
    .local v5, firstVisPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v10

    .line 978
    .local v10, lastVisPos:I
    move v6, v5

    .local v6, i:I
    :goto_2
    if-gt v6, v10, :cond_f

    .line 980
    sub-int v14, v6, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 982
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/widget/CarouselWidget;->mRectTop:I

    .line 984
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v14

    if-gt v12, v14, :cond_e

    .line 986
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/TaskInfo;

    iget v7, v14, Lcom/htc/widget/TaskInfo;->taskOrder:I

    .line 987
    .local v7, index:I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 989
    if-eqz v8, :cond_8

    .line 991
    if-ne v6, v4, :cond_7

    .line 993
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 997
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/CarouselWidget;->mRectTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/widget/CarouselWidget;->mRectTop:I

    .line 998
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1001
    :cond_7
    if-le v6, v4, :cond_0

    .line 1002
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1008
    :cond_8
    if-ne v6, v4, :cond_9

    if-ge v4, v13, :cond_9

    .line 1010
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 1014
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/CarouselWidget;->mRectTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/widget/CarouselWidget;->mRectTop:I

    .line 1015
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1018
    :cond_9
    if-ne v6, v4, :cond_a

    .line 1020
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-gt v12, v14, :cond_0

    .line 1021
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 1025
    :cond_a
    if-ge v6, v4, :cond_b

    if-le v6, v13, :cond_b

    .line 1027
    const/4 v14, 0x1

    if-le v7, v14, :cond_0

    .line 1028
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 1032
    :cond_b
    if-ge v6, v4, :cond_c

    if-lt v6, v13, :cond_0

    .line 1034
    :cond_c
    if-le v6, v4, :cond_d

    if-gt v6, v13, :cond_0

    .line 1036
    :cond_d
    if-le v6, v4, :cond_0

    if-ge v6, v13, :cond_0

    .line 1038
    if-ge v7, v3, :cond_0

    .line 1039
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 978
    .end local v7           #index:I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 1048
    .end local v1           #child:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1049
    .restart local v1       #child:Landroid/view/View;
    if-eqz v8, :cond_10

    .line 1050
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/TaskInfo;

    iget v14, v14, Lcom/htc/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto/16 :goto_0

    .line 1052
    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/TaskInfo;

    iget v7, v14, Lcom/htc/widget/TaskInfo;->taskOrder:I

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
    .line 819
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 820
    .local v2, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v14

    add-int v12, p2, v14

    .line 822
    .local v12, scrolledX:I
    if-gtz v2, :cond_1

    .line 824
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    .line 825
    const/4 v7, 0x1

    .line 933
    :cond_0
    :goto_0
    return v7

    .line 828
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v13

    .line 829
    .local v13, shrinkedPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getExpandedPosition()I

    move-result v4

    .line 830
    .local v4, expandedPos:I
    const/4 v3, 0x0

    .line 832
    .local v3, dataCount:I
    const/4 v8, 0x0

    .line 833
    .local v8, isAdd:Z
    const/4 v9, 0x0

    .line 835
    .local v9, isLast:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    invoke-interface {v14}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 838
    if-le v13, v3, :cond_3

    const/4 v8, 0x1

    .line 841
    :cond_2
    :goto_1
    add-int/lit8 v11, v2, -0x1

    .line 842
    .local v11, last_pos:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v14

    if-lt v12, v14, :cond_6

    .line 844
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 846
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    .line 848
    if-eqz v8, :cond_4

    .line 849
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/TaskInfo;

    iget v14, v14, Lcom/htc/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 838
    .end local v1           #child:Landroid/view/View;
    .end local v11           #last_pos:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 850
    .restart local v1       #child:Landroid/view/View;
    .restart local v11       #last_pos:I
    :cond_4
    if-eqz v9, :cond_5

    .line 851
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/TaskInfo;

    iget v14, v14, Lcom/htc/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 853
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/TaskInfo;

    iget v7, v14, Lcom/htc/widget/TaskInfo;->taskOrder:I

    goto :goto_0

    .line 856
    .end local v1           #child:Landroid/view/View;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    .line 857
    .local v5, firstVisPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v10

    .line 859
    .local v10, lastVisPos:I
    move v6, v5

    .local v6, i:I
    :goto_2
    if-gt v6, v10, :cond_f

    .line 861
    sub-int v14, v6, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 863
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    .line 865
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v14

    if-gt v12, v14, :cond_e

    .line 867
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/TaskInfo;

    iget v7, v14, Lcom/htc/widget/TaskInfo;->taskOrder:I

    .line 868
    .local v7, index:I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 870
    if-eqz v8, :cond_8

    .line 872
    if-ne v6, v4, :cond_7

    .line 874
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 878
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    .line 879
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 882
    :cond_7
    if-le v6, v4, :cond_0

    .line 883
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 889
    :cond_8
    if-ne v6, v4, :cond_9

    if-ge v4, v13, :cond_9

    .line 891
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 895
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    .line 896
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 899
    :cond_9
    if-ne v6, v4, :cond_a

    .line 901
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-gt v12, v14, :cond_0

    .line 902
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 906
    :cond_a
    if-ge v6, v4, :cond_b

    if-le v6, v13, :cond_b

    .line 908
    const/4 v14, 0x1

    if-le v7, v14, :cond_0

    .line 909
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 913
    :cond_b
    if-ge v6, v4, :cond_c

    if-lt v6, v13, :cond_0

    .line 915
    :cond_c
    if-le v6, v4, :cond_d

    if-gt v6, v13, :cond_0

    .line 917
    :cond_d
    if-le v6, v4, :cond_0

    if-ge v6, v13, :cond_0

    .line 919
    if-ge v7, v3, :cond_0

    .line 920
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 859
    .end local v7           #index:I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 929
    .end local v1           #child:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 930
    .restart local v1       #child:Landroid/view/View;
    if-eqz v8, :cond_10

    .line 931
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/TaskInfo;

    iget v14, v14, Lcom/htc/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto/16 :goto_0

    .line 933
    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/TaskInfo;

    iget v7, v14, Lcom/htc/widget/TaskInfo;->taskOrder:I

    goto/16 :goto_0
.end method

.method private gInit(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/Gallery;->mDragger:Lcom/htc/widget/DragController;

    .line 125
    iput-boolean v6, p0, Lcom/htc/widget/CarouselWidget;->mMemoryMode:Z

    .line 126
    const/16 v1, 0x3e9

    iput v1, p0, Lcom/htc/widget/Gallery;->mState:I

    .line 128
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->initFlags()V

    .line 130
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 132
    .local v0, resource:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/widget/CarouselWidget;->mOrientation:I

    .line 134
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    if-gez v1, :cond_0

    .line 135
    const v1, 0x205006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    .line 137
    :cond_0
    const v1, 0x2080036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 139
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    if-gez v1, :cond_1

    .line 140
    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    .line 142
    :cond_1
    iget-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    iget-object v3, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    iget v5, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    iget v4, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private getLocationFromPos(I[I)V
    .locals 4
    .parameter "pos"
    .parameter "loc"

    .prologue
    const/4 v3, 0x0

    .line 733
    invoke-virtual {p0, v3}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 735
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 736
    aget v0, p2, v3

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    aput v0, p2, v3

    .line 739
    :goto_0
    return-void

    .line 738
    :cond_0
    const/4 v0, 0x1

    aget v1, p2, v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

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

    .line 313
    iget-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mIsInit:Z

    if-ne v1, v2, :cond_0

    .line 323
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 318
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 319
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "There should be AT LEAST ONE element in the TAB."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_1
    iput-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->mIsInit:Z

    goto :goto_0
.end method

.method private isDrawRect(I)Z
    .locals 4
    .parameter "xy"

    .prologue
    const/4 v0, 0x1

    const/high16 v3, 0x3f00

    .line 427
    iget-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v1, :cond_2

    .line 429
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 433
    iput p1, p0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    goto :goto_0

    .line 439
    :cond_2
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mRectTop:I

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mRectTop:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 441
    :cond_3
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mRectTop:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mRectTop:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 443
    iput p1, p0, Lcom/htc/widget/CarouselWidget;->mRectTop:I

    goto :goto_0

    .line 447
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveIndicator(II)V
    .locals 3
    .parameter "scrolledXY"
    .parameter "overlap_pos"

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1073
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1075
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1077
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v1

    .line 1078
    .local v1, shrinkedPos:I
    if-gt p2, v1, :cond_1

    .line 1080
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1081
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1082
    invoke-virtual {p0, p2}, Lcom/htc/widget/CarouselWidget;->setIndicatorIndex(I)V

    .line 1090
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->startWaveRunnable()V

    .line 1117
    .end local v1           #shrinkedPos:I
    :cond_0
    :goto_1
    return-void

    .line 1086
    .restart local v1       #shrinkedPos:I
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1087
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1088
    invoke-virtual {p0, p2}, Lcom/htc/widget/CarouselWidget;->setIndicatorIndex(I)V

    goto :goto_0

    .line 1093
    .end local v1           #shrinkedPos:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne p2, v2, :cond_0

    .line 1095
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1096
    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1100
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v1

    .line 1101
    .restart local v1       #shrinkedPos:I
    if-gt p2, v1, :cond_3

    .line 1103
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1104
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1105
    invoke-virtual {p0, p2}, Lcom/htc/widget/CarouselWidget;->setIndicatorIndex(I)V

    .line 1113
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->startWaveRunnable()V

    goto :goto_1

    .line 1109
    :cond_3
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1110
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1111
    invoke-virtual {p0, p2}, Lcom/htc/widget/CarouselWidget;->setIndicatorIndex(I)V

    goto :goto_2
.end method

.method private removeIndicator()V
    .locals 1

    .prologue
    .line 1168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mShowIndicator:Z

    .line 1169
    return-void
.end method

.method private setOrientation()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->display:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselWidget;->display:Landroid/view/Display;

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    .line 87
    return-void
.end method

.method private startReduceCountAnimation()V
    .locals 3

    .prologue
    .line 1456
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 1457
    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v0

    .line 1459
    .local v0, orgWidthHeight:I
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 1460
    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v1

    .line 1462
    .local v1, targetWidthHeight:I
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/CarouselWidget;->startWidthHeightAnimation(II)V

    .line 1463
    return-void

    .line 1457
    .end local v0           #orgWidthHeight:I
    .end local v1           #targetWidthHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v0

    goto :goto_0

    .line 1460
    .restart local v0       #orgWidthHeight:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1179
    const/4 v0, 0x1

    return v0
.end method

.method cancelAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mCancelAnimation:Z

    .line 1468
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode3layout:Z

    .line 1469
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mShowIndicator:Z

    .line 1470
    invoke-super {p0}, Lcom/htc/widget/Gallery;->cancelAnimation()V

    .line 1471
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 620
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 621
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1287
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispatchSetSelected(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->dispatchSetSelected(Z)V

    return-void
.end method

.method doAnimationForDifferentTarget(Lcom/htc/widget/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 660
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    .line 661
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    iput-object v0, p0, Lcom/htc/widget/CarouselWidget;->mAdapter:Lcom/htc/widget/BinAdapter;

    .line 662
    iput-object p1, p0, Lcom/htc/widget/CarouselWidget;->mTarget:Lcom/htc/widget/DropTarget;

    .line 668
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->startWaveRunnable()V

    .line 670
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 599
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->draw(Landroid/graphics/Canvas;)V

    .line 601
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsDrop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsRemove:Z

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDragger:Lcom/htc/widget/DragController;

    check-cast v0, Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->removeIndicator()V

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsRemove:Z

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselWidget;->drawDivider(Landroid/graphics/Canvas;)V

    .line 611
    :cond_1
    :goto_0
    return-void

    .line 609
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 610
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselWidget;->drawDivider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public enableSecondBackground(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1476
    return-void
.end method

.method public bridge synthetic forceStopPartialFling()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/htc/widget/Gallery;->forceStopPartialFling()V

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method getStateWidget()I
    .locals 1

    .prologue
    .line 1390
    iget v0, p0, Lcom/htc/widget/Gallery;->mState:I

    return v0
.end method

.method public getWidgetHeight()I
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getWidgetWidth()I
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method initFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsDrop:Z

    .line 307
    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsRemove:Z

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsSuccessful:Z

    .line 309
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    .line 310
    return-void
.end method

.method initLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 91
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    if-gez v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x205006b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 100
    .local v0, lparams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    iget-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    :cond_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 104
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x50

    :goto_1
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 106
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .end local v0           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/high16 v1, 0x300

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselWidget;->setScrollBarStyle(I)V

    .line 111
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v1, :cond_6

    const-string v1, "common_app_bkg_down_src"

    :goto_2
    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_7

    const v2, 0x2080039

    :goto_3
    invoke-static {v3, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselWidget;->setBackgroundResource(I)V

    .line 114
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/htc/widget/CarouselWidget;->setPadding(IIII)V

    .line 116
    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselWidget;->setSpacing(I)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->forceLayout()V

    .line 118
    invoke-virtual {p0, v5}, Lcom/htc/widget/CarouselWidget;->setFocusable(Z)V

    .line 119
    invoke-virtual {p0, v5}, Lcom/htc/widget/CarouselWidget;->setFocusableInTouchMode(Z)V

    .line 120
    return-void

    .line 100
    .restart local v0       #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    goto :goto_0

    .line 104
    :cond_5
    const/4 v2, 0x5

    goto :goto_1

    .line 111
    .end local v0           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const-string v1, "common_app_bkg_down_land_src"

    goto :goto_2

    :cond_7
    const v2, 0x2080148

    goto :goto_3
.end method

.method isDragging()Z
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->isDragging()Z

    move-result v0

    .line 1398
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

    .line 329
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mDragMode3layout:Z

    if-eqz v0, :cond_0

    .line 330
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode3layout:Z

    .line 331
    invoke-direct {p0}, Lcom/htc/widget/CarouselWidget;->startReduceCountAnimation()V

    .line 333
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/Gallery;->layout(IZ)V

    .line 335
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsDrop:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsRemove:Z

    if-nez v0, :cond_1

    .line 336
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mIsDrop:Z

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsRemove:Z

    .line 339
    :cond_1
    return-void
.end method

.method public bridge synthetic offsetChildrenTopAndBottom(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->offsetChildrenTopAndBottom(I)V

    return-void
.end method

.method protected onAnimationEnd()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x1

    .line 680
    iget-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->skipAnimationEnd:Z

    if-eqz v1, :cond_0

    .line 682
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 684
    const-string v1, "Carousel"

    const-string v2, "enable skipAnimationEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :goto_0
    return-void

    .line 691
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/BinAdapter;

    .line 693
    .local v13, adapter:Lcom/htc/widget/BinAdapter;
    invoke-virtual {v13}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    .line 694
    .local v0, handle:Lcom/htc/content/NotifyingAsyncQueryHandler;
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-ne v1, v14, :cond_3

    .line 695
    if-eqz v0, :cond_2

    .line 696
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 697
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/htc/widget/CarouselWidget;->mToPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 702
    iput-boolean v14, p0, Lcom/htc/widget/CarouselWidget;->mIsDrop:Z

    .line 725
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->realign()V

    .line 727
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    goto :goto_0

    .line 700
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 703
    :cond_3
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 704
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 705
    .restart local v4       #values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 706
    const-string v1, "task_order"

    iget v2, p0, Lcom/htc/widget/CarouselWidget;->mToPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    if-eqz v0, :cond_4

    .line 708
    const/16 v7, 0x3ea

    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mToPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/widget/CarouselWidget;->mDragId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v0

    move-object v10, v4

    move-object v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 712
    iput-boolean v14, p0, Lcom/htc/widget/CarouselWidget;->mIsDrop:Z

    goto :goto_1

    .line 710
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 713
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_5
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 714
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mTarget:Lcom/htc/widget/DropTarget;

    instance-of v1, v1, Lcom/htc/widget/BinGridView;

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/htc/widget/Gallery;->mDragger:Lcom/htc/widget/DragController;

    check-cast v1, Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->setNextTab()V

    .line 717
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mTarget:Lcom/htc/widget/DropTarget;

    check-cast v1, Lcom/htc/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/widget/BinGridView;->addtoDB()V

    .line 719
    iget-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mCancelAnimation:Z

    if-nez v1, :cond_1

    .line 720
    iput-boolean v14, p0, Lcom/htc/widget/CarouselWidget;->mDragMode3layout:Z

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const v5, 0x205006b

    const/4 v3, -0x1

    const/4 v7, 0x0

    .line 153
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 154
    invoke-direct {p0}, Lcom/htc/widget/CarouselWidget;->setOrientation()V

    .line 156
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 159
    .local v1, resource:Landroid/content/res/Resources;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 162
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iget v4, p0, Lcom/htc/widget/CarouselWidget;->mOrientation:I

    if-eq v2, v4, :cond_3

    .line 164
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setOrientationChangedFlag(Z)V

    .line 165
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/htc/widget/CarouselWidget;->mOrientation:I

    .line 167
    iget v2, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    if-gez v2, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 175
    .local v0, lparams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 176
    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    :cond_1
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 179
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x50

    :goto_1
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 181
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    .end local v0           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_8

    const-string v2, "common_app_bkg_down_src"

    :goto_2
    iget-boolean v3, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v3, :cond_9

    const v3, 0x2080039

    :goto_3
    invoke-static {v4, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setBackgroundResource(I)V

    .line 188
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/htc/widget/CarouselWidget;->setPadding(IIII)V

    .line 190
    iget v2, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    if-gez v2, :cond_4

    .line 191
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    .line 193
    :cond_4
    const v2, 0x2080036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 195
    iget v2, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    if-gez v2, :cond_5

    .line 196
    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    .line 198
    :cond_5
    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_a

    .line 199
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    iget-object v4, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    iget v6, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 203
    :goto_4
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->initFlags()V

    .line 204
    return-void

    .line 175
    .restart local v0       #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    iget v2, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    goto :goto_0

    .line 179
    :cond_7
    const/4 v3, 0x5

    goto :goto_1

    .line 185
    .end local v0           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    const-string v2, "common_app_bkg_down_land_src"

    goto :goto_2

    :cond_9
    const v3, 0x2080148

    goto :goto_3

    .line 201
    :cond_a
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    iget v4, p0, Lcom/htc/widget/CarouselWidget;->widgetSpace:I

    iget v5, p0, Lcom/htc/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4
.end method

.method public bridge synthetic onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDragEnter(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/htc/widget/CarouselWidget;->initMember()V

    .line 1065
    invoke-direct {p0}, Lcom/htc/widget/CarouselWidget;->createGreenIndicator()V

    .line 1066
    return-void
.end method

.method public onDragExit(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1174
    invoke-direct {p0}, Lcom/htc/widget/CarouselWidget;->removeIndicator()V

    .line 1175
    return-void
.end method

.method public onDragOver(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 11
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1121
    move-object v0, p0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/CarouselWidget;->findInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v10

    .line 1123
    .local v10, pos:I
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v0, :cond_3

    .line 1125
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getScrollX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, v0, v10}, Lcom/htc/widget/CarouselWidget;->moveIndicator(II)V

    .line 1127
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1128
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->scrollRight()V

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getRight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1131
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v7

    .line 1132
    .local v7, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 1134
    .local v8, lastPos:I
    sub-int v0, v8, v7

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1135
    .local v9, lastVisView:Landroid/view/View;
    if-eqz v9, :cond_2

    .line 1137
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1138
    .local v6, anchor:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v6, v0, :cond_0

    .line 1141
    .end local v6           #anchor:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->scrollLeft()V

    goto :goto_0

    .line 1146
    .end local v7           #firstVisPos:I
    .end local v8           #lastPos:I
    .end local v9           #lastVisView:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getScrollY()I

    move-result v0

    add-int/2addr v0, p3

    invoke-direct {p0, v0, v10}, Lcom/htc/widget/CarouselWidget;->moveIndicator(II)V

    .line 1148
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p3, v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 1149
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->scrollBottom()V

    goto :goto_0

    .line 1150
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getBottom()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    if-le p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1152
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v7

    .line 1153
    .restart local v7       #firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 1155
    .restart local v8       #lastPos:I
    sub-int v0, v8, v7

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1156
    .restart local v9       #lastVisView:Landroid/view/View;
    if-eqz v9, :cond_5

    .line 1158
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1159
    .restart local v6       #anchor:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v6, v0, :cond_0

    .line 1162
    .end local v6           #anchor:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->scrollTop()V

    goto/16 :goto_0
.end method

.method public onDrop(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->initFlags()V

    move-object v0, p0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 745
    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/CarouselWidget;->findInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v10

    .local v10, pos:I
    move-object/from16 v8, p6

    .line 746
    check-cast v8, Lcom/htc/widget/TaskInfo;

    .line 747
    .local v8, info:Lcom/htc/widget/TaskInfo;
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/BinAdapter;

    .line 748
    .local v7, adapter:Lcom/htc/widget/BinAdapter;
    invoke-virtual {v7}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    .line 749
    .local v0, handle:Lcom/htc/content/NotifyingAsyncQueryHandler;
    invoke-virtual {v7}, Lcom/htc/widget/BinAdapter;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 750
    .local v11, uri:Landroid/net/Uri;
    iput-object v7, p0, Lcom/htc/widget/CarouselWidget;->mAdapter:Lcom/htc/widget/BinAdapter;

    .line 751
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 753
    .local v9, loc:[I
    check-cast p1, Lcom/htc/widget/DropTarget;

    .end local p1
    if-eq p0, p1, :cond_1

    .line 754
    iput-object v11, p0, Lcom/htc/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    .line 755
    iput v10, p0, Lcom/htc/widget/CarouselWidget;->mToPos:I

    .line 756
    iget-wide v1, v8, Lcom/htc/widget/TaskInfo;->_id:J

    iput-wide v1, p0, Lcom/htc/widget/CarouselWidget;->mDragId:J

    .line 757
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    .line 759
    invoke-direct {p0, v10, v9}, Lcom/htc/widget/CarouselWidget;->getLocationFromPos(I[I)V

    .line 760
    iget-object v1, p0, Lcom/htc/widget/Gallery;->mDragger:Lcom/htc/widget/DragController;

    check-cast v1, Lcom/htc/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v5, 0x1

    aget v5, v9, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 763
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->onAnimationEnd()V

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 771
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

    .line 772
    .local v3, reorderUri:Landroid/net/Uri;
    const-string v1, "reorder_task"

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 774
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v8, Lcom/htc/widget/TaskInfo;->_id:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "from"

    iget v5, p0, Lcom/htc/widget/CarouselWidget;->mDragItemPos:I

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

    .line 780
    iput-object v3, p0, Lcom/htc/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    .line 781
    iput v10, p0, Lcom/htc/widget/CarouselWidget;->mToPos:I

    .line 782
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    .line 784
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mDragItemPos:I

    if-eq v1, v10, :cond_2

    .line 785
    invoke-direct {p0, v10, v9}, Lcom/htc/widget/CarouselWidget;->getLocationFromPos(I[I)V

    .line 786
    iget-object v1, p0, Lcom/htc/widget/Gallery;->mDragger:Lcom/htc/widget/DragController;

    check-cast v1, Lcom/htc/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v5, 0x1

    aget v5, v9, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 789
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->onAnimationEnd()V

    .line 792
    :cond_2
    if-eqz v0, :cond_3

    .line 793
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mDragItemPos:I

    if-ne v1, v10, :cond_0

    .line 794
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 795
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 796
    const/16 v1, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/htc/widget/Gallery;->mDragger:Lcom/htc/widget/DragController;

    check-cast v1, Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->removeIndicator()V

    goto/16 :goto_0

    .line 800
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
    .line 629
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsSuccessful:Z

    if-nez v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDragger:Lcom/htc/widget/DragController;

    check-cast v0, Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->removeIndicator()V

    .line 635
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    .line 637
    :cond_1
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 5
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v4, 0x0

    .line 644
    iput-boolean p2, p0, Lcom/htc/widget/CarouselWidget;->mIsSuccessful:Z

    .line 645
    if-nez p2, :cond_1

    .line 646
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 647
    .local v0, loc:[I
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 648
    iget-object v1, p0, Lcom/htc/widget/Gallery;->mDragger:Lcom/htc/widget/DragController;

    check-cast v1, Lcom/htc/widget/CarouselHost;

    aget v2, v0, v4

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 650
    if-eqz p1, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x20401d4

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 657
    .end local v0           #loc:[I
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 654
    .restart local p1
    :cond_1
    check-cast p1, Lcom/htc/widget/DragSource;

    .end local p1
    if-eq p1, p0, :cond_2

    .line 655
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 342
    invoke-virtual {p0, p0}, Lcom/htc/widget/CarouselWidget;->setOnItemLongClickListener(Lcom/htc/widget/AdapterView$OnItemLongClickListener;)V

    .line 343
    invoke-virtual {p0, p0}, Lcom/htc/widget/CarouselWidget;->setOnItemClickListener(Lcom/htc/widget/AdapterView$OnItemClickListener;)V

    .line 344
    return-void
.end method

.method public bridge synthetic onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1223
    .local p1, parent:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    iget v2, p0, Lcom/htc/widget/Gallery;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 1240
    :goto_0
    return-void

    .line 1225
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/TaskInfo;

    .line 1226
    .local v0, info:Lcom/htc/widget/TaskInfo;
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget-object v3, v0, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 1229
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 1230
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

    .line 1233
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 1234
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto :goto_0

    .line 1223
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 354
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v2

    .line 380
    :goto_0
    return v0

    .line 357
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 358
    goto :goto_0

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mMemoryMode:Z

    if-nez v0, :cond_3

    .line 362
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->openDrawer()V

    move v0, v2

    .line 363
    goto :goto_0

    .line 366
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/TaskInfo;

    iget v0, v0, Lcom/htc/widget/TaskInfo;->taskOrder:I

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemPos:I

    .line 367
    iput-object p2, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    .line 369
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mRectTop:I

    .line 370
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    .line 372
    iget v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselWidget;->setShrinkedPosition(I)V

    .line 373
    iget v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemPos:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 374
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->requestLayout()V

    .line 376
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->initFlags()V

    .line 377
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDragger:Lcom/htc/widget/DragController;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, p2, p0, v3, v1}, Lcom/htc/widget/DragController;->startDrag(Landroid/view/View;Lcom/htc/widget/DragSource;Ljava/lang/Object;I)V

    .line 378
    invoke-direct {p0}, Lcom/htc/widget/CarouselWidget;->initMember()V

    move v0, v2

    .line 380
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keycode"
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 1295
    iget-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_3

    .line 1297
    sparse-switch p1, :sswitch_data_0

    .line 1327
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v2, :cond_6

    .line 1329
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1331
    .local v0, content:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 1333
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    move-result v1

    .line 1334
    .local v1, handle:Z
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1385
    .end local v0           #content:Landroid/view/View;
    .end local v1           #handle:Z
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 1300
    :sswitch_1
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1302
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v2, :cond_1

    .line 1303
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/widget/FastScroller;->movePrevious()Z

    .line 1305
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1306
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1311
    :sswitch_2
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1313
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v2, :cond_2

    .line 1314
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/widget/FastScroller;->moveNext()Z

    .line 1316
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1317
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1342
    :cond_3
    sparse-switch p1, :sswitch_data_1

    .line 1372
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v2, :cond_6

    .line 1374
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1376
    .restart local v0       #content:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 1378
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    move-result v1

    .line 1379
    .restart local v1       #handle:Z
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1380
    goto :goto_0

    .line 1345
    .end local v0           #content:Landroid/view/View;
    .end local v1           #handle:Z
    :sswitch_3
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1347
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v2, :cond_4

    .line 1348
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/widget/FastScroller;->movePrevious()Z

    .line 1350
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1351
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1356
    :sswitch_4
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1358
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v2, :cond_5

    .line 1359
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/widget/FastScroller;->moveNext()Z

    .line 1361
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1362
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1385
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/htc/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1297
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1342
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
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method openDrawer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mMemoryMode:Z

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->open()V

    .line 390
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mCancelAnimation:Z

    .line 391
    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselWidget;->setOrientationChangedFlag(Z)V

    .line 393
    :cond_0
    return-void
.end method

.method public bridge synthetic partialFling(III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/Gallery;->partialFling(III)V

    return-void
.end method

.method public bridge synthetic partialFling(IIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/Gallery;->partialFling(IIIZ)V

    return-void
.end method

.method realign()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 1403
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getMaxCapacity()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 1409
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v0

    .line 1410
    .local v0, firstVisPos:I
    const/4 v1, -0x1

    .line 1412
    .local v1, lastPos:I
    const/4 v2, 0x0

    .line 1413
    .local v2, lastView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1415
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1416
    sub-int v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1419
    :cond_2
    iget-boolean v3, p0, Lcom/htc/widget/CarouselWidget;->isPortrait:Z

    if-eqz v3, :cond_7

    .line 1421
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1423
    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v8, :cond_3

    .line 1425
    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mToPos:I

    add-int/lit8 v4, v1, 0x2

    if-ne v3, v4, :cond_0

    .line 1426
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    .line 1428
    :cond_3
    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_4

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v7, :cond_0

    .line 1429
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    .line 1431
    :cond_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_6

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v5, :cond_0

    .line 1432
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    .line 1436
    :cond_7
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 1438
    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v8, :cond_8

    .line 1440
    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mToPos:I

    add-int/lit8 v4, v1, 0x2

    if-ne v3, v4, :cond_0

    .line 1441
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    .line 1443
    :cond_8
    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_9

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v5, :cond_9

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v7, :cond_0

    .line 1444
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    .line 1446
    :cond_a
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_b

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v5, :cond_0

    .line 1447
    :cond_b
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0
.end method

.method public scrollBottom()V
    .locals 2

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/widget/Gallery;->scrollBy(I)V

    .line 1201
    return-void
.end method

.method public bridge synthetic scrollBy(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->scrollBy(I)V

    return-void
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 1185
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/widget/Gallery;->scrollBy(I)V

    .line 1186
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/widget/Gallery;->scrollBy(I)V

    .line 1191
    return-void
.end method

.method public scrollTop()V
    .locals 2

    .prologue
    .line 1195
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/widget/Gallery;->scrollBy(I)V

    .line 1196
    return-void
.end method

.method public bridge synthetic setAnimationDuration(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->setAnimationDuration(I)V

    return-void
.end method

.method public bridge synthetic setCallbackDuringFling(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->setCallbackDuringFling(Z)V

    return-void
.end method

.method public bridge synthetic setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->setCallbackOnUnselectedItemClick(Z)V

    return-void
.end method

.method setCarouselHost(Lcom/htc/widget/CarouselHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    .line 1220
    return-void
.end method

.method setCountText(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "text"

    .prologue
    .line 1250
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1251
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1252
    .local v0, child:Landroid/widget/FrameLayout;
    const v2, 0x2020062

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1254
    .local v1, count:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1255
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/widget/CarouselWidget;->setCountTextVisibility(II)V

    .line 1260
    .end local v0           #child:Landroid/widget/FrameLayout;
    .end local v1           #count:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 1257
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
    .line 1263
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1264
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1265
    .local v0, child:Landroid/widget/FrameLayout;
    const v2, 0x2020062

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1267
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

    .line 1268
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1273
    .end local v0           #child:Landroid/widget/FrameLayout;
    .end local v1           #count:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 1270
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
    .line 1208
    if-gez p1, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1211
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselWidget;->calibrateThumb(I)V

    .line 1214
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->requestLayout()V

    goto :goto_0
.end method

.method setDragger(Lcom/htc/widget/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/htc/widget/Gallery;->mDragger:Lcom/htc/widget/DragController;

    .line 398
    return-void
.end method

.method setDrawer(Lcom/htc/widget/CarouselSlidingDrawer;)V
    .locals 0
    .parameter "drawer"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    .line 403
    return-void
.end method

.method setEditorMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->setEditorMode(Z)V

    .line 1280
    :cond_0
    return-void
.end method

.method public bridge synthetic setGravity(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->setGravity(I)V

    return-void
.end method

.method setMemoryMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/htc/widget/CarouselWidget;->mMemoryMode:Z

    .line 348
    return-void
.end method

.method public bridge synthetic setSpacing(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->setSpacing(I)V

    return-void
.end method

.method setStateMode(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1243
    iput p1, p0, Lcom/htc/widget/Gallery;->mState:I

    .line 1244
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    .line 1245
    .local v0, adapter:Lcom/htc/widget/BinAdapter;
    invoke-virtual {v0, p1}, Lcom/htc/widget/BinAdapter;->setStateMode(I)V

    .line 1246
    return-void
.end method

.method public bridge synthetic setUnselectedAlpha(F)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->setUnselectedAlpha(F)V

    return-void
.end method

.method public bridge synthetic showContextMenu()Z
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/htc/widget/Gallery;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
