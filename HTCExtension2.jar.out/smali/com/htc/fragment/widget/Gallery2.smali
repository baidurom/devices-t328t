.class public Lcom/htc/fragment/widget/Gallery2;
.super Lcom/htc/fragment/widget/AbsSpinner;
.source "Gallery2.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/Gallery2$RecycleBin;,
        Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;,
        Lcom/htc/fragment/widget/Gallery2$LayoutParams;,
        Lcom/htc/fragment/widget/Gallery2$FlingRunnable;
    }
.end annotation


# static fields
.field public static final ANIMODE_FULL:I = 0x3

.field protected static final ANIMODE_MASK_CLICK:I = 0x1

.field protected static final ANIMODE_MASK_DRAG:I = 0x2

.field public static final ANIMODE_NONE:I = 0x0

.field public static final ANIMODE_PART:I = 0x2

.field public static final ANITYPE_CUBE_CONTENT:I = 0x4

.field public static final ANITYPE_CUBE_FAKESCR:I = 0x5

.field protected static final ANITYPE_MASK_CUDE:I = 0x4

.field protected static final ANITYPE_MASK_FAKESCR:I = 0x1

.field protected static final ANITYPE_MASK_SHIFT:I = 0x2

.field public static final ANITYPE_NONE:I = 0x0

.field public static final ANITYPE_SENSE35:I = 0x1

.field public static final ANITYPE_SHIFT_CONTENT:I = 0x2

.field public static final ANITYPE_SHIFT_FAKESCR:I = 0x3

.field static final DONT_ADDVIEW:Z = false

.field static final ENABLE_DRAWINGCACHE:Z = false

.field static final ENABLE_PRIORITYQUEUE:Z = true

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final localLOGV:Z


# instance fields
.field protected ANIMODE:I

.field protected ANITYPE_CURRENT:I

.field protected ANITYPE_DEFINED:I

.field private isDefineAnyAnimation:Z

.field private isDefineClickAnimation:Z

.field private isDefineDragAnimation:Z

.field private isDefineFakeView:Z

.field private isUsingAnyAnimation:Z

.field private isUsingClickAnimation:Z

.field private isUsingDragAnimation:Z

.field private isUsingFakeView:Z

.field private mAnimationDuration:I

.field private mContextMenuInfo:Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;

.field mCurrentTab:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field protected mFastScrollerFromWidget:Lcom/htc/fragment/widget/FastScroller;

.field private mFlingRunnable:Lcom/htc/fragment/widget/Gallery2$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field protected mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

.field private mIsFirstScroll:Z

.field mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field protected mRecycler:Lcom/htc/fragment/widget/Gallery2$RecycleBin;

.field mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F

.field private startLayoutAt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/fragment/widget/Gallery2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 384
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 387
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fragment/widget/Gallery2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 388
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 391
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput v6, p0, Lcom/htc/fragment/widget/Gallery2;->mSpacing:I

    .line 84
    const/16 v5, 0x190

    iput v5, p0, Lcom/htc/fragment/widget/Gallery2;->mAnimationDuration:I

    .line 121
    new-instance v5, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;-><init>(Lcom/htc/fragment/widget/Gallery2;)V

    iput-object v5, p0, Lcom/htc/fragment/widget/Gallery2;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery2$FlingRunnable;

    .line 127
    new-instance v5, Lcom/htc/fragment/widget/Gallery2$1;

    invoke-direct {v5, p0}, Lcom/htc/fragment/widget/Gallery2$1;-><init>(Lcom/htc/fragment/widget/Gallery2;)V

    iput-object v5, p0, Lcom/htc/fragment/widget/Gallery2;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 151
    iput-boolean v7, p0, Lcom/htc/fragment/widget/Gallery2;->mShouldCallbackDuringFling:Z

    .line 156
    iput-boolean v7, p0, Lcom/htc/fragment/widget/Gallery2;->mShouldCallbackOnUnselectedItemClick:Z

    .line 236
    iput v9, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    .line 238
    iput v10, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    .line 240
    iput v10, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    .line 723
    iput v6, p0, Lcom/htc/fragment/widget/Gallery2;->startLayoutAt:I

    .line 1905
    iput v6, p0, Lcom/htc/fragment/widget/Gallery2;->mCurrentTab:I

    .line 2028
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/fragment/widget/Gallery2;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    .line 2029
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/fragment/widget/Gallery2;->mFastScrollerFromWidget:Lcom/htc/fragment/widget/FastScroller;

    .line 2038
    new-instance v5, Lcom/htc/fragment/widget/Gallery2$RecycleBin;

    invoke-direct {v5, p0}, Lcom/htc/fragment/widget/Gallery2$RecycleBin;-><init>(Lcom/htc/fragment/widget/Gallery2;)V

    iput-object v5, p0, Lcom/htc/fragment/widget/Gallery2;->mRecycler:Lcom/htc/fragment/widget/Gallery2$RecycleBin;

    .line 393
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/htc/fragment/widget/Gallery2;->mGestureDetector:Landroid/view/GestureDetector;

    .line 394
    iget-object v5, p0, Lcom/htc/fragment/widget/Gallery2;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 396
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 399
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 400
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 401
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery2;->setGravity(I)V

    .line 404
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 406
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 407
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/Gallery2;->setAnimationDuration(I)V

    .line 410
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 412
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/Gallery2;->setSpacing(I)V

    .line 414
    const/high16 v5, 0x3f00

    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 416
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Lcom/htc/fragment/widget/Gallery2;->setUnselectedAlpha(F)V

    .line 418
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 422
    iget v5, p0, Lcom/htc/fragment/widget/Gallery2;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/htc/fragment/widget/Gallery2;->mGroupFlags:I

    .line 424
    iget v5, p0, Lcom/htc/fragment/widget/Gallery2;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/htc/fragment/widget/Gallery2;->mGroupFlags:I

    .line 427
    iput v6, p0, Lcom/htc/fragment/widget/Gallery2;->mCurrentTab:I

    .line 429
    return-void
