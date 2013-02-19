.class Lcom/htc/widget/DropDownList$DropDownExpandableListView;
.super Lcom/htc/widget/HtcExpandableListView;
.source "DropDownList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownExpandableListView"
.end annotation


# static fields
.field private static final DEFAULT_INDICATOR_WIDTH:I = 0x21

.field private static final INDICATOR_NOT_FOUNT:I = -0x1

.field private static final INDICATOR_RIGHT_MARGIN:I = 0xa


# instance fields
.field private mExpandedPosition:I

.field private mIndicatorWidth:I

.field private mListSelectionHidden:Z

.field final synthetic this$0:Lcom/htc/widget/DropDownList;


# direct methods
.method public constructor <init>(Lcom/htc/widget/DropDownList;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    .line 2588
    iput-object p1, p0, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->this$0:Lcom/htc/widget/DropDownList;

    .line 2589
    const/4 v2, 0x0

    const v3, 0x101006f

    invoke-direct {p0, p2, v2, v3}, Lcom/htc/widget/HtcExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2580
    iput v4, p0, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mExpandedPosition:I

    .line 2582
    iput v4, p0, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mIndicatorWidth:I

    .line 2592
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108026a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2593
    .local v1, indicator:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 2594
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mIndicatorWidth:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2599
    .end local v1           #indicator:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 2595
    :catch_0
    move-exception v0

    .line 2596
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "DropDownList"

    const-string v3, "Resource com.android.internal.R.drawable.expander_group not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1802(Lcom/htc/widget/DropDownList$DropDownExpandableListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2575
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mListSelectionHidden:Z

    return p1
.end method

.method private mockMeasureScrapChild(Landroid/view/View;II)V
    .locals 9
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v8, 0x0

    .line 2782
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 2783
    .local v5, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-nez v5, :cond_0

    .line 2784
    new-instance v5, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .end local v5           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    .line 2786
    .restart local v5       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2789
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getPaddingLeft()I

    move-result v2

    .line 2790
    .local v2, listPaddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getPaddingRight()I

    move-result v3

    .line 2791
    .local v3, listPaddingRight:I
    add-int v6, v2, v3

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2793
    .local v1, childWidthSpec:I
    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2795
    .local v4, lpHeight:I
    if-lez v4, :cond_1

    .line 2796
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2800
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2801
    return-void

    .line 2798
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method


# virtual methods
.method getExpandedPosition()I
    .locals 1

    .prologue
    .line 2853
    iget v0, p0, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mExpandedPosition:I

    return v0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 2650
    const/4 v0, 0x1

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 2622
    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 2636
    const/4 v0, 0x1

    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 2608
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mListSelectionHidden:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/widget/HtcExpandableListView;->isInTouchMode()Z

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

    .line 2804
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2805
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2831
    :cond_0
    :goto_0
    return v2

    .line 2809
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2810
    .local v1, count:I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2811
    if-eqz p2, :cond_2

    .line 2812
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2813
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2814
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2817
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2818
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2819
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2823
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2826
    goto :goto_0

    .line 2828
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2831
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
    .line 2655
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2656
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getPaddingTop()I

    move-result v6

    .line 2657
    .local v6, listPaddingTop:I
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getPaddingBottom()I

    move-result v5

    .line 2658
    .local v5, listPaddingBottom:I
    if-nez v0, :cond_1

    .line 2659
    add-int v7, v6, v5

    .line 2708
    :cond_0
    :goto_0
    return v7

    .line 2663
    :cond_1
    add-int v8, v6, v5

    .line 2664
    .local v8, returnedHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2665
    .local v2, divider:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 2668
    .local v3, dividerHeight:I
    :goto_1
    const/4 v7, 0x0

    .line 2673
    .local v7, prevHeightWithoutPartialChild:I
    const/4 v9, -0x1

    if-ne p3, v9, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 p3, v9, -0x1

    .line 2678
    :cond_2
    move v4, p2

    .local v4, i:I
    :goto_2
    if-gt v4, p3, :cond_8

    .line 2679
    const/4 v9, 0x0

    invoke-interface {v0, v4, v9, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2681
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1, v4, p1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mockMeasureScrapChild(Landroid/view/View;II)V

    .line 2683
    if-lez v4, :cond_3

    .line 2685
    add-int/2addr v8, v3

    .line 2688
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 2690
    if-lt v8, p4, :cond_6

    .line 2693
    if-ltz p5, :cond_4

    if-le v4, p5, :cond_4

    if-lez v7, :cond_4

    if-ne v8, p4, :cond_0

    :cond_4
    move v7, p4

    goto :goto_0

    .line 2665
    .end local v1           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v7           #prevHeightWithoutPartialChild:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 2701
    .restart local v1       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v7       #prevHeightWithoutPartialChild:I
    :cond_6
    if-ltz p5, :cond_7

    if-lt v4, p5, :cond_7

    .line 2702
    move v7, v8

    .line 2678
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v1           #child:Landroid/view/View;
    :cond_8
    move v7, v8

    .line 2708
    goto :goto_0
.end method

.method final mockMeasureWidthOfChildren(IIIII)I
    .locals 12
    .parameter "heightMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxWidth"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 2714
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 2715
    .local v1, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getPaddingLeft()I

    move-result v6

    .line 2716
    .local v6, listPaddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getPaddingRight()I

    move-result v7

    .line 2717
    .local v7, listPaddingRight:I
    if-nez v1, :cond_1

    .line 2718
    add-int v9, v6, v7

    .line 2778
    :cond_0
    :goto_0
    return v9

    .line 2722
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2723
    .local v3, divider:Landroid/graphics/drawable/Drawable;
    add-int v10, v6, v7

    .line 2724
    .local v10, returnedWidth:I
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 2727
    .local v4, dividerWidth:I
    :goto_1
    const/4 v9, 0x0

    .line 2732
    .local v9, prevWidthWithoutPartialChild:I
    const/4 v11, -0x1

    if-ne p3, v11, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    add-int/lit8 p3, v11, -0x1

    .line 2735
    :cond_2
    const/4 v8, -0x1

    .line 2736
    .local v8, maxWidthOfChildren:I
    move v5, p2

    .local v5, i:I
    :goto_2
    if-gt v5, p3, :cond_9

    .line 2737
    add-int v10, v6, v7

    .line 2738
    const/4 v11, 0x0

    invoke-interface {v1, v5, v11, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2741
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v5, p1}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mockMeasureScrapChild(Landroid/view/View;II)V

    .line 2743
    if-lez v5, :cond_3

    .line 2745
    add-int/2addr v10, v4

    .line 2754
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/lit8 v10, v11, 0x1c

    .line 2756
    if-le v10, v8, :cond_4

    move v8, v10

    .line 2760
    :cond_4
    move/from16 v0, p4

    if-lt v10, v0, :cond_7

    .line 2763
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v5, v0, :cond_5

    if-lez v9, :cond_5

    move/from16 v0, p4

    if-ne v10, v0, :cond_0

    :cond_5
    move/from16 v9, p4

    goto :goto_0

    .line 2724
    .end local v2           #child:Landroid/view/View;
    .end local v4           #dividerWidth:I
    .end local v5           #i:I
    .end local v8           #maxWidthOfChildren:I
    .end local v9           #prevWidthWithoutPartialChild:I
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 2771
    .restart local v2       #child:Landroid/view/View;
    .restart local v4       #dividerWidth:I
    .restart local v5       #i:I
    .restart local v8       #maxWidthOfChildren:I
    .restart local v9       #prevWidthWithoutPartialChild:I
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v5, v0, :cond_8

    .line 2772
    move v9, v10

    .line 2736
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v9, v8

    .line 2778
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v2, -0x1

    .line 2841
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcExpandableListView;->onMeasure(II)V

    .line 2842
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->getMeasuredWidth()I

    move-result v0

    .line 2843
    .local v0, measureWidth:I
    iget-object v1, p0, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mIndicatorLeft:I
    invoke-static {v1}, Lcom/htc/widget/DropDownList;->access$1500(Lcom/htc/widget/DropDownList;)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mIndicatorRight:I
    invoke-static {v1}, Lcom/htc/widget/DropDownList;->access$1600(Lcom/htc/widget/DropDownList;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2844
    :cond_0
    iget v1, p0, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mIndicatorWidth:I

    if-eq v1, v2, :cond_2

    .line 2845
    iget v1, p0, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mIndicatorWidth:I

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0xa

    add-int/lit8 v2, v0, -0xa

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setIndicatorBounds(II)V

    .line 2850
    :cond_1
    :goto_0
    return-void

    .line 2847
    :cond_2
    add-int/lit8 v1, v0, -0x21

    add-int/lit8 v1, v1, -0xa

    add-int/lit8 v2, v0, -0xa

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->setIndicatorBounds(II)V

    goto :goto_0
.end method

.method setExpandedPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 2857
    iput p1, p0, Lcom/htc/widget/DropDownList$DropDownExpandableListView;->mExpandedPosition:I

    .line 2858
    return-void
.end method
