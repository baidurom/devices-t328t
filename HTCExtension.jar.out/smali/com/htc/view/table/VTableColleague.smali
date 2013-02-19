.class public Lcom/htc/view/table/VTableColleague;
.super Lcom/htc/view/table/TableColleague;
.source "VTableColleague.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTableColleague"

.field private static final ahanLog:Z

.field private static final localLOGV:Z


# direct methods
.method public constructor <init>(Lcom/htc/view/table/TableView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/view/table/TableColleague;-><init>(Lcom/htc/view/table/TableView;)V

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/view/table/TableColleague;->mGravity:I

    .line 22
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v0, v0, Lcom/htc/view/table/TableView;->mRequestedVerticalSpacing:I

    iput v0, p0, Lcom/htc/view/table/TableColleague;->mVerticalSpacing:I

    .line 23
    return-void
.end method


# virtual methods
.method public detachOffScreenChildren(Z)V
    .locals 10
    .parameter "toTop"

    .prologue
    .line 359
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v6

    .line 360
    .local v6, numChildren:I
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, v8, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 361
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 362
    .local v7, start:I
    const/4 v1, 0x0

    .line 364
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 365
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8}, Lcom/htc/view/table/TableView;->getPaddingTop()I

    move-result v4

    .line 366
    .local v4, galleryTop:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 367
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8, v5}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 368
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    if-lt v8, v4, :cond_2

    .line 389
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryTop:I
    :cond_0
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8, v7, v1}, Lcom/htc/view/table/TableView;->detachViewsFromParent(II)V

    .line 391
    if-eqz p1, :cond_1

    .line 392
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v8, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, v8, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 395
    :cond_1
    return-void

    .line 371
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #galleryTop:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 372
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v8, v8, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v8, v0}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 366
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 376
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryTop:I
    .end local v5           #i:I
    :cond_3
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9}, Lcom/htc/view/table/TableView;->getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 377
    .local v3, galleryBottom:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 378
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8, v5}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 379
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    if-le v8, v3, :cond_0

    .line 382
    move v7, v5

    .line 383
    add-int/lit8 v1, v1, 0x1

    .line 384
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v8, v8, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v8, v0}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 377
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

    .line 689
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 727
    :cond_1
    :goto_0
    return v0

    .line 691
    :sswitch_0
    if-lez p2, :cond_0

    .line 692
    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v2, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 693
    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v3, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    sub-int v3, p4, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 694
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 695
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto :goto_0

    .line 700
    :sswitch_1
    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v2}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 701
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v1, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 702
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

    .line 703
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 704
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto :goto_0

    .line 709
    :sswitch_2
    if-le p4, p2, :cond_0

    .line 710
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v1, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 711
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v2, p4, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 712
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto :goto_0

    .line 718
    :sswitch_3
    if-ge p4, p3, :cond_0

    .line 719
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v1, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 720
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 721
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 722
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto/16 :goto_0

    .line 689
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
    .line 316
    const/4 v0, 0x0

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->startUsingVelocity(II)V

    .line 317
    return-void
.end method

.method public getCenterOfTable()I
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/view/table/TableView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/view/table/TableView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/view/table/TableView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 598
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDefaultChildLayoutParams()Lcom/htc/view/table/AbstractTableView$LayoutParams;
    .locals 4

    .prologue
    .line 171
    new-instance v0, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/view/table/AbstractTableView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public getFadingEdgeLength()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->getVerticalFadingEdgeLength()I

    move-result v0

    return v0
.end method