.end method

.method static synthetic access$002(Lcom/htc/fragment/widget/Gallery2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery2;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/fragment/widget/Gallery2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/fragment/widget/Gallery2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery2;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/fragment/widget/Gallery2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/fragment/widget/Gallery2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery2;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/fragment/widget/Gallery2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/fragment/widget/Gallery2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery2;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$602(Lcom/htc/fragment/widget/Gallery2;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/fragment/widget/Gallery2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/fragment/widget/Gallery2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/fragment/widget/Gallery2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 1181
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getMeasuredHeight()I

    move-result v3

    .line 1182
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1184
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 1186
    .local v2, childTop:I
    iget v4, p0, Lcom/htc/fragment/widget/Gallery2;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 1199
    :goto_2
    return v2

    .line 1181
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getHeight()I

    move-result v3

    goto :goto_0

    .line 1182
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 1188
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 1189
    goto :goto_2

    .line 1191
    :sswitch_1
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 1193
    .local v0, availableSpace:I
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 1194
    goto :goto_2

    .line 1196
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 1186
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10
    .parameter "toLeft"

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getChildCount()I

    move-result v6

    .line 733
    .local v6, numChildren:I
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 734
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 735
    .local v7, start:I
    const/4 v1, 0x0

    .line 737
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 738
    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    .line 740
    .local v3, galleryLeft:I
    iput v3, p0, Lcom/htc/fragment/widget/Gallery2;->startLayoutAt:I

    .line 741
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 742
    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 744
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    iput v8, p0, Lcom/htc/fragment/widget/Gallery2;->startLayoutAt:I

    .line 745
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 747
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    iput v8, p0, Lcom/htc/fragment/widget/Gallery2;->startLayoutAt:I

    .line 776
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    :cond_0
    :goto_1
    invoke-virtual {p0, v7, v1}, Lcom/htc/fragment/widget/Gallery2;->detachViewsFromParent(II)V

    .line 778
    if-eqz p1, :cond_1

    .line 779
    iget v8, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 781
    :cond_1
    return-void

    .line 750
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 751
    iget-object v8, p0, Lcom/htc/fragment/widget/Gallery2;->mRecycler:Lcom/htc/fragment/widget/Gallery2$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->put(ILandroid/view/View;)V

    .line 741
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 756
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 758
    .local v4, galleryRight:I
    iput v4, p0, Lcom/htc/fragment/widget/Gallery2;->startLayoutAt:I

    .line 759
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_2
    if-ltz v5, :cond_0

    .line 760
    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 762
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, p0, Lcom/htc/fragment/widget/Gallery2;->startLayoutAt:I

    .line 763
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v4, :cond_4

    .line 765
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, p0, Lcom/htc/fragment/widget/Gallery2;->startLayoutAt:I

    goto :goto_1

    .line 768
    :cond_4
    move v7, v5

    .line 769
    add-int/lit8 v1, v1, 0x1

    .line 770
    iget-object v8, p0, Lcom/htc/fragment/widget/Gallery2;->mRecycler:Lcom/htc/fragment/widget/Gallery2$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->put(ILandroid/view/View;)V

    .line 759
    add-int/lit8 v5, v5, -0x1

    goto :goto_2
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1488
    const/4 v6, 0x0

    .line 1490
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/fragment/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1495
    :cond_0
    if-nez v6, :cond_1

    .line 1496
    new-instance v0, Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mContextMenuInfo:Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;

    .line 1499
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1507
    :cond_1
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1404
    if-eqz p1, :cond_0

    .line 1405
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1408
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->setPressed(Z)V

    .line 1409
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1413
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1414
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1413
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1417
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery2;->setPressed(Z)V

    .line 1418
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 7

    .prologue
    .line 982
    iget v3, p0, Lcom/htc/fragment/widget/Gallery2;->mSpacing:I

    .line 983
    .local v3, itemSpacing:I
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    .line 987
    .local v2, galleryLeft:I
    iget v5, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 988
    .local v0, curPosition:I
    iget v1, p0, Lcom/htc/fragment/widget/Gallery2;->startLayoutAt:I

    .line 1003
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_0

    if-ltz v0, :cond_0

    .line 1004
    iget v5, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v5, v1, v6}, Lcom/htc/fragment/widget/Gallery2;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 1009
    .local v4, prevIterationView:Landroid/view/View;
    iput v0, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 1012
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 1013
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1015
    .end local v4           #prevIterationView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 9

    .prologue
    .line 1018
    iget v3, p0, Lcom/htc/fragment/widget/Gallery2;->mSpacing:I

    .line 1019
    .local v3, itemSpacing:I
    iget v7, p0, Lcom/htc/fragment/widget/AdapterView;->mRight:I

    iget v8, p0, Lcom/htc/fragment/widget/AdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 1020
    .local v2, galleryRight:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getChildCount()I

    move-result v4

    .line 1021
    .local v4, numChildren:I
    iget v5, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    .line 1025
    .local v5, numItems:I
    iget v7, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 1026
    .local v1, curPosition:I
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->startLayoutAt:I

    .line 1040
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_0

    if-ge v1, v5, :cond_0

    .line 1041
    iget v7, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    const/4 v8, 0x1

    invoke-virtual {p0, v1, v7, v0, v8}, Lcom/htc/fragment/widget/Gallery2;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 1046
    .local v6, prevIterationView:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1049
    .end local v6           #prevIterationView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 719
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 704
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 703
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 706
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->mSuppressSelectionChanged:Z

    .line 807
    invoke-super {p0}, Lcom/htc/fragment/widget/AbsSpinner;->selectionChanged()V

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->invalidate()V

    .line 810
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery2;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery2;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/htc/fragment/widget/Gallery2;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 792
    .local v1, selectedCenter:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getCenterOfGallery()I

    move-result v2

    .line 794
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 795
    .local v0, scrollAmount:I
    if-eqz v0, :cond_2

    .line 796
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery2;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery2$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 798
    :cond_2
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery2;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 4
    .parameter "childPosition"

    .prologue
    .line 1613
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1615
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1616
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Lcom/htc/fragment/widget/Gallery2;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1617
    .local v1, distance:I
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery2$FlingRunnable;

    invoke-virtual {v2, v1}, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->startUsingDistance(I)V

    .line 1618
    const/4 v2, 0x1

    .line 1621
    .end local v1           #distance:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 825
    iget-object v7, p0, Lcom/htc/fragment/widget/Gallery2;->mSelectedChild:Landroid/view/View;

    .line 826
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/fragment/widget/Gallery2;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getCenterOfGallery()I

    move-result v3

    .line 831
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 836
    :cond_2
    const v2, 0x7fffffff

    .line 837
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 838
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 840
    invoke-virtual {p0, v4}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 842
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 844
    move v6, v4

    .line 856
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    .line 858
    .local v5, newPos:I
    iget v8, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 861
    invoke-super {p0, v5}, Lcom/htc/fragment/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 862
    iget v8, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v9, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/fragment/widget/Gallery2;->mSelectedChild:Landroid/view/View;

    .line 864
    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/Gallery2;->setNextSelectedPositionInt(I)V

    .line 865
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->checkSelectionChanged()V

    goto :goto_0

    .line 848
    .end local v5           #newPos:I
    .restart local v0       #child:Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 850
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 851
    move v2, v1

    .line 852
    move v6, v4

    .line 838
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1634
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery2;->mSelectedChild:Landroid/view/View;

    .line 1636
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mSelectedChild:Landroid/view/View;

    .line 1638
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne v1, v0, :cond_1

    .line 1662
    :cond_0
    :goto_0
    return-void

    .line 1642
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1643
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1646
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1647
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1652
    :cond_2
    if-eqz v1, :cond_0

    .line 1655
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1659
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public animationStateToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimationState {mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type defined = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type current = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected checkAnimationModeAndType()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    if-ne v0, v1, :cond_4

    .line 283
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineFakeView:Z

    .line 284
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineAnyAnimation:Z

    .line 285
    iput-boolean v2, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineClickAnimation:Z

    .line 286
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    if-eqz v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineDragAnimation:Z

    .line 293
    :goto_3
    const-string v0, "ani"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ANITYPE_DEFINED], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->animationStateToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "ani"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDefineFakeView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineFakeView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDefineAnyAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineAnyAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDefineClickAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineClickAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDefineDragAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineDragAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->checkAnimationSettings()V

    .line 301
    return-void

    :cond_1
    move v0, v2

    .line 283
    goto :goto_0

    :cond_2
    move v0, v2

    .line 284
    goto :goto_1

    :cond_3
    move v1, v2

    .line 286
    goto :goto_2

    .line 288
    :cond_4
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineFakeView:Z

    .line 289
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineAnyAnimation:Z

    .line 290
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineClickAnimation:Z

    .line 291
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_8

    :goto_7
    iput-boolean v1, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineDragAnimation:Z

    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 288
    goto :goto_4

    :cond_6
    move v0, v2

    .line 289
    goto :goto_5

    :cond_7
    move v0, v2

    .line 290
    goto :goto_6

    :cond_8
    move v1, v2

    .line 291
    goto :goto_7
.end method

.method protected checkAnimationSettings()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    if-ne v0, v1, :cond_3

    .line 306
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingFakeView:Z

    .line 307
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingAnyAnimation:Z

    .line 308
    iput-boolean v2, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingClickAnimation:Z

    .line 309
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingDragAnimation:Z

    .line 316
    :goto_3
    const-string v0, "ani"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ANITYPE_CURRENT], "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->animationStateToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "ani"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUsingFakeView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingFakeView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isUsingAnyAnimation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingAnyAnimation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isUsingClickAnimation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingClickAnimation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isUsingDragAnimation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingDragAnimation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    :goto_4
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/Gallery2;->setStaticTransformationsEnabled(Z)V

    .line 323
    return-void

    :cond_0
    move v0, v2

    .line 306
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 307
    goto :goto_1

    :cond_2
    move v0, v2

    .line 309
    goto :goto_2

    .line 311
    :cond_3
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingFakeView:Z

    .line 312
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_5

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingAnyAnimation:Z

    .line 313
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_6

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingClickAnimation:Z

    .line 314
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_7

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingDragAnimation:Z

    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 311
    goto :goto_5

    :cond_5
    move v0, v2

    .line 312
    goto :goto_6

    :cond_6
    move v0, v2

    .line 313
    goto :goto_7

    :cond_7
    move v0, v2

    .line 314
    goto :goto_8

    :cond_8
    move v1, v2

    .line 322
    goto :goto_4
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 557
    instance-of v0, p1, Lcom/htc/fragment/widget/Gallery2$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1517
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    const/4 v0, 0x1

    .line 1521
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1444
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1431
    return-void
