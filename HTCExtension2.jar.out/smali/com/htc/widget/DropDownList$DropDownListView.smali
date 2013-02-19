.class Lcom/htc/widget/DropDownList$DropDownListView;
.super Lcom/htc/widget/HtcListView;
.source "DropDownList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# instance fields
.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2271
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2272
    return-void
.end method

.method static synthetic access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2233
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method private mockMeasureScrapChild(Landroid/view/View;II)V
    .locals 9
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v8, 0x0

    .line 2438
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 2439
    .local v5, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-nez v5, :cond_0

    .line 2440
    new-instance v5, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .end local v5           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    .line 2442
    .restart local v5       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2445
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getPaddingLeft()I

    move-result v2

    .line 2446
    .local v2, listPaddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getPaddingRight()I

    move-result v3

    .line 2447
    .local v3, listPaddingRight:I
    add-int v6, v2, v3

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2449
    .local v1, childWidthSpec:I
    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2451
    .local v4, lpHeight:I
    if-lez v4, :cond_1

    .line 2452
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2456
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2457
    return-void

    .line 2454
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 2307
    const/4 v0, 0x1

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 2287
    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 2297
    const/4 v0, 0x1

    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 2277
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/widget/HtcListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lookForSelectablePos(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 2460
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2461
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2487
    :cond_0
    :goto_0
    return v2

    .line 2465
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2466
    .local v1, count:I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2467
    if-eqz p2, :cond_2

    .line 2468
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2469
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2470
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2473
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2474
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2475
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2479
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2482
    goto :goto_0

    .line 2484
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2487
    goto :goto_0
.end method

.method final mockMeasureHeightOfChildren(IIIII)I
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 2312
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2313
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getPaddingTop()I

    move-result v6

    .line 2314
    .local v6, listPaddingTop:I
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getPaddingBottom()I

    move-result v5

    .line 2315
    .local v5, listPaddingBottom:I
    if-nez v0, :cond_1

    .line 2316
    add-int v7, v6, v5

    .line 2365
    :cond_0
    :goto_0
    return v7

    .line 2320
    :cond_1
    add-int v8, v6, v5

    .line 2321
    .local v8, returnedHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2322
    .local v2, divider:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 2325
    .local v3, dividerHeight:I
    :goto_1
    const/4 v7, 0x0

    .line 2330
    .local v7, prevHeightWithoutPartialChild:I
    const/4 v9, -0x1

    if-ne p3, v9, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 p3, v9, -0x1

    .line 2335
    :cond_2
    move v4, p2

    .local v4, i:I
    :goto_2
    if-gt v4, p3, :cond_8

    .line 2336
    const/4 v9, 0x0

    invoke-interface {v0, v4, v9, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2338
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1, v4, p1}, Lcom/htc/widget/DropDownList$DropDownListView;->mockMeasureScrapChild(Landroid/view/View;II)V

    .line 2340
    if-lez v4, :cond_3

    .line 2342
    add-int/2addr v8, v3

    .line 2345
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 2347
    if-lt v8, p4, :cond_6

    .line 2350
    if-ltz p5, :cond_4

    if-le v4, p5, :cond_4

    if-lez v7, :cond_4

    if-ne v8, p4, :cond_0

    :cond_4
    move v7, p4

    goto :goto_0

    .line 2322
    .end local v1           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v7           #prevHeightWithoutPartialChild:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 2358
    .restart local v1       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v7       #prevHeightWithoutPartialChild:I
    :cond_6
    if-ltz p5, :cond_7

    if-lt v4, p5, :cond_7

    .line 2359
    move v7, v8

    .line 2335
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v1           #child:Landroid/view/View;
    :cond_8
    move v7, v8

    .line 2365
    goto :goto_0
.end method

.method final mockMeasureWidthOfChildren(IIIII)I
    .locals 14
    .parameter "heightMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxWidth"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 2371
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 2372
    .local v1, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getPaddingLeft()I

    move-result v6

    .line 2373
    .local v6, listPaddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getPaddingRight()I

    move-result v7

    .line 2374
    .local v7, listPaddingRight:I
    if-nez v1, :cond_1

    .line 2375
    add-int v9, v6, v7

    .line 2434
    :cond_0
    :goto_0
    return v9

    .line 2379
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2380
    .local v3, divider:Landroid/graphics/drawable/Drawable;
    add-int v10, v6, v7

    .line 2381
    .local v10, returnedWidth:I
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 2384
    .local v4, dividerWidth:I
    :goto_1
    const/4 v9, 0x0

    .line 2388
    .local v9, prevWidthWithoutPartialChild:I
    const/4 v11, -0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    add-int/lit8 p3, v11, -0x1

    .line 2391
    :cond_2
    const/4 v8, -0x1

    .line 2392
    .local v8, maxWidthOfChildren:I
    move/from16 v5, p2

    .local v5, i:I
    :goto_2
    move/from16 v0, p3

    if-gt v5, v0, :cond_9

    .line 2393
    add-int v10, v6, v7

    .line 2394
    const/4 v11, 0x0

    invoke-interface {v1, v5, v11, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2396
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v5, p1}, Lcom/htc/widget/DropDownList$DropDownListView;->mockMeasureScrapChild(Landroid/view/View;II)V

    .line 2398
    if-lez v5, :cond_3

    .line 2400
    add-int/2addr v10, v4

    .line 2409
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/lit8 v10, v11, 0x1c

    .line 2410
    const-string v11, "test"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " returnedWidth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    if-le v10, v8, :cond_4

    move v8, v10

    .line 2416
    :cond_4
    move/from16 v0, p4

    if-lt v10, v0, :cond_7

    .line 2419
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v5, v0, :cond_5

    if-lez v9, :cond_5

    move/from16 v0, p4

    if-ne v10, v0, :cond_0

    :cond_5
    move/from16 v9, p4

    goto :goto_0

    .line 2381
    .end local v2           #child:Landroid/view/View;
    .end local v4           #dividerWidth:I
    .end local v5           #i:I
    .end local v8           #maxWidthOfChildren:I
    .end local v9           #prevWidthWithoutPartialChild:I
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 2427
    .restart local v2       #child:Landroid/view/View;
    .restart local v4       #dividerWidth:I
    .restart local v5       #i:I
    .restart local v8       #maxWidthOfChildren:I
    .restart local v9       #prevWidthWithoutPartialChild:I
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v5, v0, :cond_8

    .line 2428
    move v9, v10

    .line 2392
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v9, v8

    .line 2434
    goto :goto_0
.end method
