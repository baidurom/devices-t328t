.class public Lcom/htc/view/table/TableView;
.super Lcom/htc/view/table/AbstractTableView;
.source "TableView.java"


# static fields
.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_ROW_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TableView"

.field private static final ahanLog:Z

.field private static final layoutLOG:Z

.field private static final localLOGV:Z


# instance fields
.field isSetTableViewHeight:Z

.field private mPercentage:I

.field protected mRequestedHorizontalSpacing:I

.field protected mRequestedNumColumnRows:I

.field protected mRequestedOrnWidth:I

.field protected mRequestedVerticalSpacing:I

.field protected mStretchMode:I

.field mTableViewOrnHeight:I

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/view/table/AbstractTableView;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/view/table/TableView;->mTempRect:Landroid/graphics/Rect;

    .line 1035
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    .line 1041
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/view/table/TableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v8, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    .line 70
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/htc/view/table/TableView;->mTempRect:Landroid/graphics/Rect;

    .line 1035
    const/16 v6, 0x32

    iput v6, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    .line 1041
    iput-boolean v7, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    .line 82
    sget-object v6, Landroid/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 87
    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Lcom/htc/view/table/TableView;->setHorizontalSpacing(I)V

    .line 89
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 91
    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableView;->setVerticalSpacing(I)V

    .line 93
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 94
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 95
    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableView;->setStretchMode(I)V

    .line 98
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 99
    .local v1, columnWidth:I
    if-lez v1, :cond_1

    .line 100
    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->setColumnRowWidth(I)V

    .line 103
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 104
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->setNumColumnRows(I)V

    .line 106
    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 107
    if-ltz v3, :cond_2

    .line 108
    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableView;->setGravity(I)V

    .line 111
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v3, 0x1

    .line 579
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 670
    :goto_0
    return v2

    .line 583
    :cond_0
    iget-boolean v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 585
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    .line 588
    :cond_1
    const/4 v1, 0x0

    .line 589
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 591
    .local v0, action:I
    if-eq v0, v3, :cond_3

    .line 592
    iget v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-gez v4, :cond_2

    .line 593
    sparse-switch p1, :sswitch_data_0

    .line 606
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 655
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 656
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/view/table/TableView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 659
    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    .line 660
    goto :goto_0

    .line 601
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->resurrectSelection()Z

    move v2, v3

    .line 602
    goto :goto_0

    .line 608
    :sswitch_1
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->arrowScroll(I)Z

    move-result v1

    .line 609
    goto :goto_1

    .line 613
    :sswitch_2
    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->arrowScroll(I)Z

    move-result v1

    .line 614
    goto :goto_1

    .line 617
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 618
    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 621
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableView;->fullScroll(I)Z

    move-result v1

    .line 623
    goto :goto_1

    .line 626
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 627
    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 629
    :cond_6
    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableView;->fullScroll(I)Z

    move-result v1

    .line 631
    goto :goto_1

    .line 635
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 636
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->keyPressed()V

    :cond_7
    move v2, v3

    .line 639
    goto :goto_0

    .line 643
    :sswitch_6
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 644
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 645
    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 647
    :cond_9
    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 662
    :cond_a
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 664
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/view/table/AbstractTableView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 666
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/view/table/AbstractTableView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 668
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractTableView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 593
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 606
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 662
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 811
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 812
    .local v0, count:I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 817
    .local v1, invertedIndex:I
    iget-boolean v6, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 818
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v6, v6, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 819
    .local v3, rowStart:I
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v6, v6, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 825
    .local v2, rowEnd:I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 840
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 821
    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v7, v7, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 822
    .restart local v2       #rowEnd:I
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v6, v6, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_0

    .line 829
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 838
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 829
    goto :goto_1

    .line 832
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 835
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 838
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 825
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected addViewInLayout(Landroid/view/View;ILcom/htc/view/table/AbstractTableView$LayoutParams;Z)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 992
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/view/table/AbstractTableView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 993
    return-void
.end method