.end method

.method public enableAnimation(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 362
    const-string v0, "ani"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAnimation, ANITYPE_CURRENT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineAnyAnimation:Z

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 366
    :cond_0
    if-eqz p1, :cond_1

    .line 367
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->switchAnimationType(I)V

    goto :goto_0

    .line 370
    :cond_1
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    and-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->switchAnimationType(I)V

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 590
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 575
    new-instance v0, Lcom/htc/fragment/widget/Gallery2$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/fragment/widget/Gallery2$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 566
    new-instance v0, Lcom/htc/fragment/widget/Gallery2$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/fragment/widget/Gallery2$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getCenterOfGallery()I
    .locals 2

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1689
    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1692
    .local v0, selectedIndex:I
    if-gez v0, :cond_1

    .line 1702
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 1694
    .restart local p2
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1696
    goto :goto_0

    .line 1697
    :cond_2
    if-lt p2, v0, :cond_0

    .line 1699
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 613
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 515
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 516
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 518
    const/4 v0, 0x1

    return v0

    .line 516
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mContextMenuInfo:Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 665
    if-eqz p1, :cond_1

    iget v6, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 666
    .local v3, extremeItemPosition:I
    :goto_0
    iget v6, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 668
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 691
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 665
    goto :goto_0

    .line 672
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-static {v1}, Lcom/htc/fragment/widget/Gallery2;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 673
    .local v2, extremeChildCenter:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getCenterOfGallery()I

    move-result v4

    .line 675
    .local v4, galleryCenter:I
    if-eqz p1, :cond_4

    .line 676
    if-le v2, v4, :cond_0

    .line 689
    :cond_3
    sub-int v0, v4, v2

    .line 691
    .local v0, centerDifference:I
    if-eqz p1, :cond_5

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 682
    .end local v0           #centerDifference:I
    :cond_4
    if-lt v2, v4, :cond_3

    goto :goto_1

    .line 691
    .restart local v0       #centerDifference:I
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public isDefineAnyAnimation()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineAnyAnimation:Z

    return v0
.end method

.method public isDefineClickAnimation()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineClickAnimation:Z

    return v0
.end method

.method public isDefineDragAnimation()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineDragAnimation:Z

    return v0
.end method

.method public isDefineFakeView()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isDefineFakeView:Z

    return v0
.end method

.method public isUsingAnimationByCurrnetState()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mFastScrollerFromWidget:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingDragAnimation:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingClickAnimation:Z

    goto :goto_0
.end method

.method public isUsingAnyAnimation()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingAnyAnimation:Z

    return v0
.end method

.method public isUsingClickAnimation()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingClickAnimation:Z

    return v0
.end method

.method public isUsingDragAnimation()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingDragAnimation:Z

    return v0
.end method

.method public isUsingFakeView()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->isUsingFakeView:Z

    return v0
.end method

.method layout(IZ)V
    .locals 6
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v5, 0x0

    .line 882
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery2;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery2;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->getCarousel()Lcom/htc/fragment/widget/CarouselFragment;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery2;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->getCarousel()Lcom/htc/fragment/widget/CarouselFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselFragment;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery2;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->getCarousel()Lcom/htc/fragment/widget/CarouselFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselFragment;->getModel()Lcom/htc/fragment/widget/CarouselModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselModel;->getTabSpecTable()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-eqz v3, :cond_2

    .line 891
    const-string v3, "naeco"

    const-string v4, "block layout!!! because mFlingRunnable isRunning!!!"

    invoke-static {v3, v4}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 910
    :cond_2
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->left:I

    .line 911
    .local v0, childrenLeft:I
    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mRight:I

    iget v4, p0, Lcom/htc/fragment/widget/AdapterView;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v1, v3, v4

    .line 913
    .local v1, childrenWidth:I
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    if-eqz v3, :cond_3

    .line 914
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->handleDataChanged()V

    .line 920
    :cond_3
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 921
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->resetList()V

    goto :goto_0

    .line 926
    :cond_4
    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v3, :cond_5

    .line 927
    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/Gallery2;->setSelectedPositionInt(I)V

    .line 931
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->recycleAllViews()V

    .line 935
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->detachAllViewsFromParent()V

    .line 941
    iput v5, p0, Lcom/htc/fragment/widget/Gallery2;->mRightMost:I

    .line 942
    iput v5, p0, Lcom/htc/fragment/widget/Gallery2;->mLeftMost:I

    .line 951
    iget v3, p0, Lcom/htc/fragment/widget/Gallery2;->mCurrentTab:I

    iput v3, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    .line 952
    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iput v3, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 953
    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v5, v5, v4}, Lcom/htc/fragment/widget/Gallery2;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 964
    .local v2, sel:Landroid/view/View;
    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    iput v3, p0, Lcom/htc/fragment/widget/Gallery2;->startLayoutAt:I

    .line 965
    iget v3, p0, Lcom/htc/fragment/widget/Gallery2;->startLayoutAt:I

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 968
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery2;->mRecycler:Lcom/htc/fragment/widget/Gallery2$RecycleBin;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->clear()V

    .line 970
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->invalidate()V

    .line 971
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->checkSelectionChanged()V

    .line 973
    iput-boolean v5, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    .line 974
    iput-boolean v5, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    .line 975
    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/Gallery2;->setNextSelectedPositionInt(I)V

    .line 977
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery2;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method makeAndAddView(IIIZ)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mRecycler:Lcom/htc/fragment/widget/Gallery2$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v1

    .line 1073
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1075
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1078
    .local v7, childLeft:I
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->mRightMost:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v7

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/Gallery2;->mRightMost:I

    .line 1080
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->mLeftMost:I

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/Gallery2;->mLeftMost:I

    .line 1083
    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fragment/widget/Gallery2;->setUpChild(Landroid/view/View;IIZZ)V

    move-object v6, v1

    .line 1095
    .end local v1           #child:Landroid/view/View;
    .end local v7           #childLeft:I
    .local v6, child:Landroid/view/View;
    :goto_0
    return-object v6

    .line 1090
    .end local v6           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1093
    .restart local v1       #child:Landroid/view/View;
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fragment/widget/Gallery2;->setUpChild(Landroid/view/View;IIZZ)V

    move-object v6, v1

    .line 1095
    .end local v1           #child:Landroid/view/View;
    .restart local v6       #child:Landroid/view/View;
    goto :goto_0
