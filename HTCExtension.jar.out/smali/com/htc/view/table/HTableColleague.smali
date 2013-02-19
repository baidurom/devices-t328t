.class public Lcom/htc/view/table/HTableColleague;
.super Lcom/htc/view/table/TableColleague;
.source "HTableColleague.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HTableColleague"

.field private static final localLOGV:Z


# direct methods
.method public constructor <init>(Lcom/htc/view/table/TableView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/view/table/TableColleague;-><init>(Lcom/htc/view/table/TableView;)V

    .line 20
    const/16 v0, 0x30

    iput v0, p0, Lcom/htc/view/table/TableColleague;->mGravity:I

    .line 21
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v0, v0, Lcom/htc/view/table/TableView;->mRequestedHorizontalSpacing:I

    iput v0, p0, Lcom/htc/view/table/TableColleague;->mHorizontalSpacing:I

    .line 22
    return-void
.end method


# virtual methods
.method public detachOffScreenChildren(Z)V
    .locals 10
    .parameter "toLeft"

    .prologue
    .line 364
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v6

    .line 365
    .local v6, numChildren:I
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, v8, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 366
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 367
    .local v7, start:I
    const/4 v1, 0x0

    .line 369
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 370
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8}, Lcom/htc/view/table/TableView;->getPaddingLeft()I

    move-result v3

    .line 371
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 372
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8, v5}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 394
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    :cond_0
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8, v7, v1}, Lcom/htc/view/table/TableView;->detachViewsFromParent(II)V

    .line 396
    if-eqz p1, :cond_1

    .line 397
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v8, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, v8, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 399
    :cond_1
    return-void

    .line 376
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 377
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v8, v8, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v8, v0}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 371
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 381
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8}, Lcom/htc/view/table/TableView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9}, Lcom/htc/view/table/TableView;->getPaddingRight()I

    move-result v9

    sub-int v4, v8, v9

    .line 382
    .local v4, galleryRight:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 383
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8, v5}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 384
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 387
    move v7, v5

    .line 388
    add-int/lit8 v1, v1, 0x1

    .line 389
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v8, v8, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v8, v0}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 382
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method public findAndSetSelecionInt(IIII)Z
    .locals 5
    .parameter "direction"
    .parameter "startOfRowPos"
    .parameter "endOfRowPos"
    .parameter "selectedPosition"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 544
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 582
    :cond_1
    :goto_0
    return v0

    .line 546
    :sswitch_0
    if-le p4, p2, :cond_0

    .line 547
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v1, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 548
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v2, p4, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 549
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto :goto_0

    .line 555
    :sswitch_1
    if-ge p4, p3, :cond_0

    .line 556
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v1, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 557
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 558
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 559
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto :goto_0

    .line 564
    :sswitch_2
    if-lez p2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v2, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 566
    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v3, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    sub-int v3, p4, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 567
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto :goto_0

    .line 573
    :sswitch_3
    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v2}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 574
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v1, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 575
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/2addr v2, p4

    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 576
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto/16 :goto_0

    .line 544
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public fling(Lcom/htc/view/table/AbstractTableView$FlingRunnable;FF)V
    .locals 2
    .parameter "runnable"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 321
    neg-float v0, p2

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->startUsingVelocity(II)V

    .line 323
    return-void
.end method

.method public getCenterOfTable()I
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/view/table/TableView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/view/table/TableView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/view/table/TableView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDefaultChildLayoutParams()Lcom/htc/view/table/AbstractTableView$LayoutParams;
    .locals 4

    .prologue
    .line 170
    new-instance v0, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/view/table/AbstractTableView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public getFadingEdgeLength()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->getHorizontalFadingEdgeLength()I

    move-result v0

    return v0
.end method