.method protected arrowScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    .line 733
    iget v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    .line 734
    .local v4, selectedPosition:I
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v3, v6, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 739
    .local v3, numColumns:I
    const/4 v2, 0x0

    .line 741
    .local v2, moved:Z
    iget-boolean v6, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v6, :cond_1

    .line 742
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 743
    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 750
    .local v0, endOfRowPos:I
    :goto_0
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v6, p1, v5, v0, v4}, Lcom/htc/view/table/TableColleague;->findAndSetSelecionInt(IIII)Z

    move-result v2

    .line 753
    if-eqz v2, :cond_0

    .line 754
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableView;->playSoundEffect(I)V

    .line 757
    :cond_0
    return v2

    .line 745
    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_1
    iget v6, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 746
    .local v1, invertedSelection:I
    iget v6, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 747
    .restart local v0       #endOfRowPos:I
    const/4 v6, 0x0

    sub-int v7, v0, v3

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 262
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 265
    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 266
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 267
    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 270
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 271
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 272
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 273
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 275
    iget-boolean v2, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 277
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 284
    :goto_0
    return-void

    .line 279
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 281
    .local v1, invertedIndex:I
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v3, v3, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 282
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v3, v3, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected attachViewToParent(Landroid/view/View;ILcom/htc/view/table/AbstractTableView$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 984
    invoke-super {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractTableView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 985
    return-void
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 1000
    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractTableView;->cleanupLayoutState(Landroid/view/View;)V

    .line 1001
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1149
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 1150
    .local v0, count:I
    if-lez v0, :cond_2

    .line 1151
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v3

    .line 1152
    .local v3, numColumns:I
    add-int v9, v0, v3

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v3

    .line 1154
    .local v5, rowCount:I
    mul-int/lit8 v1, v5, 0x64

    .line 1156
    .local v1, extent:I
    invoke-virtual {p0, v8}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1157
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1158
    .local v2, left:I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 1159
    .local v7, width:I
    if-lez v7, :cond_0

    .line 1160
    mul-int/lit8 v8, v2, 0x64

    div-int/2addr v8, v7

    add-int/2addr v1, v8

    .line 1163
    :cond_0
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1164
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v4

    .line 1165
    .local v4, right:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1166
    if-lez v7, :cond_1

    .line 1167
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v8

    sub-int v8, v4, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v7

    sub-int/2addr v1, v8

    .line 1172
    .end local v1           #extent:I
    .end local v2           #left:I
    .end local v3           #numColumns:I
    .end local v4           #right:I
    .end local v5           #rowCount:I
    .end local v6           #view:Landroid/view/View;
    .end local v7           #width:I
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v8

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1181
    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 1182
    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1183
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1184
    .local v1, left:I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1185
    .local v0, height:I
    if-lez v0, :cond_0

    .line 1186
    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v6

    div-int v3, v5, v6

    .line 1187
    .local v3, whichRow:I
    mul-int/lit8 v5, v3, 0x64

    mul-int/lit8 v6, v1, 0x64

    div-int/2addr v6, v0

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1190
    .end local v0           #height:I
    .end local v1           #left:I
    .end local v2           #view:Landroid/view/View;
    .end local v3           #whichRow:I
    :cond_0
    return v4
.end method

.method protected computeHorizontalScrollRange()I
    .locals 4

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v0

    .line 1201
    .local v0, numColumns:I
    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    .line 1202
    .local v1, rowCount:I
    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1087
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v1

    .line 1088
    .local v1, count:I
    if-lez v1, :cond_2

    .line 1089
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v4

    .line 1090
    .local v4, numColumns:I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 1092
    .local v5, rowCount:I
    mul-int/lit8 v2, v5, 0x64

    .line 1094
    .local v2, extent:I
    invoke-virtual {p0, v8}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1095
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1096
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1097
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1098
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 1101
    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1102
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1103
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1104
    if-lez v3, :cond_1

    .line 1105
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 1110
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #numColumns:I
    .end local v5           #rowCount:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1119
    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 1120
    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1121
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1122
    .local v1, top:I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1123
    .local v0, height:I
    if-lez v0, :cond_0

    .line 1124
    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v6

    div-int v3, v5, v6

    .line 1125
    .local v3, whichRow:I
    mul-int/lit8 v5, v3, 0x64

    mul-int/lit8 v6, v1, 0x64

    div-int/2addr v6, v0

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1128
    .end local v0           #height:I
    .end local v1           #top:I
    .end local v2           #view:Landroid/view/View;
    .end local v3           #whichRow:I
    :cond_0
    return v4
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v0

    .line 1139
    .local v0, numColumns:I
    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    .line 1140
    .local v1, rowCount:I
    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public disableProxyAdapter()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/htc/view/util/ProxyListAdapter;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/htc/view/util/ProxyListAdapter;

    invoke-virtual {v0}, Lcom/htc/view/util/ProxyListAdapter;->getTarget()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    .line 198
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->invalidateViews()V

    .line 200
    :cond_0
    return-void
.end method

.method public enableProxyAdapter(Lcom/htc/view/util/ProxyListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Lcom/htc/view/util/ProxyListAdapter;->setTarget(Landroid/widget/ListAdapter;)V

    .line 187
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    .line 188
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->invalidateViews()V

    .line 189
    return-void
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 222
    .local v0, childCount:I
    if-lez v0, :cond_4

    .line 224
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v3, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 225
    .local v2, numColumns:I
    iget-boolean v3, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 226
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 227
    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 228
    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 241
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1
    return v3

    .line 226
    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 232
    .end local v1           #i:I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 233
    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 234
    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 232
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 239
    :cond_3
    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 241
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_4
    sget v3, Lcom/htc/view/table/TableView;->INVALID_POSITION:I

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_1

    .line 708
    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 709
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 710
    const/4 v0, 0x1

    .line 717
    :cond_0
    :goto_0
    return v0

    .line 711
    :cond_1
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 712
    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 713
    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 714
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getDefaultHTableColleague()Lcom/htc/view/table/HTableColleague;
    .locals 1

    .prologue
    .line 976
    new-instance v0, Lcom/htc/view/table/HTableColleague;

    invoke-direct {v0, p0}, Lcom/htc/view/table/HTableColleague;-><init>(Lcom/htc/view/table/TableView;)V

    return-object v0
.end method

.method public getDefaultVTableColleague()Lcom/htc/view/table/VTableColleague;
    .locals 1

    .prologue
    .line 968
    new-instance v0, Lcom/htc/view/table/VTableColleague;

    invoke-direct {v0, p0}, Lcom/htc/view/table/VTableColleague;-><init>(Lcom/htc/view/table/TableView;)V

    return-object v0
.end method

.method public getNumColumnRows()I
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 910
    iget v0, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    return v0
.end method

.method protected initTableColleague()V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mTableLayoutParams:Lcom/htc/view/table/TableLayoutParams;

    invoke-virtual {v0}, Lcom/htc/view/table/TableLayoutParams;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getDefaultVTableColleague()Lcom/htc/view/table/VTableColleague;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    .line 960
    :goto_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v1, p0, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->setNumColumnRows(I)V

    .line 961
    return-void

    .line 957
    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getDefaultHTableColleague()Lcom/htc/view/table/HTableColleague;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    .line 293
    .local v8, blockLayoutRequests:Z
    if-nez v8, :cond_0

    .line 294
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    .line 298
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/view/table/AbstractTableView;->layoutChildren()V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->invalidate()V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_2

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->resetList()V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    if-nez v8, :cond_1

    .line 500
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    .line 503
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v4

    .line 309
    .local v4, childrenOrnTop:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v3

    sub-int v5, v2, v3

    .line 314
    .local v5, childrenOrnBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v9

    .line 316
    .local v9, childCount:I
    const/4 v11, 0x0

    .line 317
    .local v11, delta:I
    const/4 v6, 0x0

    .line 320
    .local v6, childHeight:I
    const/16 v18, 0x0

    .line 321
    .local v18, oldSel:Landroid/view/View;
    const/16 v17, 0x0

    .line 322
    .local v17, oldFirst:Landroid/view/View;
    const/16 v16, 0x0

    .line 325
    .local v16, newSel:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 353
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-gez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    add-int/2addr v2, v7

    :goto_1
    sub-int v14, v3, v2

    .line 354
    .local v14, index:I
    if-gez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/2addr v14, v2

    .line 357
    :cond_3
    if-ltz v14, :cond_4

    if-ge v14, v9, :cond_4

    .line 358
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 362
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 365
    .end local v14           #index:I
    :cond_5
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    .line 366
    .local v10, dataChanged:Z
    if-eqz v10, :cond_6

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->handleDataChanged()V

    .line 373
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-nez v2, :cond_9

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->resetList()V

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    if-nez v8, :cond_1

    .line 500
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 327
    .end local v10           #dataChanged:Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    sub-int v14, v2, v3

    .line 328
    .restart local v14       #index:I
    if-ltz v14, :cond_5

    if-ge v14, v9, :cond_5

    .line 329
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    goto :goto_2

    .line 338
    .end local v14           #index:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    if-ltz v2, :cond_5

    .line 339
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    sub-int v11, v2, v3

    goto :goto_2

    .line 343
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 344
    const/4 v6, 0x0

    goto :goto_2

    .line 346
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/view/table/TableColleague;->getOrnHeight(Landroid/view/View;)I

    move-result v6

    .line 349
    goto :goto_2

    .line 353
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    goto :goto_1

    .line 380
    .restart local v10       #dataChanged:Z
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    .line 384
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 385
    .local v12, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    move-object/from16 v19, v0

    .line 387
    .local v19, recycleBin:Lcom/htc/view/table/AbstractTableView$RecycleBin;
    if-eqz v10, :cond_a

    .line 388
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    if-ge v13, v9, :cond_b

    .line 389
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 388
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 392
    .end local v13           #i:I
    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v12}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->fillActiveViews(II)V

    .line 397
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->detachAllViewsFromParent()V

    .line 399
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 442
    if-nez v9, :cond_f

    .line 443
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v2, :cond_e

    .line 445
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v4}, Lcom/htc/view/table/TableColleague;->fillFromTop(I)Landroid/view/View;

    move-result-object v20

    .line 473
    .end local v4           #childrenOrnTop:I
    .local v20, sel:Landroid/view/View;
    :goto_4
    invoke-virtual/range {v19 .. v19}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->scrapActiveViews()V

    .line 475
    if-eqz v20, :cond_14

    .line 477
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableView;->positionSelector(Landroid/view/View;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    .line 485
    :goto_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 486
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    .line 487
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    .line 489
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setNextSelectedPositionInt(I)V

    .line 493
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-lez v2, :cond_c

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->checkSelectionChanged()V

    .line 497
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    if-nez v8, :cond_1

    .line 500
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 401
    .end local v20           #sel:Landroid/view/View;
    .restart local v4       #childrenOrnTop:I
    :pswitch_4
    if-eqz v16, :cond_d

    .line 403
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/view/table/TableColleague;->fillFromSelection(III)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto :goto_4

    .line 406
    .end local v20           #sel:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v4, v5}, Lcom/htc/view/table/TableColleague;->fillSelection(II)Landroid/view/View;

    move-result-object v20

    .line 408
    .restart local v20       #sel:Landroid/view/View;
    goto :goto_4

    .line 410
    .end local v20           #sel:Landroid/view/View;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    .line 412
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v4}, Lcom/htc/view/table/TableColleague;->fillFromTop(I)Landroid/view/View;

    move-result-object v20

    .line 416
    .restart local v20       #sel:Landroid/view/View;
    goto :goto_4

    .line 419
    .end local v20           #sel:Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v5}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    move-result-object v20

    .line 423
    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 426
    .end local v20           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/table/AbstractAdapterView;->mSpecificTop:I

    invoke-virtual {v2, v3, v7}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    .line 427
    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 430
    .end local v20           #sel:Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/table/AbstractAdapterView;->mSpecificTop:I

    invoke-virtual {v2, v3, v7}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    .line 431
    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 435
    .end local v20           #sel:Landroid/view/View;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v11, v4, v5}, Lcom/htc/view/table/TableColleague;->moveSelection(III)Landroid/view/View;

    move-result-object v20

    .line 436
    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 439
    .end local v20           #sel:Landroid/view/View;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/table/TableView;->mPercentage:I

    invoke-virtual/range {v2 .. v7}, Lcom/htc/view/table/TableColleague;->moveSelectionCenter(IIIII)Landroid/view/View;

    move-result-object v20

    .line 440
    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 449
    .end local v20           #sel:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v15, v2, -0x1

    .line 451
    .local v15, last:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v15, v5}, Lcom/htc/view/table/TableColleague;->fillFromBottom(II)Landroid/view/View;

    move-result-object v20

    .line 454
    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 456
    .end local v15           #last:I
    .end local v20           #sel:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-ge v2, v3, :cond_11

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-nez v18, :cond_10

    .end local v4           #childrenOrnTop:I
    :goto_6
    invoke-virtual {v2, v3, v4}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v20           #sel:Landroid/view/View;
    .restart local v4       #childrenOrnTop:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v4

    goto :goto_6

    .line 460
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-ge v2, v3, :cond_13

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-nez v17, :cond_12

    .end local v4           #childrenOrnTop:I
    :goto_7
    invoke-virtual {v2, v3, v4}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v20           #sel:Landroid/view/View;
    .restart local v4       #childrenOrnTop:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v4

    goto :goto_7

    .line 466
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 481
    .end local v4           #childrenOrnTop:I
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 499
    .end local v5           #childrenOrnBottom:I
    .end local v6           #childHeight:I
    .end local v9           #childCount:I
    .end local v10           #dataChanged:Z
    .end local v11           #delta:I
    .end local v12           #firstPosition:I
    .end local v16           #newSel:Landroid/view/View;
    .end local v17           #oldFirst:Landroid/view/View;
    .end local v18           #oldSel:Landroid/view/View;
    .end local v19           #recycleBin:Lcom/htc/view/table/AbstractTableView$RecycleBin;
    .end local v20           #sel:Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v8, :cond_15

    .line 500
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    :cond_15
    throw v2

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 399
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected lookForSelectablePosition(IZ)I
    .locals 2
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    .line 209
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    :cond_0
    sget p1, Lcom/htc/view/table/TableView;->INVALID_POSITION:I

    .line 216
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 213
    .restart local p1
    :cond_2
    if-ltz p1, :cond_3

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-lt p1, v1, :cond_1

    .line 214
    :cond_3
    sget p1, Lcom/htc/view/table/TableView;->INVALID_POSITION:I

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 766
    invoke-super {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractTableView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 768
    const/4 v1, -0x1

    .line 769
    .local v1, closestChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 770
    iget v7, p0, Lcom/htc/view/table/AbstractTableView;->mScrollX:I

    iget v8, p0, Lcom/htc/view/table/AbstractTableView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 774
    iget-object v6, p0, Lcom/htc/view/table/TableView;->mTempRect:Landroid/graphics/Rect;

    .line 775
    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 776
    .local v4, minDistance:I
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 777
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 779
    invoke-direct {p0, v3, p2}, Lcom/htc/view/table/TableView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 777
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 783
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 784
    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 785
    invoke-virtual {p0, v5, v6}, Lcom/htc/view/table/TableView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 786
    invoke-static {p3, v6, p2}, Lcom/htc/view/table/TableView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 788
    .local v2, distance:I
    if-ge v2, v4, :cond_0

    .line 789
    move v4, v2

    .line 790
    move v1, v3

    goto :goto_1

    .line 795
    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 796
    iget v7, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableView;->setSelection(I)V

    .line 800
    :goto_2
    return-void

    .line 798
    :cond_3
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 556
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/view/table/TableView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 565
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/view/table/TableView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 574
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/view/table/TableView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 247
    invoke-super {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->onMeasure(II)V

    .line 248
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getDefaultVTableColleague()Lcom/htc/view/table/VTableColleague;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1, p2}, Lcom/htc/view/table/TableColleague;->onMeasure(II)V

    .line 252
    return-void
.end method

.method pageScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 682
    const/4 v0, -0x1

    .line 684
    .local v0, nextPage:I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 685
    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 690
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 691
    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 692
    const/4 v1, 0x1

    .line 695
    :cond_1
    return v1

    .line 686
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 687
    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mDataSetObserver:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->resetList()V

    .line 139
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->clear()V

    .line 140
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    .line 142
    sget v1, Lcom/htc/view/table/TableView;->INVALID_POSITION:I

    iput v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedPosition:I

    .line 143
    sget-wide v1, Lcom/htc/view/table/TableView;->INVALID_ROW_ID:J

    iput-wide v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedRowId:J

    .line 145
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 146
    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldItemCount:I

    .line 147
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    .line 148
    iput-boolean v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    .line 149
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->checkFocus()V

    .line 151
    new-instance v1, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/view/table/AbstractAdapterView;)V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mDataSetObserver:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    .line 152
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mDataSetObserver:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 154
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->setViewTypeCount(I)V

    .line 157
    iget-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 158
    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/htc/view/table/TableView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 163
    .local v0, position:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableView;->setNextSelectedPositionInt(I)V

    .line 165
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->checkSelectionChanged()V

    .line 172
    .end local v0           #position:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayout()V

    .line 173
    return-void

    .line 160
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/htc/view/table/TableView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_0

    .line 167
    .end local v0           #position:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->checkFocus()V

    .line 169
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setCenterView(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1012
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    .line 1013
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    .line 1015
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1016
    :cond_0
    const-string v0, "TableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCenterView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is invalid(0 ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :goto_0
    return-void

    .line 1021
    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    .line 1022
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 1023
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    goto :goto_0
.end method

.method public setCenterView(II)V
    .locals 3
    .parameter "position"
    .parameter "parentViewHeightOrWidth"

    .prologue
    .line 1044
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    .line 1045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    .line 1047
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1048
    :cond_0
    const-string v0, "TableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCenterView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is invalid(0 ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :goto_0
    return-void

    .line 1054
    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    .line 1056
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 1057
    iput p2, p0, Lcom/htc/view/table/TableView;->mTableViewOrnHeight:I

    .line 1058
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    goto :goto_0
.end method

.method public setCenterView(III)V
    .locals 3
    .parameter "position"
    .parameter "parentViewHeightOrWidth"
    .parameter "percentage"

    .prologue
    .line 1066
    iput p3, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    .line 1069
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1070
    :cond_0
    const-string v0, "TableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCenterView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is invalid(0 ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :goto_0
    return-void

    .line 1075
    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    .line 1076
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 1077
    iput p2, p0, Lcom/htc/view/table/TableView;->mTableViewOrnHeight:I

    .line 1078
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    goto :goto_0
.end method

.method public setColumnRowWidth(I)V
    .locals 0
    .parameter "columnRowWidth"

    .prologue
    .line 924
    iput p1, p0, Lcom/htc/view/table/TableView;->mRequestedOrnWidth:I

    .line 925
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v0, v0, Lcom/htc/view/table/TableColleague;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 857
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iput p1, v0, Lcom/htc/view/table/TableColleague;->mGravity:I

    .line 858
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayoutIfNecessary()V

    .line 860
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .parameter "horizontalSpacing"

    .prologue
    .line 871
    iput p1, p0, Lcom/htc/view/table/TableView;->mRequestedHorizontalSpacing:I

    .line 872
    return-void
.end method

.method protected setMeasuredDimensionEx(II)V
    .locals 0
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 1008
    invoke-super {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->setMeasuredDimension(II)V

    .line 1009
    return-void
.end method

.method public setMultiStop(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setMultiStop(Z)V

    .line 1221
    return-void
.end method

.method public setMultiStopDistance(I)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setMultiStopDistance(I)Z

    move-result v0

    return v0
.end method

.method public setNumColumnRows(I)V
    .locals 2
    .parameter "numColumnRows"

    .prologue
    .line 934
    iput p1, p0, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    .line 935
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v1, p0, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->setNumColumnRows(I)V

    .line 938
    :cond_0
    return-void
.end method

.method public setRepeatEnable(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableView;->setCycling(Z)V

    .line 1211
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setRepeatEnable(Z)V

    .line 1212
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setCloseBouncing(Z)V

    .line 1213
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setNextSelectedPositionInt(I)V

    .line 526
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 527
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayout()V

    .line 528
    return-void

    .line 524
    :cond_0
    iput p1, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method protected setSelectionInt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    .line 542
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setNextSelectedPositionInt(I)V

    .line 545
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    .line 548
    return-void
.end method

.method public setStopExcept(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setStopExcept(I)V

    .line 1237
    return-void
.end method

.method public setStretchMode(I)V
    .locals 1
    .parameter "stretchMode"

    .prologue
    .line 899
    iget v0, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 900
    iput p1, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    .line 901
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayoutIfNecessary()V

    .line 903
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .parameter "verticalSpacing"

    .prologue
    .line 884
    iput p1, p0, Lcom/htc/view/table/TableView;->mRequestedVerticalSpacing:I

    .line 885
    return-void
.end method