.end method

.method moveNext()Z
    .locals 2

    .prologue
    .line 1604
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1605
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->scrollToChild(I)Z

    .line 1606
    const/4 v0, 0x1

    .line 1608
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    .prologue
    .line 1595
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1596
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->scrollToChild(I)Z

    .line 1597
    const/4 v0, 0x1

    .line 1599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 2118
    invoke-super {p0}, Lcom/htc/fragment/widget/AbsSpinner;->onAttachedToWindow()V

    .line 2120
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->checkAnimationModeAndType()V

    .line 2121
    return-void
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1367
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->onUp()V

    .line 1368
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1334
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery2$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->stop(Z)V

    .line 1337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/Gallery2;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I

    .line 1339
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1340
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchView:Landroid/view/View;

    .line 1341
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1345
    :cond_0
    iput-boolean v2, p0, Lcom/htc/fragment/widget/Gallery2;->mIsFirstScroll:Z

    .line 1348
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 1263
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1270
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/htc/fragment/widget/Gallery2;->mSuppressSelectionChanged:Z

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery2$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->startUsingVelocity(I)V

    .line 1276
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1712
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1719
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1723
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1534
    sparse-switch p1, :sswitch_data_0

    .line 1555
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1551
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1534
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1564
    sparse-switch p1, :sswitch_data_0

    .line 1591
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1568
    :sswitch_0
    iget-boolean v1, p0, Lcom/htc/fragment/widget/Gallery2;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1569
    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    .line 1571
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery2;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/Gallery2;->dispatchPress(Landroid/view/View;)V

    .line 1572
    new-instance v1, Lcom/htc/fragment/widget/Gallery2$2;

    invoke-direct {v1, p0}, Lcom/htc/fragment/widget/Gallery2$2;-><init>(Lcom/htc/fragment/widget/Gallery2;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/fragment/widget/Gallery2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1578
    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1579
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/Gallery2;->performItemClick(Landroid/view/View;IJ)Z

    .line 1585
    .end local v0           #selectedIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/Gallery2;->mReceivedInvokeKeyDown:Z

    .line 1587
    const/4 v1, 0x1

    goto :goto_0

    .line 1564
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 600
    invoke-super/range {p0 .. p5}, Lcom/htc/fragment/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mInLayout:Z

    .line 607
    invoke-virtual {p0, v1, v1}, Lcom/htc/fragment/widget/Gallery2;->layout(IZ)V

    .line 608
    iput-boolean v1, p0, Lcom/htc/fragment/widget/AdapterView;->mInLayout:Z

    .line 609
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 1379
    iget v2, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 1386
    :goto_0
    return-void

    .line 1383
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery2;->performHapticFeedback(I)Z

    .line 1384
    iget v2, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery2;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1385
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/fragment/widget/Gallery2;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1299
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1303
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 1304
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1310
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/htc/fragment/widget/Gallery2;->mSuppressSelectionChanged:Z

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/fragment/widget/Gallery2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1318
    :cond_1
    :goto_0
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->trackMotionScroll(I)V

    .line 1320
    iput-boolean v4, p0, Lcom/htc/fragment/widget/Gallery2;->mIsFirstScroll:Z

    .line 1321
    return v3

    .line 1314
    :cond_2
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/htc/fragment/widget/Gallery2;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1398
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 1237
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 1240
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->scrollToChild(I)Z

    .line 1243
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/fragment/widget/Gallery2;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/fragment/widget/Gallery2;->performItemClick(Landroid/view/View;IJ)Z

    .line 1248
    :cond_1
    const/4 v0, 0x1

    .line 1251
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1210
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1212
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1213
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1215
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->onUp()V

    .line 1221
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1222
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1225
    :cond_1
    return v1

    .line 1216
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1217
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery2$FlingRunnable;

    #getter for: Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/htc/fragment/widget/Gallery2$FlingRunnable;->access$100(Lcom/htc/fragment/widget/Gallery2$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery2;->scrollIntoSlots()V

    .line 1360
    :cond_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery2;->dispatchUnpress()V

    .line 1361
    return-void
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 2089
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getChildCount()I

    move-result v0

    .line 2090
    .local v0, childCount:I
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 2093
    .local v2, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2094
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery2;->mRecycler:Lcom/htc/fragment/widget/Gallery2$RecycleBin;

    add-int v4, v2, v1

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->put(ILandroid/view/View;)V

    .line 2093
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2098
    :cond_0
    return-void
.end method

.method scrollTo(I)V
    .locals 5
    .parameter "deltax"

    .prologue
    .line 1854
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1870
    :cond_0
    :goto_0
    return-void

    .line 1858
    :cond_1
    iget v3, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->isUsingAnimationByCurrnetState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1861
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1862
    .local v0, firstChild:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1863
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1864
    .local v1, itemWidth:I
    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    mul-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    add-int v2, v3, v4

    .line 1866
    .local v2, previousDeltax:I
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/FastScroller;->getOffset()I

    move-result v3

    add-int/2addr v2, v3

    .line 1867
    :cond_2
    sub-int v3, v2, p1

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/Gallery2;->trackMotionScroll(I)V

    goto :goto_0
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery2;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 815
    invoke-super {p0}, Lcom/htc/fragment/widget/AbsSpinner;->selectionChanged()V

    .line 817
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 475
    iput p1, p0, Lcom/htc/fragment/widget/Gallery2;->mAnimationDuration:I

    .line 476
    return-void
.end method

.method public setAnimationMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 326
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    if-eq v0, p1, :cond_0

    .line 327
    iput p1, p0, Lcom/htc/fragment/widget/Gallery2;->ANIMODE:I

    .line 328
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->checkAnimationModeAndType()V

    .line 330
    :cond_0
    return-void
.end method

.method public setAnimationType(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 332
    iget v2, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    if-eq v2, p1, :cond_3

    .line 333
    iget v2, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    and-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, p1, 0x1

    if-eq v2, v3, :cond_2

    .line 334
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 335
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 336
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v2, v0}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToFakeView()V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    .line 340
    .local v1, tab:Lcom/htc/fragment/widget/CarouselHost$TabContainer;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 341
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v2, v0}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tab:Lcom/htc/fragment/widget/CarouselHost$TabContainer;
    check-cast v1, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    .line 342
    .restart local v1       #tab:Lcom/htc/fragment/widget/CarouselHost$TabContainer;
    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 343
    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToContentView()V

    .line 340
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    .end local v0           #i:I
    .end local v1           #tab:Lcom/htc/fragment/widget/CarouselHost$TabContainer;
    :cond_2
    iput p1, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_DEFINED:I

    .line 348
    iput p1, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    .line 349
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->checkAnimationModeAndType()V

    .line 351
    :cond_3
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 445
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery2;->mShouldCallbackDuringFling:Z

    .line 446
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery2;->mShouldCallbackOnUnselectedItemClick:Z

    .line 459
    return-void
