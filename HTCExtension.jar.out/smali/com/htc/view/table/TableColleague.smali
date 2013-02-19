.class public abstract Lcom/htc/view/table/TableColleague;
.super Ljava/lang/Object;
.source "TableColleague.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/view/table/TableColleague$OrnMeasureSpec;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TableColleague"

.field private static final ahanLog:Z

.field private static final localLOGV:Z


# instance fields
.field protected mCloseBouncing:Z

.field protected mGravity:I

.field protected mHorizontalSpacing:I

.field protected mMultiStop:Z

.field protected mNumColumnRows:I

.field protected mOrnWidth:I

.field protected mReferenceView:Landroid/view/View;

.field protected mReferenceViewInSelectedRow:Landroid/view/View;

.field protected mRepeatEnable:Z

.field protected mScrollDownRight:Landroid/view/View;

.field protected mScrollUpLeft:Landroid/view/View;

.field mStopExcept:I

.field mStops:[I

.field protected mVerticalSpacing:I

.field protected tableView:Lcom/htc/view/table/TableView;


# direct methods
.method public constructor <init>(Lcom/htc/view/table/TableView;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v3, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 53
    iput v1, p0, Lcom/htc/view/table/TableColleague;->mHorizontalSpacing:I

    .line 58
    iput v1, p0, Lcom/htc/view/table/TableColleague;->mVerticalSpacing:I

    .line 68
    iput-object v2, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 73
    iput-object v2, p0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/TableColleague;->mCloseBouncing:Z

    .line 90
    iput-boolean v1, p0, Lcom/htc/view/table/TableColleague;->mRepeatEnable:Z

    .line 95
    iput-boolean v1, p0, Lcom/htc/view/table/TableColleague;->mMultiStop:Z

    .line 1445
    iput-object v2, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    .line 1476
    iput v3, p0, Lcom/htc/view/table/TableColleague;->mStopExcept:I

    .line 131
    iput-object p1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    .line 132
    return-void
.end method

.method private determineColumnRows(I)V
    .locals 7
    .parameter "availableSpace"

    .prologue
    const/4 v6, 0x1

    .line 1041
    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnRequestedWidthSpacing()I

    move-result v0

    .line 1042
    .local v0, ornRequestedWidthSpacing:I
    iget-object v4, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v3, v4, Lcom/htc/view/table/TableView;->mStretchMode:I

    .line 1043
    .local v3, stretchMode:I
    iget-object v4, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v4, Lcom/htc/view/table/TableView;->mRequestedOrnWidth:I

    .line 1045
    .local v1, requestedOrnWidth:I
    iget-object v4, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v4, v4, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1046
    if-lez v1, :cond_1

    .line 1048
    add-int v4, p1, v0

    add-int v5, v1, v0

    div-int/2addr v4, v5

    iput v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 1059
    :goto_0
    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    if-gtz v4, :cond_0

    .line 1060
    iput v6, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 1063
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 1071
    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    mul-int/2addr v4, v1

    sub-int v4, p1, v4

    iget v5, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v0

    sub-int v2, v4, v5

    .line 1073
    .local v2, spaceLeftOver:I
    packed-switch v3, :pswitch_data_1

    .line 1093
    .end local v2           #spaceLeftOver:I
    :goto_1
    return-void

    .line 1052
    :cond_1
    const/4 v4, 0x2

    iput v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    goto :goto_0

    .line 1056
    :cond_2
    iget-object v4, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v4, v4, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    iput v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    goto :goto_0

    .line 1066
    :pswitch_0
    iput v1, p0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    .line 1067
    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableColleague;->setOrnLeftRightSpacing(I)V

    goto :goto_1

    .line 1076
    .restart local v2       #spaceLeftOver:I
    :pswitch_1
    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    .line 1077
    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableColleague;->setOrnLeftRightSpacing(I)V

    goto :goto_1

    .line 1082
    :pswitch_2
    iput v1, p0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    .line 1083
    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    if-le v4, v6, :cond_3

    .line 1084
    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/lit8 v4, v4, -0x1

    div-int v4, v2, v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableColleague;->setOrnLeftRightSpacing(I)V

    goto :goto_1

    .line 1086
    :cond_3
    add-int v4, v0, v2

    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableColleague;->setOrnLeftRightSpacing(I)V

    goto :goto_1

    .line 1063
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1073
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getBottomSelectionPixel(IIIII)I
    .locals 3
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "numColumns"
    .parameter "rowStart"
    .parameter "itemCount"

    .prologue
    .line 171
    move v0, p0

    .line 172
    .local v0, bottomSelectionPixel:I
    add-int v1, p3, p2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, p4, -0x1

    if-ge v1, v2, :cond_0

    .line 173
    sub-int/2addr v0, p1

    .line 175
    :cond_0
    return v0
.end method

.method public static getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "rowStart"

    .prologue
    .line 148
    move v0, p0

    .line 149
    .local v0, topSelectionPixel:I
    if-lez p2, :cond_0

    .line 150
    add-int/2addr v0, p1

    .line 152
    :cond_0
    return v0
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "ornTop"
    .parameter "flow"
    .parameter "childrenoOrnLeft"
    .parameter "selected"
    .parameter "where"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 441
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 444
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/view/table/TableColleague;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 457
    .end local v1           #child:Landroid/view/View;
    .local v9, child:Landroid/view/View;
    :goto_0
    return-object v9

    .line 451
    .end local v9           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 452
    .restart local v1       #child:Landroid/view/View;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 455
    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/view/table/TableColleague;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 457
    .end local v1           #child:Landroid/view/View;
    .restart local v9       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private pinToBottom(I)V
    .locals 5
    .parameter "childrenBottom"

    .prologue
    .line 621
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v1

    .line 622
    .local v1, count:I
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v3, v3, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v4, v4, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 623
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 624
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 625
    .local v2, offset:I
    if-lez v2, :cond_0

    .line 626
    invoke-virtual {p0, v2}, Lcom/htc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    .line 629
    .end local v0           #bottom:I
    .end local v2           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 4
    .parameter "childrenTop"

    .prologue
    .line 611
    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, v2, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 612
    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 613
    .local v1, top:I
    sub-int v0, p1, v1

    .line 614
    .local v0, offset:I
    if-gez v0, :cond_0

    .line 615
    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    .line 618
    .end local v0           #offset:I
    .end local v1           #top:I
    :cond_0
    return-void
.end method


# virtual methods
.method protected adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v3

    if-le v3, p3, :cond_0

    .line 230
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    sub-int v1, v3, p2

    .line 234
    .local v1, spaceAbove:I
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v3

    sub-int v2, v3, p3

    .line 235
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 238
    .local v0, offset:I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    .line 240
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method protected adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    sub-int v1, p2, v3

    .line 201
    .local v1, spaceAbove:I
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v3

    sub-int v2, p3, v3

    .line 202
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 205
    .local v0, offset:I
    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    .line 207
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method public abstract detachOffScreenChildren(Z)V
.end method

.method protected fillDown(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextOrnTop"

    .prologue
    const/4 v8, 0x1

    .line 321
    const/4 v2, 0x0

    .line 324
    .local v2, selectedView:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v0

    .line 325
    .local v0, bottom:I
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v4

    .line 326
    .local v4, top:I
    sub-int v5, v0, v4

    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v6, v6, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v6

    sub-int v1, v5, v6

    .line 328
    .local v1, end:I
    :goto_0
    if-ge p2, v1, :cond_1

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v5, v5, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-ge p1, v5, :cond_1

    .line 331
    invoke-virtual {p0, p1, p2, v8}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v3

    .line 332
    .local v3, temp:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 333
    move-object v2, v3

    .line 336
    :cond_0
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v6

    add-int p2, v5, v6

    .line 338
    iget v5, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/2addr p1, v5

    .line 339
    goto :goto_0

    .line 341
    .end local v3           #temp:Landroid/view/View;
    :cond_1
    iget-boolean v5, p0, Lcom/htc/view/table/TableColleague;->mRepeatEnable:Z

    if-eqz v5, :cond_3

    if-ge p2, v1, :cond_3

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v5, v5, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-lt p1, v5, :cond_3

    .line 342
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v5, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v7, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v7, v7, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 343
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v5, v5, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    sub-int/2addr p1, v5

    .line 345
    :goto_1
    if-ge p2, v1, :cond_3

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v5, v5, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-ge p1, v5, :cond_3

    .line 348
    invoke-virtual {p0, p1, p2, v8}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v3

    .line 349
    .restart local v3       #temp:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 350
    move-object v2, v3

    .line 353
    :cond_2
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v6

    add-int p2, v5, v6

    .line 355
    iget v5, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/2addr p1, v5

    .line 356
    goto :goto_1

    .line 360
    .end local v3           #temp:Landroid/view/View;
    :cond_3
    return-object v2
.end method

.method protected fillFromBottom(II)Landroid/view/View;
    .locals 3
    .parameter "lastPosition"
    .parameter "nextOrnBottom"

    .prologue
    .line 890
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 891
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 893
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 894
    .local v0, invertedPosition:I
    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 896
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedOrnTop"
    .parameter "childrenOrnTop"
    .parameter "childrenOrnBottom"

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v2

    .line 516
    .local v2, fadingEdgeLength:I
    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v10, v12, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    .line 517
    .local v10, selectedPosition:I
    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 518
    .local v4, numColumns:I
    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v5

    .line 521
    .local v5, ornTopBottomSpacing:I
    const/4 v7, -0x1

    .line 523
    .local v7, rowEnd:I
    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v12, v12, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    .line 524
    rem-int v12, v10, v4

    sub-int v8, v10, v12

    .line 535
    .local v8, rowStart:I
    :goto_0
    move/from16 v0, p2

    invoke-static {v0, v2, v8}, Lcom/htc/view/table/TableColleague;->getTopSelectionPixel(III)I

    move-result v11

    .line 536
    .local v11, topSelectionPixel:I
    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v12, v12, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v0, p3

    invoke-static {v0, v2, v4, v8, v12}, Lcom/htc/view/table/TableColleague;->getBottomSelectionPixel(IIIII)I

    move-result v1

    .line 539
    .local v1, bottomSelectionPixel:I
    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v12, v12, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v7

    :goto_1
    const/4 v13, 0x1

    invoke-virtual {p0, v12, p1, v13}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v9

    .line 541
    .local v9, sel:Landroid/view/View;
    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v8, v12, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 543
    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 544
    .local v6, referenceView:Landroid/view/View;
    invoke-virtual {p0, v6, v11, v1}, Lcom/htc/view/table/TableColleague;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 545
    invoke-virtual {p0, v6, v11, v1}, Lcom/htc/view/table/TableColleague;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 547
    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v12, v12, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    .line 548
    sub-int v12, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-virtual {p0, v12, v13}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    .line 550
    add-int v12, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {p0, v12, v13}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 558
    :goto_2
    return-object v9

    .line 526
    .end local v1           #bottomSelectionPixel:I
    .end local v6           #referenceView:Landroid/view/View;
    .end local v8           #rowStart:I
    .end local v9           #sel:Landroid/view/View;
    .end local v11           #topSelectionPixel:I
    :cond_0
    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v12, v12, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v10

    .line 528
    .local v3, invertedSelection:I
    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v12, v12, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v7, v12, v13

    .line 529
    const/4 v12, 0x0

    sub-int v13, v7, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v1       #bottomSelectionPixel:I
    .restart local v11       #topSelectionPixel:I
    :cond_1
    move v12, v8

    .line 539
    goto :goto_1

    .line 552
    .restart local v6       #referenceView:Landroid/view/View;
    .restart local v9       #sel:Landroid/view/View;
    :cond_2
    add-int v12, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {p0, v12, v13}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 554
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-virtual {p0, v12, v13}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method protected fillFromTop(I)Landroid/view/View;
    .locals 4
    .parameter "nextOrnTop"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, v2, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 876
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, v2, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 877
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, v2, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget v3, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 881
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v0, p1}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected fillGap(Z)V
    .locals 7
    .parameter "down"

    .prologue
    .line 913
    iget v1, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 914
    .local v1, numColumns:I
    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v2

    .line 916
    .local v2, ornTopBottomSpacing:I
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 919
    .local v0, count:I
    if-eqz p1, :cond_2

    .line 920
    if-lez v0, :cond_1

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v5

    add-int v4, v5, v2

    .line 922
    .local v4, startOffset:I
    :goto_0
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v5, v5, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int v3, v5, v0

    .line 923
    .local v3, position:I
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v5, v5, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v5, :cond_0

    .line 924
    add-int/lit8 v5, v1, -0x1

    add-int/2addr v3, v5

    .line 926
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 941
    :goto_1
    return-void

    .line 920
    .end local v3           #position:I
    .end local v4           #startOffset:I
    :cond_1
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v5, v5, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v4

    goto :goto_0

    .line 929
    :cond_2
    if-lez v0, :cond_3

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v5

    sub-int v4, v5, v2

    .line 931
    .restart local v4       #startOffset:I
    :goto_2
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v3, v5, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 932
    .restart local v3       #position:I
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v5, v5, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v5, :cond_4

    .line 933
    sub-int/2addr v3, v1

    .line 937
    :goto_3
    invoke-virtual {p0, v3, v4}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    goto :goto_1

    .line 929
    .end local v3           #position:I
    .end local v4           #startOffset:I
    :cond_3
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnHeight(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v6, v6, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v6

    sub-int v4, v5, v6

    goto :goto_2

    .line 935
    .restart local v3       #position:I
    .restart local v4       #startOffset:I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3
.end method

.method protected fillSelection(II)Landroid/view/View;
    .locals 15
    .parameter "childrenOrnTop"
    .parameter "childrenOrnBottom"

    .prologue
    .line 567
    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v13}, Lcom/htc/view/table/TableView;->reconcileSelectedPosition()I

    move-result v11

    .line 568
    .local v11, selectedPosition:I
    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 569
    .local v4, numColumnRows:I
    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v6

    .line 572
    .local v6, ornTopBottomSpacing:I
    const/4 v8, -0x1

    .line 574
    .local v8, rowEnd:I
    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v13, v13, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    .line 575
    rem-int v13, v11, v4

    sub-int v9, v11, v13

    .line 583
    .local v9, rowStart:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v2

    .line 584
    .local v2, fadingEdgeLength:I
    move/from16 v0, p1

    invoke-static {v0, v2, v9}, Lcom/htc/view/table/TableColleague;->getTopSelectionPixel(III)I

    move-result v12

    .line 586
    .local v12, topSelectionPixel:I
    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v13, v13, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v8

    :goto_1
    const/4 v14, 0x1

    invoke-virtual {p0, v13, v12, v14}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v10

    .line 587
    .local v10, sel:Landroid/view/View;
    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v9, v13, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 589
    iget-object v7, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 591
    .local v7, referenceView:Landroid/view/View;
    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v13, v13, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v13, :cond_2

    .line 592
    add-int v13, v9, v4

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v14

    add-int/2addr v14, v6

    invoke-virtual {p0, v13, v14}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 593
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/view/table/TableColleague;->pinToBottom(I)V

    .line 594
    sub-int v13, v9, v4

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v14

    sub-int/2addr v14, v6

    invoke-virtual {p0, v13, v14}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    .line 607
    :goto_2
    return-object v10

    .line 577
    .end local v2           #fadingEdgeLength:I
    .end local v7           #referenceView:Landroid/view/View;
    .end local v9           #rowStart:I
    .end local v10           #sel:Landroid/view/View;
    .end local v12           #topSelectionPixel:I
    :cond_0
    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v13, v13, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v11

    .line 579
    .local v3, invertedSelection:I
    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v13, v13, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v8, v13, v14

    .line 580
    const/4 v13, 0x0

    sub-int v14, v8, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    .restart local v9       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v2       #fadingEdgeLength:I
    .restart local v12       #topSelectionPixel:I
    :cond_1
    move v13, v9

    .line 586
    goto :goto_1

    .line 597
    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v10       #sel:Landroid/view/View;
    :cond_2
    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v13, v13, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v0, p2

    invoke-static {v0, v2, v4, v9, v13}, Lcom/htc/view/table/TableColleague;->getBottomSelectionPixel(IIIII)I

    move-result v1

    .line 599
    .local v1, bottomSelectionPixel:I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 600
    .local v5, offset:I
    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    .line 601
    add-int/lit8 v13, v9, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v6

    invoke-virtual {p0, v13, v14}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    .line 602
    invoke-direct/range {p0 .. p1}, Lcom/htc/view/table/TableColleague;->pinToTop(I)V

    .line 603
    add-int v13, v8, v4

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v6

    invoke-virtual {p0, v13, v14}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    goto :goto_2
.end method

.method protected fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "ornTop"

    .prologue
    .line 648
    iget v5, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 651
    .local v5, numColumnRows:I
    const/4 v3, -0x1

    .line 653
    .local v3, motionRowEnd:I
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v9, v9, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v9, :cond_0

    .line 654
    rem-int v9, p1, v5

    sub-int v4, p1, v9

    .line 662
    .local v4, motionRowStart:I
    :goto_0
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v9, v9, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v9, :cond_1

    move v9, v3

    :goto_1
    const/4 v10, 0x1

    invoke-virtual {p0, v9, p2, v10}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v8

    .line 665
    .local v8, temp:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v4, v9, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 667
    iget-object v7, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 668
    .local v7, referenceView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v6

    .line 673
    .local v6, ornTopBottomSpacing:I
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v9, v9, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v9, :cond_2

    .line 674
    sub-int v9, v4, v5

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {p0, v9, v10}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 676
    .local v0, above:Landroid/view/View;
    add-int v9, v4, v5

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {p0, v9, v10}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 694
    .local v1, below:Landroid/view/View;
    :goto_2
    if-eqz v8, :cond_3

    .line 699
    .end local v8           #temp:Landroid/view/View;
    :goto_3
    return-object v8

    .line 656
    .end local v0           #above:Landroid/view/View;
    .end local v1           #below:Landroid/view/View;
    .end local v4           #motionRowStart:I
    .end local v6           #ornTopBottomSpacing:I
    .end local v7           #referenceView:Landroid/view/View;
    :cond_0
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v9, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    sub-int v2, v9, p1

    .line 658
    .local v2, invertedSelection:I
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v9, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    rem-int v10, v2, v5

    sub-int v10, v2, v10

    sub-int v3, v9, v10

    .line 659
    const/4 v9, 0x0

    sub-int v10, v3, v5

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .restart local v4       #motionRowStart:I
    goto :goto_0

    .end local v2           #invertedSelection:I
    :cond_1
    move v9, v4

    .line 662
    goto :goto_1

    .line 683
    .restart local v6       #ornTopBottomSpacing:I
    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v8       #temp:Landroid/view/View;
    :cond_2
    add-int v9, v3, v5

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {p0, v9, v10}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 685
    .restart local v1       #below:Landroid/view/View;
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {p0, v9, v10}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .restart local v0       #above:Landroid/view/View;
    goto :goto_2

    .line 696
    :cond_3
    if-eqz v0, :cond_4

    move-object v8, v0

    .line 697
    goto :goto_3

    :cond_4
    move-object v8, v1

    .line 699
    goto :goto_3
.end method

.method protected fillUp(II)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "nextOrnBottom"

    .prologue
    const/4 v5, 0x0

    .line 259
    const/4 v1, 0x0

    .line 261
    .local v1, selectedView:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v3, v3, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v0

    .line 263
    .local v0, end:I
    :goto_0
    if-le p2, v0, :cond_1

    if-ltz p1, :cond_1

    .line 266
    invoke-virtual {p0, p1, p2, v5}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v2

    .line 267
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 268
    move-object v1, v2

    .line 271
    :cond_0
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v4

    sub-int p2, v3, v4

    .line 273
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput p1, v3, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 275
    iget v3, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    sub-int/2addr p1, v3

    .line 276
    goto :goto_0

    .line 278
    .end local v2           #temp:Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Lcom/htc/view/table/TableColleague;->mRepeatEnable:Z

    if-eqz v3, :cond_3

    if-le p2, v0, :cond_3

    if-gez p1, :cond_3

    .line 279
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v3, v3, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/2addr p1, v3

    .line 281
    :goto_1
    if-le p2, v0, :cond_3

    if-ltz p1, :cond_3

    .line 284
    invoke-virtual {p0, p1, p2, v5}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v2

    .line 285
    .restart local v2       #temp:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 286
    move-object v1, v2

    .line 289
    :cond_2
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v4

    sub-int p2, v3, v4

    .line 291
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput p1, v3, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 293
    iget v3, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    sub-int/2addr p1, v3

    .line 294
    goto :goto_1

    .line 297
    .end local v2           #temp:Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v3, v3, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v3, :cond_4

    .line 298
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 302
    :cond_4
    return-object v1
.end method

.method public abstract findAndSetSelecionInt(IIII)Z
.end method

.method public abstract fling(Lcom/htc/view/table/AbstractTableView$FlingRunnable;FF)V
.end method

.method public abstract getCenterOfTable()I
.end method

.method public abstract getCenterOfView(Landroid/view/View;)I
.end method

.method public abstract getDefaultChildLayoutParams()Lcom/htc/view/table/AbstractTableView$LayoutParams;
.end method

.method public abstract getFadingEdgeLength()I
.end method

.method public abstract getLimitedMotionScrollAmount(ZI)I
.end method

.method public abstract getOrnBottom(Landroid/graphics/Rect;)I
.end method

.method public abstract getOrnBottom(Landroid/view/View;)I
.end method

.method public abstract getOrnGravity()I
.end method

.method public abstract getOrnHeight(Landroid/view/View;)I
.end method

.method public abstract getOrnHeight(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I
.end method

.method public abstract getOrnLeft(Landroid/graphics/Rect;)I
.end method

.method public abstract getOrnLeft(Landroid/view/View;)I
.end method

.method public abstract getOrnLeftRightSpacing()I
.end method

.method public abstract getOrnMeasureSpec(II)Lcom/htc/view/table/TableColleague$OrnMeasureSpec;
.end method

.method public abstract getOrnMeasuredHeight(Landroid/view/View;)I
.end method

.method public abstract getOrnMeasuredWidth(Landroid/view/View;)I
.end method

.method public abstract getOrnRequestedWidthSpacing()I
.end method

.method public abstract getOrnRight(Landroid/graphics/Rect;)I
.end method

.method public abstract getOrnRight(Landroid/view/View;)I
.end method

.method public abstract getOrnTop(Landroid/graphics/Rect;)I
.end method

.method public abstract getOrnTop(Landroid/view/View;)I
.end method

.method public abstract getOrnTopBottomSpacing()I
.end method

.method public abstract getOrnWidth(Landroid/view/View;)I
.end method

.method public abstract getOrnWidth(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I
.end method

.method public abstract getScrollbarWidth()I
.end method

.method public abstract layoutView(Landroid/view/View;IIII)V
.end method

.method protected makeRowColumn(IIZ)Landroid/view/View;
    .locals 14
    .parameter "startPos"
    .parameter "ornTop"
    .parameter "flow"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableColleague;->getOrnLeft(Landroid/graphics/Rect;)I

    move-result v4

    .line 371
    .local v4, nextOrnLeft:I
    iget v11, p0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    .line 374
    .local v11, ornWidth:I
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v0, :cond_3

    .line 375
    iget v0, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/2addr v0, p1

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v2}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 385
    .local v10, last:I
    :goto_0
    const/4 v13, 0x0

    .line 387
    .local v13, selectedView:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->shouldShowSelector()Z

    move-result v8

    .line 388
    .local v8, hasFocus:Z
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->touchModeDrawsInPressedState()Z

    move-result v9

    .line 389
    .local v9, inClick:Z
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v12, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    .line 391
    .local v12, selectedPosition:I
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 393
    move v1, p1

    .local v1, pos:I
    :goto_1
    if-ge v1, v10, :cond_6

    .line 395
    if-ne v1, v12, :cond_4

    const/4 v5, 0x1

    .line 398
    .local v5, selected:Z
    :goto_2
    if-eqz p3, :cond_5

    const/4 v6, -0x1

    .local v6, where:I
    :goto_3
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 400
    invoke-direct/range {v0 .. v6}, Lcom/htc/view/table/TableColleague;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 401
    .local v7, child:Landroid/view/View;
    iput-object v7, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 403
    add-int/2addr v4, v11

    .line 404
    add-int/lit8 v0, v10, -0x1

    if-ge v1, v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnLeftRightSpacing()I

    move-result v0

    add-int/2addr v4, v0

    .line 408
    :cond_0
    if-eqz v5, :cond_2

    if-nez v8, :cond_1

    if-eqz v9, :cond_2

    .line 409
    :cond_1
    move-object v13, v7

    .line 393
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    .end local v1           #pos:I
    .end local v5           #selected:Z
    .end local v6           #where:I
    .end local v7           #child:Landroid/view/View;
    .end local v8           #hasFocus:Z
    .end local v9           #inClick:Z
    .end local v10           #last:I
    .end local v12           #selectedPosition:I
    .end local v13           #selectedView:Landroid/view/View;
    :cond_3
    add-int/lit8 v10, p1, 0x1

    .line 378
    .restart local v10       #last:I
    const/4 v0, 0x0

    iget v2, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 395
    .restart local v1       #pos:I
    .restart local v8       #hasFocus:Z
    .restart local v9       #inClick:Z
    .restart local v12       #selectedPosition:I
    .restart local v13       #selectedView:Landroid/view/View;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 398
    .restart local v5       #selected:Z
    :cond_5
    sub-int v6, v1, p1

    goto :goto_3

    .line 413
    .end local v5           #selected:Z
    :cond_6
    if-eqz v13, :cond_7

    .line 414
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 417
    :cond_7
    return-object v13
.end method

.method public abstract measureView(Landroid/view/View;II)V
.end method

.method protected moveSelection(III)Landroid/view/View;
    .locals 22
    .parameter "delta"
    .parameter "childrenOrnTop"
    .parameter "childrenOrnBottom"

    .prologue
    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v5

    .line 722
    .local v5, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 723
    .local v17, selectedPosition:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 724
    .local v7, numColumns:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v11

    .line 728
    .local v11, ornTopBottomSpacing:I
    const/4 v14, -0x1

    .line 730
    .local v14, rowEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 731
    sub-int v19, v17, p1

    sub-int v20, v17, p1

    rem-int v20, v20, v7

    sub-int v10, v19, v20

    .line 733
    .local v10, oldRowStart:I
    rem-int v19, v17, v7

    sub-int v15, v17, v19

    .line 745
    .local v15, rowStart:I
    :goto_0
    sub-int v13, v15, v10

    .line 747
    .local v13, rowDelta:I
    move/from16 v0, p2

    invoke-static {v0, v5, v15}, Lcom/htc/view/table/TableColleague;->getTopSelectionPixel(III)I

    move-result v18

    .line 748
    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v5, v7, v15, v1}, Lcom/htc/view/table/TableColleague;->getBottomSelectionPixel(IIIII)I

    move-result v4

    .line 752
    .local v4, bottomSelectionPixel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v15, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 757
    if-lez v13, :cond_3

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    .line 765
    .local v8, oldOrnBottom:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v14

    :goto_2
    add-int v20, v8, v11

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v16

    .line 766
    .local v16, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 768
    .local v12, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1, v4}, Lcom/htc/view/table/TableColleague;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 791
    .end local v8           #oldOrnBottom:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 792
    sub-int v19, v15, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v20

    sub-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    .line 794
    add-int v19, v15, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 801
    :goto_4
    return-object v16

    .line 735
    .end local v4           #bottomSelectionPixel:I
    .end local v10           #oldRowStart:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v13           #rowDelta:I
    .end local v15           #rowStart:I
    .end local v16           #sel:Landroid/view/View;
    .end local v18           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v17

    .line 737
    .local v6, invertedSelection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v14, v19, v20

    .line 738
    const/16 v19, 0x0

    sub-int v20, v14, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 740
    .restart local v15       #rowStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v17, p1

    sub-int v6, v19, v20

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v10, v19, v20

    .line 742
    .restart local v10       #oldRowStart:I
    const/16 v19, 0x0

    sub-int v20, v10, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_0

    .line 762
    .end local v6           #invertedSelection:I
    .restart local v4       #bottomSelectionPixel:I
    .restart local v13       #rowDelta:I
    .restart local v18       #topSelectionPixel:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v8

    goto/16 :goto_1

    .restart local v8       #oldOrnBottom:I
    :cond_2
    move/from16 v19, v15

    .line 765
    goto/16 :goto_2

    .line 769
    .end local v8           #oldOrnBottom:I
    :cond_3
    if-gez v13, :cond_6

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v9, 0x0

    .line 776
    .local v9, oldOrnTop:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v14

    :goto_6
    sub-int v20, v9, v11

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v16

    .line 777
    .restart local v16       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 779
    .restart local v12       #referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1, v4}, Lcom/htc/view/table/TableColleague;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 773
    .end local v9           #oldOrnTop:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v16           #sel:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v9

    goto :goto_5

    .restart local v9       #oldOrnTop:I
    :cond_5
    move/from16 v19, v15

    .line 776
    goto :goto_6

    .line 784
    .end local v9           #oldOrnTop:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v9, 0x0

    .line 787
    .restart local v9       #oldOrnTop:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v14

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v9, v2}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v16

    .line 788
    .restart local v16       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .restart local v12       #referenceView:Landroid/view/View;
    goto/16 :goto_3

    .line 784
    .end local v9           #oldOrnTop:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v16           #sel:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v9

    goto :goto_7

    .restart local v9       #oldOrnTop:I
    :cond_8
    move/from16 v19, v15

    .line 787
    goto :goto_8

    .line 796
    .end local v9           #oldOrnTop:I
    .restart local v12       #referenceView:Landroid/view/View;
    .restart local v16       #sel:Landroid/view/View;
    :cond_9
    add-int v19, v14, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 798
    add-int/lit8 v19, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v20

    sub-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method protected moveSelectionCenter(IIIII)Landroid/view/View;
    .locals 10
    .parameter "selectChildPosition"
    .parameter "childrenOrnTop"
    .parameter "childrenOrnBottom"
    .parameter "childHeight"
    .parameter "percentage"

    .prologue
    .line 818
    iget v1, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 819
    .local v1, numColumns:I
    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v2

    .line 822
    .local v2, ornTopBottomSpacing:I
    const/4 v4, -0x1

    .line 825
    .local v4, rowEnd:I
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v8, v8, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v8, :cond_0

    .line 826
    rem-int v8, p1, v1

    sub-int v5, p1, v8

    .line 836
    .local v5, rowStart:I
    :goto_0
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v8, v8, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    if-eqz v8, :cond_1

    .line 837
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v8, v8, Lcom/htc/view/table/TableView;->mTableViewOrnHeight:I

    mul-int/lit8 v8, v8, 0x32

    mul-int v9, p4, p5

    sub-int/2addr v8, v9

    div-int/lit8 v7, v8, 0x64

    .line 844
    .local v7, topSelectionPixel:I
    :goto_1
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v5, v8, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 851
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v7, v8}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v6

    .line 852
    .local v6, sel:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 854
    .local v3, referenceView:Landroid/view/View;
    sub-int v8, v5, v1

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {p0, v8, v9}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    .line 855
    add-int v8, v5, v1

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {p0, v8, v9}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 858
    return-object v6

    .line 828
    .end local v3           #referenceView:Landroid/view/View;
    .end local v5           #rowStart:I
    .end local v6           #sel:Landroid/view/View;
    .end local v7           #topSelectionPixel:I
    :cond_0
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v8, v8, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    sub-int v0, v8, p1

    .line 830
    .local v0, invertedSelection:I
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v8, v8, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    rem-int v9, v0, v1

    sub-int v9, v0, v9

    sub-int v4, v8, v9

    .line 831
    const/4 v8, 0x0

    sub-int v9, v4, v1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #rowStart:I
    goto :goto_0

    .line 840
    .end local v0           #invertedSelection:I
    :cond_1
    sub-int v8, p3, p2

    sub-int/2addr v8, p4

    div-int/lit8 v7, v8, 0x2

    .restart local v7       #topSelectionPixel:I
    goto :goto_1