.method public getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToTop"
    .parameter "deltaY"

    .prologue
    const/4 v5, 0x0

    .line 403
    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 404
    .local v3, extremeItemPosition:I
    :goto_0
    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v7, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v7, v7, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    sub-int v7, v3, v7

    invoke-virtual {v6, v7}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 407
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 463
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 403
    goto :goto_0

    .line 413
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/view/table/VTableColleague;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 414
    .local v2, extremeChildCenter:I
    invoke-virtual {p0}, Lcom/htc/view/table/VTableColleague;->getCenterOfTable()I

    move-result v4

    .line 418
    .local v4, galleryCenter:I
    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v6, v6, Lcom/htc/view/table/AbstractTableView;->isScrollOverBoundary:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/htc/view/table/TableColleague;->mCloseBouncing:Z

    if-nez v6, :cond_6

    .line 420
    if-eqz p1, :cond_4

    .line 421
    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    sub-int v0, v6, v2

    .line 422
    .local v0, centerDifference:I
    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    if-le v2, v6, :cond_0

    .line 427
    if-gt v2, v4, :cond_3

    .line 428
    div-int/lit8 p2, p2, 0x2

    .line 431
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 433
    .end local v0           #centerDifference:I
    :cond_4
    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    sub-int v0, v6, v2

    .line 434
    .restart local v0       #centerDifference:I
    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    if-ge v2, v6, :cond_0

    .line 439
    if-lt v2, v4, :cond_5

    .line 440
    div-int/lit8 p2, p2, 0x2

    .line 443
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 448
    .end local v0           #centerDifference:I
    :cond_6
    if-eqz p1, :cond_8

    .line 449
    if-le v2, v4, :cond_0

    .line 461
    :cond_7
    sub-int v0, v4, v2

    .line 463
    .restart local v0       #centerDifference:I
    if-eqz p1, :cond_9

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 455
    .end local v0           #centerDifference:I
    :cond_8
    if-lt v2, v4, :cond_7

    goto :goto_1

    .line 463
    .restart local v0       #centerDifference:I
    :cond_9
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public getLimitedMotionScrollAmount2(ZI)I
    .locals 12
    .parameter "motionToTop"
    .parameter "deltaY"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 480
    const/4 v2, 0x0

    .line 481
    .local v2, extremeChild:Landroid/view/View;
    iget-boolean v9, p0, Lcom/htc/view/table/TableColleague;->mMultiStop:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/htc/view/table/TableColleague;->mStopExcept:I

    if-ltz v9, :cond_2

    .line 482
    if-eqz p1, :cond_4

    .line 483
    const/4 v6, 0x2

    .line 484
    .local v6, idx:I
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v6}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 486
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v6}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 487
    .local v8, willbeCenter:I
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 489
    .local v0, center:I
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    array-length v9, v9

    add-int/lit8 v7, v9, -0x1

    .line 490
    .local v7, stop_index:I
    :goto_0
    const/4 v9, -0x1

    if-le v7, v9, :cond_0

    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    aget v9, v9, v7

    if-ge v8, v9, :cond_0

    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    aget v9, v9, v7

    if-eq v0, v9, :cond_0

    .line 491
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 493
    :cond_0
    if-ltz v7, :cond_1

    iget v9, p0, Lcom/htc/view/table/TableColleague;->mStopExcept:I

    rsub-int/lit8 v9, v9, 0x3b

    iget-object v11, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    aget v11, v11, v7

    if-ne v9, v11, :cond_3

    .line 494
    :cond_1
    const/4 v2, 0x0

    .line 523
    .end local v0           #center:I
    .end local v6           #idx:I
    .end local v7           #stop_index:I
    .end local v8           #willbeCenter:I
    :cond_2
    :goto_1
    if-nez v2, :cond_8

    move v9, p2

    .line 583
    :goto_2
    return v9

    .line 496
    .restart local v0       #center:I
    .restart local v6       #idx:I
    .restart local v7       #stop_index:I
    .restart local v8       #willbeCenter:I
    :cond_3
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v10}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 497
    .local v4, firstChild:I
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v11, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    aget v11, v11, v7

    sub-int/2addr v11, v4

    invoke-virtual {v9, v11}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 502
    .end local v0           #center:I
    .end local v4           #firstChild:I
    .end local v6           #idx:I
    .end local v7           #stop_index:I
    .end local v8           #willbeCenter:I
    :cond_4
    const/4 v6, 0x0

    .line 503
    .restart local v6       #idx:I
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v6}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 505
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v6}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 506
    .restart local v8       #willbeCenter:I
    const/4 v7, 0x0

    .line 507
    .restart local v7       #stop_index:I
    :goto_3
    if-ge v7, v11, :cond_5

    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    aget v9, v9, v7

    if-le v8, v9, :cond_5

    .line 508
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 510
    :cond_5
    if-ge v7, v11, :cond_6

    iget v9, p0, Lcom/htc/view/table/TableColleague;->mStopExcept:I

    rsub-int/lit8 v9, v9, 0x3b

    iget-object v11, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    aget v11, v11, v7

    if-ne v9, v11, :cond_7

    .line 511
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 513
    :cond_7
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v10}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 514
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v10}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 515
    .restart local v4       #firstChild:I
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v11, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    aget v11, v11, v7

    sub-int/2addr v11, v4

    invoke-virtual {v9, v11}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 529
    .end local v4           #firstChild:I
    .end local v6           #idx:I
    .end local v7           #stop_index:I
    .end local v8           #willbeCenter:I
    :cond_8
    invoke-virtual {p0, v2}, Lcom/htc/view/table/VTableColleague;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    .line 530
    .local v3, extremeChildCenter:I
    invoke-virtual {p0}, Lcom/htc/view/table/VTableColleague;->getCenterOfTable()I

    move-result v5

    .line 533
    .local v5, galleryCenter:I
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v9, v9, Lcom/htc/view/table/AbstractTableView;->isScrollOverBoundary:Z

    if-eqz v9, :cond_e

    iget-boolean v9, p0, Lcom/htc/view/table/TableColleague;->mCloseBouncing:Z

    if-nez v9, :cond_e

    .line 534
    if-eqz p1, :cond_b

    .line 535
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v9, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    sub-int v9, v5, v9

    sub-int v1, v9, v3

    .line 536
    .local v1, centerDifference:I
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v9, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    sub-int v9, v5, v9

    if-gt v3, v9, :cond_9

    move v9, v10

    .line 538
    goto/16 :goto_2

    .line 540
    :cond_9
    if-gt v3, v5, :cond_a

    .line 541
    div-int/lit8 p2, p2, 0x2

    .line 543
    :cond_a
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_2

    .line 545
    .end local v1           #centerDifference:I
    :cond_b
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v9, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    add-int/2addr v9, v5

    sub-int v1, v9, v3

    .line 546
    .restart local v1       #centerDifference:I
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v9, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    add-int/2addr v9, v5

    if-lt v3, v9, :cond_c

    move v9, v10

    .line 548
    goto/16 :goto_2

    .line 550
    :cond_c
    if-lt v3, v5, :cond_d

    .line 551
    div-int/lit8 p2, p2, 0x2

    .line 553
    :cond_d
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_2

    .line 559
    .end local v1           #centerDifference:I
    :cond_e
    if-eqz p1, :cond_10

    .line 560
    if-ne v3, v5, :cond_f

    move v9, v10

    .line 561
    goto/16 :goto_2

    .line 563
    :cond_f
    if-ge v3, v5, :cond_12

    move v9, p2

    .line 564
    goto/16 :goto_2

    .line 569
    :cond_10
    sub-int v1, v5, v3

    .line 571
    .restart local v1       #centerDifference:I
    if-ne v3, v5, :cond_11

    move v9, v10

    .line 573
    goto/16 :goto_2

    .line 576
    :cond_11
    if-le v3, v5, :cond_12

    move v9, p2

    .line 577
    goto/16 :goto_2

    .line 581
    .end local v1           #centerDifference:I
    :cond_12
    sub-int v1, v5, v3

    .line 583
    .restart local v1       #centerDifference:I
    if-eqz p1, :cond_13

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_2

    :cond_13
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_2
.end method