.end method

.method setCurrentTab(I)V
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 1907
    iput p1, p0, Lcom/htc/fragment/widget/Gallery2;->mCurrentTab:I

    .line 1911
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    and-int/lit8 v0, v0, -0x2

    if-nez v0, :cond_0

    .line 1912
    invoke-virtual {p0, v1, v1}, Lcom/htc/fragment/widget/Gallery2;->layout(IZ)V

    .line 1913
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1676
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1677
    iput p1, p0, Lcom/htc/fragment/widget/Gallery2;->mGravity:I

    .line 1678
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->requestLayout()V

    .line 1680
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1626
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1629
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery2;->updateSelectedItemMetadata()V

    .line 1630
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 490
    iput p1, p0, Lcom/htc/fragment/widget/Gallery2;->mSpacing:I

    .line 491
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 505
    iput p1, p0, Lcom/htc/fragment/widget/Gallery2;->mUnselectedAlpha:F

    .line 506
    return-void
.end method

.method setUpChild(Landroid/view/View;IIZZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"
    .parameter "skipRelayout"

    .prologue
    .line 1119
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1120
    .local v6, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 1121
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1124
    :cond_0
    if-eqz p5, :cond_2

    .line 1125
    if-eqz p4, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/fragment/widget/Gallery2;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    :goto_1
    iget-boolean v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-eqz v8, :cond_5

    .line 1131
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1132
    .local v7, width:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getMeasuredWidth()I

    move-result v8

    if-ne v7, v8, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getMeasuredHeight()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 1133
    if-eqz p4, :cond_4

    .line 1134
    invoke-virtual {p1, p3}, Landroid/view/View;->setLeft(I)V

    .line 1135
    add-int v8, p3, v7

    invoke-virtual {p1, v8}, Landroid/view/View;->setRight(I)V

    .line 1172
    :goto_2
    return-void

    .line 1125
    .end local v7           #width:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1127
    :cond_2
    if-eqz p4, :cond_3

    const/4 v8, -0x1

    :goto_3
    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/fragment/widget/Gallery2;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 1137
    .restart local v7       #width:I
    :cond_4
    sub-int v8, p3, v7

    invoke-virtual {p1, v8}, Landroid/view/View;->setLeft(I)V

    .line 1138
    invoke-virtual {p1, p3}, Landroid/view/View;->setRight(I)V

    goto :goto_2

    .line 1144
    .end local v7           #width:I
    :cond_5
    if-nez p2, :cond_6

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1147
    iget v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1149
    .local v1, childHeightSpec:I
    iget v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1153
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1159
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/htc/fragment/widget/Gallery2;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1160
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 1162
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1163
    .restart local v7       #width:I
    if-eqz p4, :cond_7

    .line 1164
    move v2, p3

    .line 1165
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 1171
    .local v3, childRight:I
    :goto_5
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 1144
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v7           #width:I
    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    .line 1167
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_7
    sub-int v2, p3, v7

    .line 1168
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_5
.end method

.method setup(Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;Lcom/htc/fragment/widget/FastScroller;)V
    .locals 0
    .parameter "hook"
    .parameter "scroller"

    .prologue
    .line 2031
    iput-object p1, p0, Lcom/htc/fragment/widget/Gallery2;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    .line 2032
    iput-object p2, p0, Lcom/htc/fragment/widget/Gallery2;->mFastScrollerFromWidget:Lcom/htc/fragment/widget/FastScroller;

    .line 2033
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1478
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1479
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1480
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1481
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/Gallery2;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1484
    .end local v0           #index:I
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .parameter "originalView"

    .prologue
    .line 1462
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/Gallery2;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1463
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1464
    const/4 v3, 0x0

    .line 1468
    :goto_0
    return v3

    .line 1467
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1468
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/fragment/widget/Gallery2;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method protected switchAnimationType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 354
    iget v0, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    if-eq v0, p1, :cond_0

    .line 355
    const-string v0, "ani"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchAnimationType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iput p1, p0, Lcom/htc/fragment/widget/Gallery2;->ANITYPE_CURRENT:I

    .line 357
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->checkAnimationSettings()V

    .line 359
    :cond_0
    return-void
.end method

.method trackMotionScroll(I)V
    .locals 2
    .parameter "deltaX"

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    if-gez p1, :cond_2

    const/4 v0, 0x1

    .line 643
    .local v0, toLeft:Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/Gallery2;->offsetChildrenLeftAndRight(I)V

    .line 645
    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/Gallery2;->detachOffScreenChildren(Z)V

    .line 647
    if-eqz v0, :cond_3

    .line 649
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery2;->fillToGalleryRight()V

    .line 656
    :goto_2
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery2;->mRecycler:Lcom/htc/fragment/widget/Gallery2$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->clear()V

    .line 658
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery2;->setSelectionToCenterChild()V

    .line 660
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2;->invalidate()V

    goto :goto_0

    .line 632
    .end local v0           #toLeft:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 652
    .restart local v0       #toLeft:Z
    :cond_3
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery2;->fillToGalleryLeft()V

    goto :goto_2
.end method