.end method

.method public abstract offsetLeftAndRight(Landroid/view/View;I)V
.end method

.method public abstract offsetOrnChildrenTopAndBottom(I)V
.end method

.method public abstract offsetTopAndBottom(Landroid/view/View;I)V
.end method

.method protected onMeasure(II)V
    .locals 23
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 948
    invoke-virtual/range {p0 .. p2}, Lcom/htc/view/table/TableColleague;->getOrnMeasureSpec(II)Lcom/htc/view/table/TableColleague$OrnMeasureSpec;

    move-result-object v19

    .line 954
    .local v19, spec:Lcom/htc/view/table/TableColleague$OrnMeasureSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnLeft(Landroid/graphics/Rect;)I

    move-result v15

    .line 955
    .local v15, ornLeftPadding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnRight(Landroid/graphics/Rect;)I

    move-result v16

    .line 956
    .local v16, ornRightPadding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v17

    .line 957
    .local v17, ornTopPadding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v14

    .line 959
    .local v14, ornBottomPadding:I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMode:I

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 960
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_7

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    move/from16 v20, v0

    add-int v20, v20, v15

    add-int v20, v20, v16

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    .line 965
    :goto_0
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getScrollbarWidth()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    .line 968
    :cond_0
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    move/from16 v20, v0

    sub-int v20, v20, v15

    sub-int v6, v20, v16

    .line 969
    .local v6, childOrnWidth:I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/view/table/TableColleague;->determineColumnRows(I)V

    .line 971
    const/4 v4, 0x0

    .line 973
    .local v4, childOrnHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_8

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, v21

    iput v0, v1, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v9, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    .line 975
    .local v9, count:I
    if-lez v9, :cond_2

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/view/table/TableView;->obtainView(I)Landroid/view/View;

    move-result-object v3

    .line 977
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 979
    .local v8, childViewType:I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    .line 980
    .local v11, lp:Lcom/htc/view/table/AbstractTableView$LayoutParams;
    if-nez v11, :cond_1

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getDefaultChildLayoutParams()Lcom/htc/view/table/AbstractTableView$LayoutParams;

    move-result-object v11

    .line 982
    invoke-virtual {v3, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 984
    :cond_1
    iput v8, v11, Lcom/htc/view/table/AbstractTableView$LayoutParams;->viewType:I

    .line 986
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMeasureSpec:I

    move/from16 v20, v0

    add-int v21, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/view/table/TableColleague;->getOrnWidth(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I

    move-result v22

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 989
    .local v7, childOrnWidthSpec:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/view/table/TableColleague;->getOrnHeight(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I

    move-result v12

    .line 992
    .local v12, lpOrnHeight:I
    if-lez v12, :cond_9

    .line 993
    const/high16 v20, 0x4000

    move/from16 v0, v20

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 998
    .local v5, childOrnHeightSpec:I
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7, v5}, Lcom/htc/view/table/TableColleague;->measureView(Landroid/view/View;II)V

    .line 999
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/view/table/TableColleague;->getOrnMeasuredHeight(Landroid/view/View;)I

    move-result v4

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1006
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childOrnHeightSpec:I
    .end local v7           #childOrnWidthSpec:I
    .end local v8           #childViewType:I
    .end local v11           #lp:Lcom/htc/view/table/AbstractTableView$LayoutParams;
    .end local v12           #lpOrnHeight:I
    :cond_2
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMode:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 1007
    add-int v20, v17, v14

    add-int v20, v20, v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMode:I

    .line 1011
    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMode:I

    move/from16 v20, v0

    const/high16 v21, -0x8000

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 1012
    add-int v18, v17, v14

    .line 1014
    .local v18, ourSize:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 1015
    .local v13, numColumns:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v9, :cond_5

    .line 1016
    add-int v18, v18, v4

    .line 1017
    add-int v20, v10, v13

    move/from16 v0, v20

    if-ge v0, v9, :cond_4

    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v20

    add-int v18, v18, v20

    .line 1020
    :cond_4
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_a

    .line 1021
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    move/from16 v18, v0

    .line 1025
    :cond_5
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    .line 1028
    .end local v10           #i:I
    .end local v13           #numColumns:I
    .end local v18           #ourSize:I
    :cond_6
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->setTableViewMeasuredDimension(II)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/view/table/AbstractTableView;->mWidthHeightMeasureSpec:I

    .line 1030
    return-void

    .line 963
    .end local v4           #childOrnHeight:I
    .end local v6           #childOrnWidth:I
    .end local v9           #count:I
    :cond_7
    add-int v20, v15, v16

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    goto/16 :goto_0

    .line 973
    .restart local v4       #childOrnHeight:I
    .restart local v6       #childOrnWidth:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    goto/16 :goto_1

    .line 995
    .restart local v3       #child:Landroid/view/View;
    .restart local v7       #childOrnWidthSpec:I
    .restart local v8       #childViewType:I
    .restart local v9       #count:I
    .restart local v11       #lp:Lcom/htc/view/table/AbstractTableView$LayoutParams;
    .restart local v12       #lpOrnHeight:I
    :cond_9
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5       #childOrnHeightSpec:I
    goto/16 :goto_2

    .line 1015
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childOrnHeightSpec:I
    .end local v7           #childOrnWidthSpec:I
    .end local v8           #childViewType:I
    .end local v11           #lp:Lcom/htc/view/table/AbstractTableView$LayoutParams;
    .end local v12           #lpOrnHeight:I
    .restart local v10       #i:I
    .restart local v13       #numColumns:I
    .restart local v18       #ourSize:I
    :cond_a
    add-int/2addr v10, v13

    goto :goto_3
.end method

.method public abstract scrollAmount(Lcom/htc/view/table/AbstractTableView$FlingRunnable;I)V
.end method

.method public abstract scrollIntoSlots(Lcom/htc/view/table/AbstractTableView$FlingRunnable;)V
.end method

.method public abstract scrollWithConstrain(IIZ)V
.end method

.method public abstract setCloseBouncing(Z)V
.end method

.method public setMultiStop(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1442
    iput-boolean p1, p0, Lcom/htc/view/table/TableColleague;->mMultiStop:Z

    .line 1443
    return-void
.end method

.method public setMultiStopDistance(I)Z
    .locals 6
    .parameter "d"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1457
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    .line 1458
    iput-boolean v3, p0, Lcom/htc/view/table/TableColleague;->mMultiStop:Z

    .line 1459
    const/4 v5, 0x5

    if-lt p1, v5, :cond_0

    const/16 v5, 0x1e

    if-le p1, v5, :cond_1

    .line 1473
    :cond_0
    :goto_0
    return v3

    .line 1461
    :cond_1
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v5

    div-int v0, v5, p1

    .line 1462
    .local v0, count:I
    if-lt v0, v4, :cond_0

    .line 1464
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    .line 1465
    add-int/lit8 v2, p1, -0x1

    .line 1466
    .local v2, y:I
    const/4 v1, 0x0

    .line 1467
    .local v1, index:I
    :goto_1
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1468
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    aput v2, v3, v1

    .line 1469
    add-int/2addr v2, p1

    .line 1470
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1472
    :cond_2
    iput-boolean v4, p0, Lcom/htc/view/table/TableColleague;->mMultiStop:Z

    move v3, v4

    .line 1473
    goto :goto_0
.end method

.method protected setNumColumnRows(I)V
    .locals 0
    .parameter "numColumnRows"

    .prologue
    .line 1037
    iput p1, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 1038
    return-void
.end method

.method public abstract setOrnLeftRightSpacing(I)V
.end method

.method public abstract setOrnTopBottomSpacing(I)V
.end method

.method public setRepeatEnable(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1434
    iput-boolean p1, p0, Lcom/htc/view/table/TableColleague;->mRepeatEnable:Z

    .line 1435
    return-void
.end method

.method public setStopExcept(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 1482
    iput p1, p0, Lcom/htc/view/table/TableColleague;->mStopExcept:I

    .line 1483
    return-void
.end method

.method public abstract setTableViewMeasuredDimension(II)V
.end method

.method protected setupChild(Landroid/view/View;IIZIZZI)V
    .locals 17
    .parameter "child"
    .parameter "position"
    .parameter "ornTop"
    .parameter "flow"
    .parameter "childrenOrnLeft"
    .parameter "selected"
    .parameter "recycled"
    .parameter "where"

    .prologue
    .line 1117
    if-eqz p6, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v2}, Lcom/htc/view/table/TableView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v10, 0x1

    .line 1119
    .local v10, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eq v10, v2, :cond_5

    const/4 v15, 0x1

    .line 1120
    .local v15, updateChildSelected:Z
    :goto_1
    if-eqz p7, :cond_0

    if-nez v15, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    const/4 v11, 0x1

    .line 1124
    .local v11, needToMeasure:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    .line 1125
    .local v14, p:Lcom/htc/view/table/AbstractTableView$LayoutParams;
    if-nez v14, :cond_1

    .line 1126
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getDefaultChildLayoutParams()Lcom/htc/view/table/AbstractTableView$LayoutParams;

    move-result-object v14

    .line 1128
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v2, v2, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v14, Lcom/htc/view/table/AbstractTableView$LayoutParams;->viewType:I

    .line 1130
    if-eqz p7, :cond_7

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1, v14}, Lcom/htc/view/table/TableView;->attachViewToParent(Landroid/view/View;ILcom/htc/view/table/AbstractTableView$LayoutParams;)V

    .line 1136
    :goto_3
    if-eqz v15, :cond_2

    .line 1137
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setSelected(Z)V

    .line 1138
    if-eqz v10, :cond_2

    .line 1139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v2}, Lcom/htc/view/table/TableView;->requestFocus()Z

    .line 1143
    :cond_2
    if-eqz v11, :cond_8

    .line 1144
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/view/table/TableColleague;->getOrnHeight(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1147
    .local v8, childOrnHeightSpec:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/view/table/TableColleague;->getOrnWidth(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 1149
    .local v9, childOrnWidthSpec:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v8}, Lcom/htc/view/table/TableColleague;->measureView(Landroid/view/View;II)V

    .line 1154
    .end local v8           #childOrnHeightSpec:I
    .end local v9           #childOrnWidthSpec:I
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lcom/htc/view/table/TableColleague;->getOrnMeasuredWidth(Landroid/view/View;)I

    move-result v13

    .line 1155
    .local v13, ornW:I
    invoke-virtual/range {p0 .. p1}, Lcom/htc/view/table/TableColleague;->getOrnMeasuredHeight(Landroid/view/View;)I

    move-result v12

    .line 1158
    .local v12, ornH:I
    if-eqz p4, :cond_9

    move/from16 v5, p3

    .line 1160
    .local v5, childOrnTop:I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getOrnGravity()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1171
    :pswitch_0
    move/from16 v4, p5

    .line 1175
    .local v4, childOrnLeft:I
    :goto_6
    if-eqz v11, :cond_a

    .line 1176
    add-int v6, v4, v13

    .line 1177
    .local v6, childOrnRight:I
    add-int v7, v5, v12

    .local v7, childOrnBottom:I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 1178
    invoke-virtual/range {v2 .. v7}, Lcom/htc/view/table/TableColleague;->layoutView(Landroid/view/View;IIII)V

    .line 1184
    .end local v6           #childOrnRight:I
    .end local v7           #childOrnBottom:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v2, v2, Lcom/htc/view/table/AbstractTableView;->mCachingStarted:Z

    if-eqz v2, :cond_3

    .line 1185
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1187
    :cond_3
    return-void

    .line 1117
    .end local v4           #childOrnLeft:I
    .end local v5           #childOrnTop:I
    .end local v10           #isSelected:Z
    .end local v11           #needToMeasure:Z
    .end local v12           #ornH:I
    .end local v13           #ornW:I
    .end local v14           #p:Lcom/htc/view/table/AbstractTableView$LayoutParams;
    .end local v15           #updateChildSelected:Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1119
    .restart local v10       #isSelected:Z
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1120
    .restart local v15       #updateChildSelected:Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1133
    .restart local v11       #needToMeasure:Z
    .restart local v14       #p:Lcom/htc/view/table/AbstractTableView$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1, v14, v3}, Lcom/htc/view/table/TableView;->addViewInLayout(Landroid/view/View;ILcom/htc/view/table/AbstractTableView$LayoutParams;Z)V

    goto/16 :goto_3

    .line 1151
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/htc/view/table/TableView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_4

    .line 1158
    .restart local v12       #ornH:I
    .restart local v13       #ornW:I
    :cond_9
    sub-int v5, p3, v12

    goto :goto_5

    .line 1162
    .restart local v5       #childOrnTop:I
    :pswitch_1
    move/from16 v4, p5

    .line 1163
    .restart local v4       #childOrnLeft:I
    goto :goto_6

    .line 1165
    .end local v4           #childOrnLeft:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    sub-int/2addr v2, v13

    div-int/lit8 v2, v2, 0x2

    add-int v4, p5, v2

    .line 1166
    .restart local v4       #childOrnLeft:I
    goto :goto_6

    .line 1168
    .end local v4           #childOrnLeft:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    add-int v2, v2, p5

    sub-int v4, v2, v13

    .line 1169
    .restart local v4       #childOrnLeft:I
    goto :goto_6

    .line 1180
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/htc/view/table/TableColleague;->getOrnLeft(Landroid/view/View;)I

    move-result v2

    sub-int v2, v4, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1181
    invoke-virtual/range {p0 .. p1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v2

    sub-int v2, v5, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_7

    .line 1160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract trackMotionScrollOrn(II)V
.end method