.method public getOrnBottom(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 40
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getOrnBottom(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    return v0
.end method

.method public getOrnGravity()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/htc/view/table/TableColleague;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getOrnHeight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getOrnHeight(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 146
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getOrnLeft(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 49
    iget v0, p1, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getOrnLeft(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOrnLeftRightSpacing()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/htc/view/table/TableColleague;->mHorizontalSpacing:I

    return v0
.end method

.method public getOrnMeasureSpec(II)Lcom/htc/view/table/TableColleague$OrnMeasureSpec;
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 155
    new-instance v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;

    invoke-direct {v0}, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;-><init>()V

    .line 156
    .local v0, spec:Lcom/htc/view/table/TableColleague$OrnMeasureSpec;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMode:I

    .line 157
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMode:I

    .line 158
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    .line 159
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    .line 160
    iput p1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMeasureSpec:I

    .line 161
    iput p2, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMeasureSpec:I

    .line 162
    return-object v0
.end method

.method public getOrnMeasuredHeight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getOrnMeasuredWidth(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getOrnRequestedWidthSpacing()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v0, v0, Lcom/htc/view/table/TableView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getOrnRight(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 58
    iget v0, p1, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getOrnRight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    return v0
.end method

.method public getOrnTop(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 31
    iget v0, p1, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getOrnTop(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getOrnTopBottomSpacing()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/htc/view/table/TableColleague;->mVerticalSpacing:I

    return v0
.end method

.method public getOrnWidth(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOrnWidth(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 137
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public getScrollbarWidth()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->getVerticalScrollbarWidth()I

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
    .line 272
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 273
    return-void
.end method

.method public measureView(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "ornWidthMeasureSpec"
    .parameter "ornHeightMeasureSpec"

    .prologue
    .line 181
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 182
    return-void
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 281
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 282
    return-void
.end method

.method public offsetOrnChildrenTopAndBottom(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 302
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 304
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 305
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, v1}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 306
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 290
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 291
    return-void
.end method

.method public scrollAmount(Lcom/htc/view/table/AbstractTableView$FlingRunnable;I)V
    .locals 1
    .parameter "runnable"
    .parameter "scrollAmount"

    .prologue
    .line 616
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->startUsingDistance(II)V

    .line 617
    return-void
.end method

.method public scrollIntoSlots(Lcom/htc/view/table/AbstractTableView$FlingRunnable;)V
    .locals 9
    .parameter "runnable"

    .prologue
    const/4 v8, 0x0

    .line 628
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->getAllVisibleViews()[Landroid/view/View;

    move-result-object v2

    .line 629
    .local v2, children:[Landroid/view/View;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-gtz v5, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v5, v5, Lcom/htc/view/table/AbstractTableView;->scrollControl:Lcom/htc/view/ScrollControl;

    if-eqz v5, :cond_0

    .line 633
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v5, v5, Lcom/htc/view/table/AbstractTableView;->scrollControl:Lcom/htc/view/ScrollControl;

    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-interface {v5, v2, v6}, Lcom/htc/view/ScrollControl;->getCenterView([Landroid/view/View;I)Lcom/htc/view/ScrollControl$CenterView;

    move-result-object v1

    .line 636
    .local v1, centerView:Lcom/htc/view/ScrollControl$CenterView;
    if-nez v1, :cond_2

    .line 638
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->onFinishedMovement()V

    .line 639
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5, v8}, Lcom/htc/view/table/TableView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 642
    :cond_2
    iget-object v5, v1, Lcom/htc/view/ScrollControl$CenterView;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, Lcom/htc/view/ScrollControl$CenterView;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v1, Lcom/htc/view/ScrollControl$CenterView;->percentage:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 643
    .local v0, centerChildCenter:I
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 644
    .local v4, targetCenter:I
    sub-int v3, v4, v0

    .line 645
    .local v3, scrollAmount:I
    if-eqz v3, :cond_3

    .line 647
    invoke-virtual {p0, p1, v3}, Lcom/htc/view/table/VTableColleague;->scrollAmount(Lcom/htc/view/table/AbstractTableView$FlingRunnable;I)V

    goto :goto_0

    .line 650
    :cond_3
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->onFinishedMovement()V

    .line 651
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5, v8}, Lcom/htc/view/table/TableView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method public scrollWithConstrain(IIZ)V
    .locals 4
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "isFling"

    .prologue
    const/4 v2, 0x0

    .line 662
    if-gez p2, :cond_1

    const/4 v1, 0x1

    .line 667
    .local v1, toTop:Z
    :goto_0
    iget-boolean v3, p0, Lcom/htc/view/table/TableColleague;->mMultiStop:Z

    if-nez v3, :cond_3

    .line 668
    iget-boolean v3, p0, Lcom/htc/view/table/TableColleague;->mRepeatEnable:Z

    if-eqz v3, :cond_2

    move v0, p2

    .line 675
    .local v0, newDeltaY:I
    :goto_1
    if-eq v0, p2, :cond_0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 678
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v3, v3, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {v3, v2}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->endFling(Z)V

    .line 680
    :cond_0
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, v2, v0}, Lcom/htc/view/table/TableView;->trackMotionScroll(II)V

    .line 681
    return-void

    .end local v0           #newDeltaY:I
    .end local v1           #toTop:Z
    :cond_1
    move v1, v2

    .line 662
    goto :goto_0

    .line 668
    .restart local v1       #toTop:Z
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/htc/view/table/VTableColleague;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    goto :goto_1

    .line 670
    :cond_3
    iget v3, p0, Lcom/htc/view/table/TableColleague;->mStopExcept:I

    if-gez v3, :cond_5

    .line 671
    iget-boolean v3, p0, Lcom/htc/view/table/TableColleague;->mRepeatEnable:Z

    if-eqz v3, :cond_4

    move v0, p2

    .restart local v0       #newDeltaY:I
    :goto_2
    goto :goto_1

    .end local v0           #newDeltaY:I
    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/htc/view/table/VTableColleague;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    goto :goto_2

    .line 673
    :cond_5
    iget-boolean v3, p0, Lcom/htc/view/table/TableColleague;->mRepeatEnable:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0, v1, p2}, Lcom/htc/view/table/VTableColleague;->getLimitedMotionScrollAmount2(ZI)I

    move-result v0

    .restart local v0       #newDeltaY:I
    :goto_3
    goto :goto_1

    .end local v0           #newDeltaY:I
    :cond_6
    invoke-virtual {p0, v1, p2}, Lcom/htc/view/table/VTableColleague;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    goto :goto_3
.end method

.method public setCloseBouncing(Z)V
    .locals 0
    .parameter "close"

    .prologue
    .line 736
    iput-boolean p1, p0, Lcom/htc/view/table/TableColleague;->mCloseBouncing:Z

    .line 737
    return-void
.end method

.method public setOrnLeftRightSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 208
    iput p1, p0, Lcom/htc/view/table/TableColleague;->mHorizontalSpacing:I

    .line 209
    return-void
.end method

.method public setOrnTopBottomSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 226
    iput p1, p0, Lcom/htc/view/table/TableColleague;->mVerticalSpacing:I

    .line 227
    return-void
.end method

.method public setTableViewMeasuredDimension(II)V
    .locals 1
    .parameter "ornMeasuredWidth"
    .parameter "ornMeasuredHeight"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/view/table/TableView;->setMeasuredDimensionEx(II)V

    .line 245
    return-void
.end method

.method protected trackMotionScrollOrn(II)V
    .locals 4
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 327
    if-gez p2, :cond_0

    move v0, v1

    .line 339
    .local v0, toTop:Z
    :goto_0
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, p2}, Lcom/htc/view/table/TableView;->offsetChildrenTopAndBottom(I)V

    .line 340
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, v1}, Lcom/htc/view/table/TableView;->blockLayoutRequests(Z)V

    .line 341
    invoke-virtual {p0, v0}, Lcom/htc/view/table/VTableColleague;->detachOffScreenChildren(Z)V

    .line 343
    invoke-virtual {p0, v0}, Lcom/htc/view/table/VTableColleague;->fillGap(Z)V

    .line 344
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->blockLayoutRequests(Z)V

    .line 345
    return-void

    .end local v0           #toTop:Z
    :cond_0
    move v0, v2

    .line 327
    goto :goto_0
.end method
