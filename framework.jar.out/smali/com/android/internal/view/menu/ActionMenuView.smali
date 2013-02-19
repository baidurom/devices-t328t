.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private childDivider:Landroid/graphics/drawable/Drawable;

.field private disableChildDivider:Z

.field private dividerPadding:I

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 578
    iput-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->disableChildDivider:Z

    .line 587
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->dividerPadding:I

    .line 590
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->childDivider:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 62
    .local v0, density:F
    const/high16 v1, 0x4260

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 63
    const/high16 v1, 0x4080

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 64
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 12
    .parameter "child"
    .parameter "cellSize"
    .parameter "cellsRemaining"
    .parameter "parentHeightMeasureSpec"
    .parameter "parentHeightPadding"

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 344
    .local v7, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int v2, v10, p4

    .line 346
    .local v2, childHeightSize:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 347
    .local v1, childHeightMode:I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 349
    .local v3, childHeightSpec:I
    const/4 v0, 0x0

    .line 350
    .local v0, cellsUsed:I
    if-lez p2, :cond_0

    .line 351
    mul-int v10, p1, p2

    const/high16 v11, -0x8000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 353
    .local v4, childWidthSpec:I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 355
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 356
    .local v8, measuredWidth:I
    div-int v0, v8, p1

    .line 357
    rem-int v10, v8, p1

    if-eqz v10, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 360
    .end local v4           #childWidthSpec:I
    .end local v8           #measuredWidth:I
    :cond_0
    instance-of v10, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_1

    move-object v10, p0

    check-cast v10, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v6, v10

    .line 362
    .local v6, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    iget-boolean v10, v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v10, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    .line 363
    .local v5, expandable:Z
    :goto_1
    iput-boolean v5, v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 365
    iput v0, v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 366
    mul-int v9, v0, p1

    .line 367
    .local v9, targetWidth:I
    const/high16 v10, 0x4000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {p0, v10, v3}, Landroid/view/View;->measure(II)V

    .line 369
    return v0

    .line 360
    .end local v5           #expandable:Z
    .end local v6           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v9           #targetWidth:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 362
    .restart local v6       #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 118
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 119
    .local v17, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 120
    .local v37, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 122
    .local v19, heightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 123
    .local v36, widthPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 125
    .local v18, heightPadding:I
    sub-int v37, v37, v36

    .line 128
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 129
    .local v4, cellCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 131
    .local v6, cellSizeRemaining:I
    if-nez v4, :cond_0

    .line 133
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 325
    :goto_0
    return-void

    .line 137
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 139
    .local v5, cellSize:I
    move v8, v4

    .line 140
    .local v8, cellsRemaining:I
    const/16 v25, 0x0

    .line 141
    .local v25, maxChildHeight:I
    const/16 v24, 0x0

    .line 142
    .local v24, maxCellsUsed:I
    const/4 v14, 0x0

    .line 143
    .local v14, expandableItemCount:I
    const/16 v34, 0x0

    .line 144
    .local v34, visibleItemCount:I
    const/16 v16, 0x0

    .line 147
    .local v16, hasOverflow:Z
    const-wide/16 v32, 0x0

    .line 149
    .local v32, smallestItemsAt:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v12

    .line 150
    .local v12, childCount:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v12, :cond_8

    .line 151
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 152
    .local v11, child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 150
    :cond_1
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 154
    :cond_2
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v22, v0

    .line 155
    .local v22, isGeneratedItem:Z
    add-int/lit8 v34, v34, 0x1

    .line 157
    if-eqz v22, :cond_3

    .line 160
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 163
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 164
    .local v23, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 165
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 166
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 167
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 168
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 169
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 170
    if-eqz v22, :cond_6

    move-object/from16 v38, v11

    check-cast v38, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_6

    const/16 v38, 0x1

    :goto_3
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 173
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_7

    const/4 v7, 0x1

    .line 175
    .local v7, cellsAvailable:I
    :goto_4
    move/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 178
    .local v9, cellsUsed:I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 179
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4

    add-int/lit8 v14, v14, 0x1

    .line 180
    :cond_4
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    const/16 v16, 0x1

    .line 182
    :cond_5
    sub-int/2addr v8, v9

    .line 183
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 184
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_1

    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_2

    .line 170
    .end local v7           #cellsAvailable:I
    .end local v9           #cellsUsed:I
    :cond_6
    const/16 v38, 0x0

    goto :goto_3

    :cond_7
    move v7, v8

    .line 173
    goto :goto_4

    .line 189
    .end local v11           #child:Landroid/view/View;
    .end local v22           #isGeneratedItem:Z
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_8
    if-eqz v16, :cond_a

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 194
    .local v10, centerSingleExpandedItem:Z
    :goto_5
    const/16 v30, 0x0

    .line 195
    .local v30, needsExpansion:Z
    :goto_6
    if-lez v14, :cond_e

    if-lez v8, :cond_e

    .line 196
    const v26, 0x7fffffff

    .line 197
    .local v26, minCells:I
    const-wide/16 v27, 0x0

    .line 198
    .local v27, minCellsAt:J
    const/16 v29, 0x0

    .line 199
    .local v29, minCellsItemCount:I
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v12, :cond_d

    .line 200
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 201
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 204
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_b

    .line 199
    :cond_9
    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 189
    .end local v10           #centerSingleExpandedItem:Z
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v26           #minCells:I
    .end local v27           #minCellsAt:J
    .end local v29           #minCellsItemCount:I
    .end local v30           #needsExpansion:Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 207
    .restart local v10       #centerSingleExpandedItem:Z
    .restart local v11       #child:Landroid/view/View;
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v26       #minCells:I
    .restart local v27       #minCellsAt:J
    .restart local v29       #minCellsItemCount:I
    .restart local v30       #needsExpansion:Z
    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 208
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 209
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v27, v0

    .line 210
    const/16 v29, 0x1

    goto :goto_8

    .line 211
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 212
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v27, v27, v38

    .line 213
    add-int/lit8 v29, v29, 0x1

    goto :goto_8

    .line 218
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_d
    or-long v32, v32, v27

    .line 220
    move/from16 v0, v29

    if-le v0, v8, :cond_13

    .line 249
    .end local v26           #minCells:I
    .end local v27           #minCellsAt:J
    .end local v29           #minCellsItemCount:I
    :cond_e
    if-nez v16, :cond_18

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    const/16 v31, 0x1

    .line 250
    .local v31, singleItem:Z
    :goto_9
    if-lez v8, :cond_20

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_20

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_f

    if-nez v31, :cond_f

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_20

    .line 252
    :cond_f
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 254
    .local v13, expandCount:F
    if-nez v31, :cond_11

    .line 256
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_10

    .line 257
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 258
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_10

    const/high16 v38, 0x3f00

    sub-float v13, v13, v38

    .line 260
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_10
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    .line 261
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 262
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f00

    sub-float v13, v13, v38

    .line 266
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_19

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 269
    .local v15, extraPixels:I
    :goto_a
    const/16 v21, 0x0

    :goto_b
    move/from16 v0, v21

    if-ge v0, v12, :cond_1f

    .line 270
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1a

    .line 269
    :cond_12
    :goto_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 223
    .end local v13           #expandCount:F
    .end local v15           #extraPixels:I
    .end local v31           #singleItem:Z
    .restart local v26       #minCells:I
    .restart local v27       #minCellsAt:J
    .restart local v29       #minCellsItemCount:I
    :cond_13
    add-int/lit8 v26, v26, 0x1

    .line 225
    const/16 v21, 0x0

    :goto_d
    move/from16 v0, v21

    if-ge v0, v12, :cond_17

    .line 226
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 227
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 228
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v27

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_15

    .line 230
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 225
    :cond_14
    :goto_e
    add-int/lit8 v21, v21, 0x1

    goto :goto_d

    .line 234
    :cond_15
    if-eqz v10, :cond_16

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_16

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_16

    .line 236
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 238
    :cond_16
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 239
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 240
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 243
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_17
    const/16 v30, 0x1

    .line 244
    goto/16 :goto_6

    .line 249
    .end local v26           #minCells:I
    .end local v27           #minCellsAt:J
    .end local v29           #minCellsItemCount:I
    :cond_18
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 266
    .restart local v13       #expandCount:F
    .restart local v31       #singleItem:Z
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 272
    .restart local v15       #extraPixels:I
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 273
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 274
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1c

    .line 276
    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 277
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 278
    if-nez v21, :cond_1b

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1b

    .line 281
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 283
    :cond_1b
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 284
    :cond_1c
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 285
    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 286
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 287
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 288
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 293
    :cond_1d
    if-eqz v21, :cond_1e

    .line 294
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 296
    :cond_1e
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v21

    move/from16 v1, v38

    if-eq v0, v1, :cond_12

    .line 297
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 302
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_1f
    const/4 v8, 0x0

    .line 306
    .end local v13           #expandCount:F
    .end local v15           #extraPixels:I
    :cond_20
    if-eqz v30, :cond_22

    .line 307
    sub-int v38, v19, v18

    move/from16 v0, v38

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 308
    .local v20, heightSpec:I
    const/16 v21, 0x0

    :goto_f
    move/from16 v0, v21

    if-ge v0, v12, :cond_22

    .line 309
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 310
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 312
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_21

    .line 308
    :goto_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 314
    :cond_21
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 315
    .local v35, width:I
    const/high16 v38, 0x4000

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 319
    .end local v11           #child:Landroid/view/View;
    .end local v20           #heightSpec:I
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v35           #width:I
    :cond_22
    const/high16 v38, 0x4000

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_23

    .line 320
    move/from16 v19, v25

    .line 323
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 324
    mul-int v38, v8, v5

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 493
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableLayoutDivider()V
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->disableChildDivider:Z

    .line 584
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->invalidate()V

    .line 585
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 595
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 598
    iget-boolean v9, p0, Lcom/android/internal/view/menu/ActionMenuView;->disableChildDivider:Z

    if-eqz v9, :cond_5

    .line 601
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuView;->childDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/internal/view/menu/ActionMenuView;->dividerPadding:I

    if-gez v9, :cond_1

    .line 605
    :cond_0
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 607
    .local v6, resource:Landroid/content/res/Resources;
    const/4 v7, 0x0

    .line 608
    .local v7, resourceID:I
    const-string v9, "common_b_div"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 610
    if-eqz v7, :cond_2

    .line 611
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/view/menu/ActionMenuView;->childDivider:Landroid/graphics/drawable/Drawable;

    .line 618
    :goto_0
    const v9, 0x10e0040

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/view/menu/ActionMenuView;->dividerPadding:I

    .line 621
    .end local v6           #resource:Landroid/content/res/Resources;
    .end local v7           #resourceID:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/android/internal/view/menu/ActionMenuView;->dividerPadding:I

    sub-int v0, v9, v10

    .line 622
    .local v0, bottomBound:I
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuView;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 625
    .local v3, dividerWidth:I
    const/4 v5, 0x0

    .local v5, loop:I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    .local v1, childCount:I
    :goto_1
    if-ge v5, v1, :cond_5

    .line 627
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 630
    .local v2, childView:Landroid/view/View;
    if-nez v2, :cond_3

    .line 625
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 614
    .end local v0           #bottomBound:I
    .end local v1           #childCount:I
    .end local v2           #childView:Landroid/view/View;
    .end local v3           #dividerWidth:I
    .end local v5           #loop:I
    .restart local v6       #resource:Landroid/content/res/Resources;
    .restart local v7       #resourceID:I
    :cond_2
    const-string v9, "HTCActionBar"

    const-string v10, "common_b_div not found"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const v9, 0x10807ab

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/view/menu/ActionMenuView;->childDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 633
    .end local v6           #resource:Landroid/content/res/Resources;
    .end local v7           #resourceID:I
    .restart local v0       #bottomBound:I
    .restart local v1       #childCount:I
    .restart local v2       #childView:Landroid/view/View;
    .restart local v3       #dividerWidth:I
    .restart local v5       #loop:I
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 634
    .local v4, leftBound:I
    add-int v8, v4, v3

    .line 637
    .local v8, rightBound:I
    if-lez v4, :cond_4

    .line 638
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuView;->childDivider:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v10, v4, -0x1

    iget v11, p0, Lcom/android/internal/view/menu/ActionMenuView;->dividerPadding:I

    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v9, v10, v11, v12, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 643
    :goto_3
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuView;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 640
    :cond_4
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuView;->childDivider:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Lcom/android/internal/view/menu/ActionMenuView;->dividerPadding:I

    invoke-virtual {v9, v4, v10, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 646
    .end local v0           #bottomBound:I
    .end local v1           #childCount:I
    .end local v2           #childView:Landroid/view/View;
    .end local v3           #dividerWidth:I
    .end local v4           #leftBound:I
    .end local v5           #loop:I
    .end local v8           #rightBound:I
    :cond_5
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 468
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 470
    .local v0, params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 471
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 476
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "p"

    .prologue
    .line 481
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    .line 482
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 483
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 484
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 488
    .end local v0           #result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_0
    return-object v0

    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 498
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 499
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 518
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->disableChildDivider:Z

    if-eqz v3, :cond_1

    .line 519
    const/4 v2, 0x0

    .line 530
    :cond_0
    :goto_0
    return v2

    .line 521
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 522
    .local v1, childBefore:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 523
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    .line 524
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 525
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1           #childBefore:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 527
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 528
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 512
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 81
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->disableChildDivider:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 84
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 89
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 454
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 455
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 456
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 374
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v28, v0

    if-nez v28, :cond_1

    .line 375
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    .line 380
    .local v6, childCount:I
    add-int v28, p3, p5

    div-int/lit8 v14, v28, 0x2

    .line 381
    .local v14, midVertical:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 382
    .local v7, dividerWidth:I
    const/16 v17, 0x0

    .line 383
    .local v17, overflowWidth:I
    const/16 v16, 0x0

    .line 384
    .local v16, nonOverflowWidth:I
    const/4 v15, 0x0

    .line 385
    .local v15, nonOverflowCount:I
    sub-int v28, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v29

    sub-int v27, v28, v29

    .line 386
    .local v27, widthRemaining:I
    const/4 v8, 0x0

    .line 387
    .local v8, hasOverflow:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v6, :cond_6

    .line 388
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 389
    .local v25, v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 387
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 393
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 394
    .local v18, p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 395
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 397
    add-int v17, v17, v7

    .line 400
    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 401
    .local v9, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    sub-int v19, v28, v29

    .line 402
    .local v19, r:I
    sub-int v11, v19, v17

    .line 403
    .local v11, l:I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 404
    .local v24, t:I
    add-int v5, v24, v9

    .line 405
    .local v5, b:I
    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 407
    sub-int v27, v27, v17

    .line 408
    const/4 v8, 0x1

    .line 409
    goto :goto_2

    .line 410
    .end local v5           #b:I
    .end local v9           #height:I
    .end local v11           #l:I
    .end local v19           #r:I
    .end local v24           #t:I
    :cond_4
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    add-int v20, v28, v29

    .line 411
    .local v20, size:I
    add-int v16, v16, v20

    .line 412
    sub-int v27, v27, v20

    .line 413
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 414
    add-int v16, v16, v7

    .line 416
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 420
    .end local v18           #p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v20           #size:I
    .end local v25           #v:Landroid/view/View;
    :cond_6
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v6, v0, :cond_7

    if-nez v8, :cond_7

    .line 422
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 423
    .restart local v25       #v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 424
    .local v26, width:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 425
    .restart local v9       #height:I
    sub-int v28, p4, p2

    div-int/lit8 v13, v28, 0x2

    .line 426
    .local v13, midHorizontal:I
    div-int/lit8 v28, v26, 0x2

    sub-int v11, v13, v28

    .line 427
    .restart local v11       #l:I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 428
    .restart local v24       #t:I
    add-int v28, v11, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 432
    .end local v9           #height:I
    .end local v11           #l:I
    .end local v13           #midHorizontal:I
    .end local v24           #t:I
    .end local v25           #v:Landroid/view/View;
    .end local v26           #width:I
    :cond_7
    if-eqz v8, :cond_9

    const/16 v28, 0x0

    :goto_3
    sub-int v21, v15, v28

    .line 433
    .local v21, spacerCount:I
    const/16 v29, 0x0

    if-lez v21, :cond_a

    div-int v28, v27, v21

    :goto_4
    move/from16 v0, v29

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 435
    .local v22, spacerSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v23

    .line 436
    .local v23, startLeft:I
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_0

    .line 437
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 438
    .restart local v25       #v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 439
    .local v12, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    iget-boolean v0, v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 436
    :cond_8
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 432
    .end local v12           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v21           #spacerCount:I
    .end local v22           #spacerSize:I
    .end local v23           #startLeft:I
    .end local v25           #v:Landroid/view/View;
    :cond_9
    const/16 v28, 0x1

    goto :goto_3

    .line 433
    .restart local v21       #spacerCount:I
    :cond_a
    const/16 v28, 0x0

    goto :goto_4

    .line 443
    .restart local v12       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v22       #spacerSize:I
    .restart local v23       #startLeft:I
    .restart local v25       #v:Landroid/view/View;
    :cond_b
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v23, v23, v28

    .line 444
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 445
    .restart local v26       #width:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 446
    .restart local v9       #height:I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 447
    .restart local v24       #t:I
    add-int v28, v23, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 448
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v28, v0

    add-int v28, v28, v26

    add-int v28, v28, v22

    add-int v23, v23, v28

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 94
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 95
    .local v0, wasFormatted:Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v5, 0x4000

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 97
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v0, v2, :cond_0

    .line 98
    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 103
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 104
    .local v1, widthSize:I
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v2, :cond_1

    .line 105
    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 106
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 109
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v2, :cond_3

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 114
    :goto_1
    return-void

    .end local v1           #widthSize:I
    :cond_2
    move v2, v4

    .line 95
    goto :goto_0

    .line 112
    .restart local v1       #widthSize:I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .parameter "reserveOverflow"

    .prologue
    .line 463
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 464
    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .parameter "presenter"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 68
    return-void
.end method