.method public getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 407
    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 408
    .local v3, extremeItemPosition:I
    :goto_0
    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v7, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v7, v7, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    sub-int v7, v3, v7

    invoke-virtual {v6, v7}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 410
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 456
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 407
    goto :goto_0

    .line 416
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/view/table/HTableColleague;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 417
    .local v2, extremeChildCenter:I
    invoke-virtual {p0}, Lcom/htc/view/table/HTableColleague;->getCenterOfTable()I

    move-result v4

    .line 419
    .local v4, galleryCenter:I
    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v6, v6, Lcom/htc/view/table/AbstractTableView;->isScrollOverBoundary:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/htc/view/table/TableColleague;->mCloseBouncing:Z

    if-nez v6, :cond_6

    .line 421
    if-eqz p1, :cond_4

    .line 422
    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    sub-int v0, v6, v2

    .line 423
    .local v0, centerDifference:I
    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    if-le v2, v6, :cond_0

    .line 427
    if-gt v2, v4, :cond_3

    .line 428
    div-int/lit8 p2, p2, 0x2

    .line 430
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 432
    .end local v0           #centerDifference:I
    :cond_4
    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    sub-int v0, v6, v2

    .line 433
    .restart local v0       #centerDifference:I
    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    if-ge v2, v6, :cond_0

    .line 437
    if-lt v2, v4, :cond_5

    .line 438
    div-int/lit8 p2, p2, 0x2

    .line 440
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 445
    .end local v0           #centerDifference:I
    :cond_6
    if-eqz p1, :cond_8

    .line 446
    if-le v2, v4, :cond_0

    .line 454
    :cond_7
    sub-int v0, v4, v2

    .line 456
    .restart local v0       #centerDifference:I
    if-eqz p1, :cond_9

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 450
    .end local v0           #centerDifference:I
    :cond_8
    if-lt v2, v4, :cond_7

    goto :goto_1

    .line 456
    .restart local v0       #centerDifference:I
    :cond_9
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public getOrnBottom(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 57
    iget v0, p1, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getOrnBottom(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    return v0
.end method

.method public getOrnGravity()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/htc/view/table/TableColleague;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    sparse-switch v0, :sswitch_data_0

    .line 267
    iget v0, p0, Lcom/htc/view/table/TableColleague;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    :goto_0
    return v0

    .line 263
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 265
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 261
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public getOrnHeight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOrnHeight(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 145
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public getOrnLeft(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 30
    iget v0, p1, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getOrnLeft(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getOrnLeftRightSpacing()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/htc/view/table/TableColleague;->mVerticalSpacing:I

    return v0
.end method

.method public getOrnMeasureSpec(II)Lcom/htc/view/table/TableColleague$OrnMeasureSpec;
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 154
    new-instance v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;

    invoke-direct {v0}, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;-><init>()V

    .line 155
    .local v0, spec:Lcom/htc/view/table/TableColleague$OrnMeasureSpec;
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMode:I

    .line 156
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMode:I

    .line 157
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    .line 158
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    .line 159
    iput p2, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMeasureSpec:I

    .line 160
    iput p1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMeasureSpec:I

    .line 161
    return-object v0
.end method

.method public getOrnMeasuredHeight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getOrnMeasuredWidth(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getOrnRequestedWidthSpacing()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v0, v0, Lcom/htc/view/table/TableView;->mRequestedVerticalSpacing:I

    return v0
.end method

.method public getOrnRight(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 39
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getOrnRight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    return v0
.end method

.method public getOrnTop(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 48
    iget v0, p1, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getOrnTop(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOrnTopBottomSpacing()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/htc/view/table/TableColleague;->mHorizontalSpacing:I

    return v0
.end method

.method public getOrnWidth(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getOrnWidth(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 136
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getScrollbarWidth()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->getHorizontalFadingEdgeLength()I

    move-result v0

    return v0
.end method

.method public layoutView(Landroid/view/View;IIII)V
    .locals 0
    .parameter "view"
    .parameter "ornLeft"
    .parameter "ornTop"
    .parameter "ornRight"
    .parameter "ornBottom"

    .prologue
    .line 277
    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    .line 278
    return-void
.end method

.method public measureView(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "ornWidthMeasureSpec"
    .parameter "ornHeightMeasureSpec"

    .prologue
    .line 180
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    .line 181
    return-void
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 286
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 287
    return-void
.end method

.method public offsetOrnChildrenTopAndBottom(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 307
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 309
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 310
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, v1}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 311
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 295
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 296
    return-void
.end method

.method public scrollAmount(Lcom/htc/view/table/AbstractTableView$FlingRunnable;I)V
    .locals 1
    .parameter "runnable"
    .parameter "scrollAmount"

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->startUsingDistance(II)V

    .line 488
    return-void
.end method

.method public scrollIntoSlots(Lcom/htc/view/table/AbstractTableView$FlingRunnable;)V
    .locals 9
    .parameter "runnable"

    .prologue
    const/4 v8, 0x0

    .line 498
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->getAllVisibleViews()[Landroid/view/View;

    move-result-object v2

    .line 499
    .local v2, children:[Landroid/view/View;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-gtz v5, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v5, v5, Lcom/htc/view/table/AbstractTableView;->scrollControl:Lcom/htc/view/ScrollControl;

    if-nez v5, :cond_2

    .line 501
    const-string v5, "TableScroll"

    const-string v6, "scrollIntoSlot(): tableView.scrollControl == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 503
    :cond_2
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v5, v5, Lcom/htc/view/table/AbstractTableView;->scrollControl:Lcom/htc/view/ScrollControl;

    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-interface {v5, v2, v6}, Lcom/htc/view/ScrollControl;->getCenterView([Landroid/view/View;I)Lcom/htc/view/ScrollControl$CenterView;

    move-result-object v1

    .line 505
    .local v1, centerView:Lcom/htc/view/ScrollControl$CenterView;
    if-nez v1, :cond_3

    .line 506
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->onFinishedMovement()V

    .line 507
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5, v8}, Lcom/htc/view/table/TableView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 510
    :cond_3
    iget-object v5, v1, Lcom/htc/view/ScrollControl$CenterView;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, Lcom/htc/view/ScrollControl$CenterView;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v1, Lcom/htc/view/ScrollControl$CenterView;->percentage:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 511
    .local v0, centerChildCenter:I
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->getWidth()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 512
    .local v4, targetCenter:I
    sub-int v3, v4, v0

    .line 513
    .local v3, scrollAmount:I
    if-eqz v3, :cond_4

    .line 514
    invoke-virtual {p0, p1, v3}, Lcom/htc/view/table/HTableColleague;->scrollAmount(Lcom/htc/view/table/AbstractTableView$FlingRunnable;I)V

    goto :goto_0

    .line 516
    :cond_4
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->onFinishedMovement()V

    .line 517
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5, v8}, Lcom/htc/view/table/TableView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method public scrollWithConstrain(IIZ)V
    .locals 5
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "isFling"

    .prologue
    const/4 v2, 0x0

    .line 527
    if-gez p1, :cond_1

    const/4 v1, 0x1

    .line 529
    .local v1, toLeft:Z
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/htc/view/table/HTableColleague;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 530
    .local v0, newDeltaX:I
    if-eq v0, p1, :cond_0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 532
    const-string v3, "TableScroll"

    const-string v4, "newDeltaX != deltaX && newDeltaX == 0, trackMotionScroll call endFling(false)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v3, v3, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {v3, v2}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->endFling(Z)V

    .line 535
    :cond_0
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, v0, v2}, Lcom/htc/view/table/TableView;->trackMotionScroll(II)V

    .line 536
    return-void

    .end local v0           #newDeltaX:I
    .end local v1           #toLeft:Z
    :cond_1
    move v1, v2

    .line 527
    goto :goto_0
.end method

.method public setCloseBouncing(Z)V
    .locals 0
    .parameter "close"

    .prologue
    .line 591
    iput-boolean p1, p0, Lcom/htc/view/table/TableColleague;->mCloseBouncing:Z

    .line 592
    return-void
.end method

.method public setOrnLeftRightSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 207
    iput p1, p0, Lcom/htc/view/table/TableColleague;->mVerticalSpacing:I

    .line 208
    return-void
.end method

.method public setOrnTopBottomSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 225
    iput p1, p0, Lcom/htc/view/table/TableColleague;->mHorizontalSpacing:I

    .line 226
    return-void
.end method

.method public setTableViewMeasuredDimension(II)V
    .locals 1
    .parameter "ornMeasuredWidth"
    .parameter "ornMeasuredHeight"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0, p2, p1}, Lcom/htc/view/table/TableView;->setMeasuredDimensionEx(II)V

    .line 244
    return-void
.end method

.method public trackMotionScrollOrn(II)V
    .locals 4
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    if-gez p1, :cond_0

    move v0, v1

    .line 344
    .local v0, toLeft:Z
    :goto_0
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, p1}, Lcom/htc/view/table/TableView;->offsetChildrenLeftAndRight(I)V

    .line 345
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, v1}, Lcom/htc/view/table/TableView;->blockLayoutRequests(Z)V

    .line 346
    invoke-virtual {p0, v0}, Lcom/htc/view/table/HTableColleague;->detachOffScreenChildren(Z)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/htc/view/table/HTableColleague;->fillGap(Z)V

    .line 349
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->blockLayoutRequests(Z)V

    .line 350
    return-void

    .end local v0           #toLeft:Z
    :cond_0
    move v0, v2

    .line 332
    goto :goto_0
.end method
