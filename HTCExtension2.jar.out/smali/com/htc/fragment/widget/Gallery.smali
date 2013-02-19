.class Lcom/htc/fragment/widget/Gallery;
.super Lcom/htc/fragment/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/Gallery$LayoutParams;,
        Lcom/htc/fragment/widget/Gallery$FlingRunnable;
    }
.end annotation


# static fields
.field static final MODE_ACTIVITY:I = 0x3e9

.field static final MODE_EDITOR:I = 0x3ea

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final localLOGV:Z


# instance fields
.field private iconPadding:I

.field private mAnimationDuration:I

.field private mContextMenuInfo:Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;

.field mDetachCounter:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field protected mDragger:Lcom/htc/fragment/widget/DragController;

.field private mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mHighMost:I

.field private mIsFirstScroll:Z

.field private mIsForceStop:Z

.field private mLowMost:I

.field mNeedModify:Z

.field private mOrientationChangedFlag:Z

.field mReorderFrom:I

.field mReorderTo:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field protected mState:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/fragment/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 162
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fragment/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput v5, p0, Lcom/htc/fragment/widget/Gallery;->mSpacing:I

    .line 61
    const/16 v4, 0x190

    iput v4, p0, Lcom/htc/fragment/widget/Gallery;->mAnimationDuration:I

    .line 91
    new-instance v4, Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    invoke-direct {v4, p0}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;-><init>(Lcom/htc/fragment/widget/Gallery;)V

    iput-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    .line 97
    new-instance v4, Lcom/htc/fragment/widget/Gallery$1;

    invoke-direct {v4, p0}, Lcom/htc/fragment/widget/Gallery$1;-><init>(Lcom/htc/fragment/widget/Gallery;)V

    iput-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 121
    iput-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 126
    iput-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 155
    const/16 v4, 0x3e9

    iput v4, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    .line 759
    iput-boolean v5, p0, Lcom/htc/fragment/widget/Gallery;->mIsForceStop:Z

    .line 1840
    iput v7, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    .line 1885
    iput-boolean v5, p0, Lcom/htc/fragment/widget/Gallery;->mOrientationChangedFlag:Z

    .line 168
    new-instance v4, Landroid/view/GestureDetector;

    invoke-direct {v4, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 169
    iget-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 171
    sget-object v4, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 174
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 175
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 176
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery;->setGravity(I)V

    .line 179
    :cond_0
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 181
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 182
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/Gallery;->setAnimationDuration(I)V

    .line 185
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 187
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/Gallery;->setSpacing(I)V

    .line 189
    const/high16 v4, 0x3f80

    invoke-virtual {p0, v4}, Lcom/htc/fragment/widget/Gallery;->setUnselectedAlpha(F)V

    .line 191
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/htc/fragment/widget/Gallery;->mGroupFlags:I

    .line 194
    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/htc/fragment/widget/Gallery;->mGroupFlags:I

    .line 196
    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/Gallery;->setFastScrollEnabled(Z)V

    .line 197
    return-void
.end method

.method static synthetic access$002(Lcom/htc/fragment/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/fragment/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mIsForceStop:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/fragment/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/fragment/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$502(Lcom/htc/fragment/widget/Gallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingBottom:I

    return v0
.end method

.method private calculateLeft(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 1123
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getMeasuredWidth()I

    move-result v2

    .line 1124
    .local v2, myWidth:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1126
    .local v1, childWidth:I
    :goto_1
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 1128
    .local v0, childLeft:I
    return v0

    .line 1123
    .end local v0           #childLeft:I
    .end local v1           #childWidth:I
    .end local v2           #myWidth:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getWidth()I

    move-result v2

    goto :goto_0

    .line 1124
    .restart local v2       #myWidth:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_1
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 1113
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getMeasuredHeight()I

    move-result v2

    .line 1114
    .local v2, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1116
    .local v0, childHeight:I
    :goto_1
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 1118
    .local v1, childTop:I
    return v1

    .line 1113
    .end local v0           #childHeight:I
    .end local v1           #childTop:I
    .end local v2           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getHeight()I

    move-result v2

    goto :goto_0

    .line 1114
    .restart local v2       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1
.end method

.method private detachOffScreenChildren(Z)V
    .locals 12
    .parameter "toLowEnd"

    .prologue
    .line 637
    const/4 v9, 0x0

    .line 638
    .local v9, start:I
    const/4 v1, 0x0

    .line 640
    .local v1, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v8

    .line 641
    .local v8, numChildren:I
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 643
    .local v2, firstPosition:I
    if-eqz p1, :cond_4

    .line 645
    iget-boolean v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v10, :cond_3

    .line 647
    iget v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    .line 648
    .local v4, galleryLeft:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 650
    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 652
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v10, v4, :cond_2

    .line 716
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v9, v1}, Lcom/htc/fragment/widget/Gallery;->detachViewsFromParent(II)V

    .line 718
    if-eqz p1, :cond_1

    .line 720
    iget v10, p0, Lcom/htc/fragment/widget/Gallery;->mDetachCounter:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/htc/fragment/widget/Gallery;->mDetachCounter:I

    .line 721
    iget v10, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 723
    :cond_1
    return-void

    .line 656
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 657
    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 648
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 663
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryLeft:I
    .end local v7           #i:I
    :cond_3
    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    .line 664
    .local v6, galleryTop:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    if-ge v7, v8, :cond_0

    .line 666
    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 668
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v6, :cond_0

    .line 672
    add-int/lit8 v1, v1, 0x1

    .line 673
    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 664
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 680
    .end local v0           #child:Landroid/view/View;
    .end local v6           #galleryTop:I
    .end local v7           #i:I
    :cond_4
    iget-boolean v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v10, :cond_5

    .line 682
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    sub-int v5, v10, v11

    .line 683
    .local v5, galleryRight:I
    add-int/lit8 v7, v8, -0x1

    .restart local v7       #i:I
    :goto_2
    if-ltz v7, :cond_0

    .line 685
    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 687
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v10, v5, :cond_0

    .line 691
    move v9, v7

    .line 692
    add-int/lit8 v1, v1, 0x1

    .line 693
    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 683
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 699
    .end local v0           #child:Landroid/view/View;
    .end local v5           #galleryRight:I
    .end local v7           #i:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingBottom:I

    sub-int v3, v10, v11

    .line 700
    .local v3, galleryBottom:I
    add-int/lit8 v7, v8, -0x1

    .restart local v7       #i:I
    :goto_3
    if-ltz v7, :cond_0

    .line 702
    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 704
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v3, :cond_0

    .line 708
    move v9, v7

    .line 709
    add-int/lit8 v1, v1, 0x1

    .line 710
    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 700
    add-int/lit8 v7, v7, -0x1

    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1426
    const/4 v6, 0x0

    .line 1428
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/htc/fragment/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/fragment/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1433
    :cond_0
    if-nez v6, :cond_1

    .line 1434
    new-instance v0, Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mContextMenuInfo:Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;

    .line 1435
    invoke-super {p0, p0}, Lcom/htc/fragment/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1438
    :cond_1
    if-eqz v6, :cond_2

    .line 1439
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->performHapticFeedback(I)Z

    .line 1442
    :cond_2
    return v6
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1351
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1352
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1351
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1355
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery;->setPressed(Z)V

    .line 1356
    return-void
.end method

.method private fillToGalleryHighEnd()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 937
    iget v5, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    .line 938
    .local v5, numItems:I
    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mSpacing:I

    .line 939
    .local v3, itemSpacing:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v4

    .line 940
    .local v4, numChildren:I
    iget-boolean v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/fragment/widget/AdapterView;->mRight:I

    iget v8, p0, Lcom/htc/fragment/widget/AdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 944
    .local v2, galleryHighEnd:I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 946
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 948
    iget v7, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 949
    .local v1, curPosition:I
    iget-boolean v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 958
    .local v0, curLowEndEdge:I
    :goto_1
    if-ge v0, v2, :cond_5

    if-ge v1, v5, :cond_5

    .line 960
    iget v7, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/fragment/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 961
    iget-boolean v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 962
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 940
    .end local v0           #curLowEndEdge:I
    .end local v1           #curPosition:I
    .end local v2           #galleryHighEnd:I
    .end local v6           #prevIterationView:Landroid/view/View;
    :cond_0
    iget v7, p0, Lcom/htc/fragment/widget/AdapterView;->mBottom:I

    iget v8, p0, Lcom/htc/fragment/widget/AdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingBottom:I

    sub-int v2, v7, v8

    goto :goto_0

    .line 949
    .restart local v1       #curPosition:I
    .restart local v2       #galleryHighEnd:I
    .restart local v6       #prevIterationView:Landroid/view/View;
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v0, v7, v3

    goto :goto_1

    .line 953
    .end local v1           #curPosition:I
    :cond_2
    iget v7, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 954
    iget-boolean v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v7, :cond_3

    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    .line 955
    .restart local v0       #curLowEndEdge:I
    :goto_3
    iput-boolean v9, p0, Lcom/htc/fragment/widget/Gallery;->mShouldStopFling:Z

    goto :goto_1

    .line 954
    .end local v0           #curLowEndEdge:I
    :cond_3
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    goto :goto_3

    .line 961
    .restart local v0       #curLowEndEdge:I
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v0, v7, v3

    goto :goto_2

    .line 964
    :cond_5
    return-void
.end method

.method private fillToGalleryLowEnd()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 906
    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mSpacing:I

    .line 907
    .local v3, itemSpacing:I
    iget-boolean v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v5, :cond_0

    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    .line 909
    .local v2, galleryLowEnd:I
    :goto_0
    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 913
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 915
    iget v5, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 916
    .local v1, curPosition:I
    iget-boolean v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v0, v5, v3

    .line 925
    .local v0, curHighEdge:I
    :goto_1
    if-le v0, v2, :cond_5

    if-ltz v1, :cond_5

    .line 927
    iget v5, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Lcom/htc/fragment/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 928
    iput v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 930
    iget-boolean v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v0, v5, v3

    .line 931
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 907
    .end local v0           #curHighEdge:I
    .end local v1           #curPosition:I
    .end local v2           #galleryLowEnd:I
    .end local v4           #prevIterationView:Landroid/view/View;
    :cond_0
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    goto :goto_0

    .line 916
    .restart local v1       #curPosition:I
    .restart local v2       #galleryLowEnd:I
    .restart local v4       #prevIterationView:Landroid/view/View;
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    goto :goto_1

    .line 920
    .end local v1           #curPosition:I
    :cond_2
    const/4 v1, 0x0

    .line 921
    .restart local v1       #curPosition:I
    iget-boolean v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/htc/fragment/widget/AdapterView;->mRight:I

    iget v6, p0, Lcom/htc/fragment/widget/AdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 922
    .restart local v0       #curHighEdge:I
    :goto_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/fragment/widget/Gallery;->mShouldStopFling:Z

    goto :goto_1

    .line 921
    .end local v0           #curHighEdge:I
    :cond_3
    iget v5, p0, Lcom/htc/fragment/widget/AdapterView;->mBottom:I

    iget v6, p0, Lcom/htc/fragment/widget/AdapterView;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingBottom:I

    sub-int v0, v5, v6

    goto :goto_3

    .line 930
    .restart local v0       #curHighEdge:I
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    goto :goto_2

    .line 933
    :cond_5
    return-void
.end method

.method private getHighEndOfGallery()I
    .locals 2

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 610
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingBottom:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getHighEndOfView(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 626
    if-nez p1, :cond_0

    .line 627
    const/4 v0, 0x0

    .line 632
    :goto_0
    return v0

    .line 629
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 630
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    .line 632
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method private getLowEndOfGallery()I
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 600
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    .line 602
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    goto :goto_0
.end method

.method private getLowEndOfView(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 615
    if-nez p1, :cond_0

    .line 616
    const/4 v0, 0x0

    .line 621
    :goto_0
    return v0

    .line 618
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 619
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 621
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "offset"
    .parameter "xy"
    .parameter "fromLowEnd"

    .prologue
    .line 1019
    iget-boolean v4, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_2

    .line 1021
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4, p1}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 1022
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1024
    invoke-direct {p0, p1, v0}, Lcom/htc/fragment/widget/Gallery;->setChildLayoutParams(ILandroid/view/View;)V

    .line 1026
    iget-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1027
    .local v2, childLowEnd:I
    :goto_0
    iget-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1029
    .local v3, length:I
    :goto_1
    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mHighMost:I

    add-int v5, v2, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/fragment/widget/Gallery;->mHighMost:I

    .line 1030
    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mLowMost:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/fragment/widget/Gallery;->mLowMost:I

    .line 1031
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1046
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLowEnd:I
    .end local v3           #length:I
    .local v1, child:Landroid/view/View;
    :goto_2
    return-object v1

    .line 1026
    .end local v1           #child:Landroid/view/View;
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    .line 1027
    .restart local v2       #childLowEnd:I
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_1

    .line 1037
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLowEnd:I
    :cond_2
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1039
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/htc/fragment/widget/Gallery;->setChildLayoutParams(ILandroid/view/View;)V

    .line 1040
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 1042
    iget v4, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v4, :cond_3

    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    const/16 v5, 0x3ea

    if-eq v4, v5, :cond_3

    .line 1043
    const v4, 0x2020061

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/fragment/widget/CarouselTextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/fragment/widget/CarouselTextView;->enableBrightScreen(Z)V

    :cond_3
    move-object v1, v0

    .line 1046
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_2
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 565
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 564
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 566
    :cond_0
    return-void
.end method

.method private offsetChildrenLowEndAndHighEnd(III)V
    .locals 3
    .parameter "from"
    .parameter "to"
    .parameter "offset"

    .prologue
    .line 581
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p2, v2

    .line 582
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, v2

    .line 584
    add-int/lit8 v1, p2, -0x1

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_2

    .line 586
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 587
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 589
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_1

    .line 590
    invoke-virtual {v0, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 584
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 592
    :cond_1
    invoke-virtual {v0, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 595
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 775
    invoke-super {p0}, Lcom/htc/fragment/widget/AbsSpinner;->selectionChanged()V

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->invalidate()V

    .line 778
    return-void
.end method

.method private putGalleryThumb()V
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->isEditorMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 970
    :cond_0
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 1
    .parameter "childPosition"

    .prologue
    .line 1446
    const/4 v0, 0x0

    return v0
.end method

.method private setChildLayoutParams(ILandroid/view/View;)V
    .locals 4
    .parameter "position"
    .parameter "child"

    .prologue
    const/4 v2, 0x1

    .line 1843
    if-nez p2, :cond_0

    .line 1878
    :goto_0
    return-void

    .line 1847
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    if-gez v0, :cond_1

    .line 1848
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    .line 1850
    :cond_1
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 1851
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    if-ne p1, v0, :cond_4

    .line 1852
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->generateReducedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1854
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getReducedWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    :goto_2
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getReducedHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsHeight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_2

    .line 1859
    :cond_4
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    if-ne p1, v0, :cond_5

    .line 1860
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->generateShrinkedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1862
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1863
    :cond_5
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    if-ne p1, v0, :cond_8

    .line 1864
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->generateExpandedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1865
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getExpandedWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_3
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    :goto_4
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    goto :goto_3

    :cond_7
    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getExpandedHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsHeight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_4

    .line 1871
    :cond_8
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1872
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1875
    :cond_9
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1876
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "xy"
    .parameter "fromLowEnd"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1051
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 1053
    .local v6, lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 1054
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    check-cast v6, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 1056
    .restart local v6       #lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    :cond_0
    if-eqz p4, :cond_2

    const/4 v7, -0x1

    :goto_0
    invoke-virtual {p0, p1, v7, v6}, Lcom/htc/fragment/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1057
    if-nez p2, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1059
    iget v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v8, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1061
    .local v1, childHeightSpec:I
    iget v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v7, v8, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1064
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1069
    if-eqz p4, :cond_4

    .line 1071
    iget-boolean v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v7, :cond_3

    .line 1073
    move v2, p3

    .line 1074
    .local v2, childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1076
    .local v3, childRight:I
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1077
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 1108
    .local v0, childBottom:I
    :goto_1
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1109
    return-void

    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    :cond_2
    move v7, v8

    .line 1056
    goto :goto_0

    .line 1081
    .restart local v1       #childHeightSpec:I
    .restart local v5       #childWidthSpec:I
    :cond_3
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/Gallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 1082
    .restart local v2       #childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1084
    .restart local v3       #childRight:I
    move v4, p3

    .line 1085
    .restart local v4       #childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .restart local v0       #childBottom:I
    goto :goto_1

    .line 1090
    .end local v0           #childBottom:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    :cond_4
    iget-boolean v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v7, :cond_5

    .line 1092
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v2, p3, v7

    .line 1093
    .restart local v2       #childLeft:I
    move v3, p3

    .line 1095
    .restart local v3       #childRight:I
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1096
    .restart local v4       #childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .restart local v0       #childBottom:I
    goto :goto_1

    .line 1100
    .end local v0           #childBottom:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    :cond_5
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/Gallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 1101
    .restart local v2       #childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1103
    .restart local v3       #childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v4, p3, v7

    .line 1104
    .restart local v4       #childTop:I
    move v0, p3

    .restart local v0       #childBottom:I
    goto :goto_1
.end method

.method private updateSelectedItemMetadata()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1459
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1461
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1462
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1485
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1467
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1469
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1470
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1475
    :cond_2
    if-eqz v1, :cond_0

    .line 1478
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1482
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method calibrateThumb(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->isEditorMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->calibrateThumb(I)V

    .line 1013
    :cond_0
    return-void
.end method

.method cancelAnimation()V
    .locals 0

    .prologue
    .line 1882
    invoke-super {p0}, Lcom/htc/fragment/widget/AbsSpinner;->cancelAnimation()V

    .line 1883
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 325
    instance-of v0, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1382
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1369
    return-void
.end method

.method public forceStopPartialFling()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mIsForceStop:Z

    .line 766
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 767
    iput-boolean v1, p0, Lcom/htc/fragment/widget/Gallery;->mIsForceStop:Z

    .line 768
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 354
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    .line 357
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected generateExpandedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 378
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getExpandedWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    .line 381
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getExpandedHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 343
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 334
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateReducedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 390
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getReducedWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    .line 393
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getReducedHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected generateShrinkedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 366
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getShrinkedWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    .line 369
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getShrinkedHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1511
    return p2
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 283
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 284
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 286
    const/4 v0, 0x1

    return v0

    .line 284
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mContextMenuInfo:Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLowEnd"
    .parameter "delta"

    .prologue
    const/4 v5, 0x0

    .line 525
    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->isPartialFling()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move v5, p2

    .line 555
    :cond_0
    :goto_0
    return v5

    .line 528
    :cond_1
    if-eqz p1, :cond_2

    iget v6, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 529
    .local v3, extremeItemPosition:I
    :goto_1
    iget v6, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 531
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_3

    move v5, p2

    .line 532
    goto :goto_0

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_2
    move v3, v5

    .line 528
    goto :goto_1

    .line 535
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_3
    if-eqz p1, :cond_5

    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/Gallery;->getHighEndOfView(Landroid/view/View;)I

    move-result v2

    .line 537
    .local v2, extremeChildBound:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getDragBinGridView()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 538
    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->getHighEndOfGallery()I

    move-result v7

    iget-boolean v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsWidth()I

    move-result v6

    :goto_3
    sub-int v4, v7, v6

    .line 542
    .local v4, galleryBound:I
    :goto_4
    if-eqz p1, :cond_a

    .line 544
    if-le v2, v4, :cond_0

    .line 553
    :cond_4
    sub-int v0, v4, v2

    .line 555
    .local v0, boundDifference:I
    if-eqz p1, :cond_b

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 535
    .end local v0           #boundDifference:I
    .end local v2           #extremeChildBound:I
    .end local v4           #galleryBound:I
    :cond_5
    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/Gallery;->getLowEndOfView(Landroid/view/View;)I

    move-result v2

    goto :goto_2

    .line 538
    .restart local v2       #extremeChildBound:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsHeight()I

    move-result v6

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->getLowEndOfGallery()I

    move-result v4

    goto :goto_4

    .line 540
    :cond_8
    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->getHighEndOfGallery()I

    move-result v6

    iget v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->mHighBorder:I

    sub-int v4, v6, v7

    .restart local v4       #galleryBound:I
    :goto_5
    goto :goto_4

    .end local v4           #galleryBound:I
    :cond_9
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->getLowEndOfGallery()I

    move-result v6

    iget v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLowBorder:I

    add-int v4, v6, v7

    goto :goto_5

    .line 549
    .restart local v4       #galleryBound:I
    :cond_a
    if-lt v2, v4, :cond_4

    goto :goto_0

    .line 555
    .restart local v0       #boundDifference:I
    :cond_b
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 10
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v9, 0x0

    .line 792
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    const/16 v7, 0x3ea

    if-ne v6, v7, :cond_1

    .line 794
    const/4 v5, 0x0

    .line 795
    .local v5, width:I
    const/4 v2, 0x0

    .line 798
    .local v2, height:I
    invoke-virtual {p0, v9}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 800
    .local v1, firstChild:Landroid/view/View;
    iget-boolean v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v6, :cond_3

    .line 802
    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLowBorder:I

    add-int v0, v6, v7

    .line 803
    .local v0, childrenLow:I
    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemX:I

    .line 812
    :goto_0
    if-eqz v1, :cond_6

    iget-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->mOrientationChangedFlag:Z

    if-nez v6, :cond_6

    .line 814
    iget-boolean v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v6, :cond_4

    .line 815
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemX:I

    .line 819
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 820
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 822
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 824
    iget-boolean v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v6, :cond_5

    .line 825
    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemX:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemX:I

    .line 833
    :cond_0
    :goto_2
    iget-boolean v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v6, :cond_7

    .line 835
    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemX:I

    if-le v6, v0, :cond_1

    .line 836
    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemX:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemX:I

    .line 845
    .end local v0           #childrenLow:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #height:I
    .end local v5           #width:I
    :cond_1
    :goto_3
    iget-boolean v6, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    if-eqz v6, :cond_2

    .line 846
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->handleDataChanged()V

    .line 848
    :cond_2
    iget v6, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    if-nez v6, :cond_8

    .line 850
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->resetList()V

    .line 902
    :goto_4
    return-void

    .line 807
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #height:I
    .restart local v5       #width:I
    :cond_3
    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLowBorder:I

    add-int v0, v6, v7

    .line 808
    .restart local v0       #childrenLow:I
    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_0

    .line 817
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_1

    .line 827
    :cond_5
    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemY:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_2

    .line 831
    :cond_6
    iput-boolean v9, p0, Lcom/htc/fragment/widget/Gallery;->mOrientationChangedFlag:Z

    goto :goto_2

    .line 840
    :cond_7
    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemY:I

    if-le v6, v0, :cond_1

    .line 841
    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemY:I

    sub-int/2addr v6, v2

    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_3

    .line 854
    .end local v0           #childrenLow:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #height:I
    .end local v5           #width:I
    :cond_8
    iget v6, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v6, :cond_9

    .line 855
    iget v6, p0, Lcom/htc/fragment/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/Gallery;->setSelectedPositionInt(I)V

    .line 857
    :cond_9
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->recycleAllViews()V

    .line 858
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->detachAllViewsFromParent()V

    .line 860
    iput v9, p0, Lcom/htc/fragment/widget/Gallery;->mLowMost:I

    .line 861
    iput v9, p0, Lcom/htc/fragment/widget/Gallery;->mHighMost:I

    .line 863
    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    const/16 v7, 0x3e9

    if-ne v6, v7, :cond_a

    .line 865
    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/FastScroller;->getFirstVisiblePosition()I

    move-result v6

    iput v6, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    .line 867
    iget-boolean v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v6, :cond_c

    .line 868
    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemX:I

    .line 873
    :cond_a
    :goto_5
    iget v6, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    iget v7, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    iget v8, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v9, v8}, Lcom/htc/fragment/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 875
    .local v3, sel:Landroid/view/View;
    iget-boolean v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v6, :cond_d

    .line 877
    iget v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemX:I

    .line 878
    .local v4, selectedOffset:I
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 886
    :goto_6
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->fillToGalleryHighEnd()V

    .line 887
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->fillToGalleryLowEnd()V

    .line 888
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->putGalleryThumb()V

    .line 890
    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->clear()V

    .line 891
    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v6, :cond_b

    .line 892
    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/FastScroller;->clearCache()V

    .line 894
    :cond_b
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->invalidate()V

    .line 895
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->checkSelectionChanged()V

    .line 897
    iput-boolean v9, p0, Lcom/htc/fragment/widget/AdapterView;->mNeedSync:Z

    .line 898
    iput-boolean v9, p0, Lcom/htc/fragment/widget/AdapterView;->mDataChanged:Z

    .line 899
    iget v6, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 901
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->updateSelectedItemMetadata()V

    goto/16 :goto_4

    .line 870
    .end local v3           #sel:Landroid/view/View;
    .end local v4           #selectedOffset:I
    :cond_c
    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_5

    .line 882
    .restart local v3       #sel:Landroid/view/View;
    :cond_d
    iget v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemY:I

    .line 883
    .restart local v4       #selectedOffset:I
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_6
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 575
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 574
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 576
    :cond_0
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 560
    return-void
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->onUp()V

    .line 1295
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1254
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v3}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    .line 1259
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1262
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1265
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1266
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1267
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1271
    :cond_1
    iput-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->mIsFirstScroll:Z

    .line 1274
    return v2
.end method

.method onDrawerClosed(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1826
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->setCurrentThumb(I)V

    .line 1827
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->showThumb()V

    .line 1831
    :cond_0
    return-void
.end method

.method onDrawerOpened()V
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->closeThumb()V

    .line 1837
    :cond_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 1192
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1196
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 1197
    iput-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1200
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 1201
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1205
    :goto_0
    return v2

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    neg-float v1, p4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1520
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1527
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1531
    :cond_0
    return-void
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

    .line 403
    invoke-super/range {p0 .. p5}, Lcom/htc/fragment/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/AdapterView;->mInLayout:Z

    .line 410
    invoke-virtual {p0, v1, v1}, Lcom/htc/fragment/widget/Gallery;->layout(IZ)V

    .line 411
    iput-boolean v1, p0, Lcom/htc/fragment/widget/AdapterView;->mInLayout:Z

    .line 412
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 1306
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    if-gez v0, :cond_0

    .line 1315
    :cond_0
    return-void
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

    .line 1214
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1216
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 1218
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1220
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 1221
    iput-boolean v3, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/fragment/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1232
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_3

    .line 1233
    neg-float v0, p3

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->trackMotionScroll(I)V

    .line 1237
    :goto_1
    iput-boolean v4, p0, Lcom/htc/fragment/widget/Gallery;->mIsFirstScroll:Z

    .line 1239
    return v3

    .line 1228
    :cond_2
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    .line 1229
    iput-boolean v4, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0

    .line 1235
    :cond_3
    neg-float v0, p4

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 1328
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1332
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/Gallery;->performHapticFeedback(I)Z

    .line 1333
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1336
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1337
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1338
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1339
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1341
    :cond_1
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1342
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1343
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1345
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/fragment/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 1168
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 1171
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollToChild(I)Z

    .line 1174
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/fragment/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1179
    :cond_1
    const/4 v0, 0x1

    .line 1182
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 1139
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v4, :cond_1

    .line 1140
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v4, p1}, Lcom/htc/fragment/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1141
    .local v1, intercepted:Z
    if-eqz v1, :cond_1

    move v2, v3

    .line 1156
    .end local v1           #intercepted:Z
    :cond_0
    :goto_0
    return v2

    .line 1146
    :cond_1
    iget-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1148
    .local v2, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1149
    .local v0, action:I
    if-ne v0, v3, :cond_2

    .line 1151
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->onUp()V

    goto :goto_0

    .line 1152
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 2

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1284
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1287
    :cond_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->dispatchUnpress()V

    .line 1288
    return-void
.end method

.method public partialFling(III)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "scrollAmount"

    .prologue
    .line 756
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/fragment/widget/Gallery;->partialFling(IIIZ)V

    .line 757
    return-void
.end method

.method public partialFling(IIIZ)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "scrollAmount"
    .parameter "isRequiredFill"

    .prologue
    .line 746
    if-eqz p3, :cond_0

    .line 747
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->startPartialUsingDistance(IIIZ)V

    .line 749
    :cond_0
    return-void
.end method

.method public scrollBy(I)V
    .locals 1
    .parameter "scrollAmount"

    .prologue
    .line 736
    if-eqz p1, :cond_0

    .line 737
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 739
    :cond_0
    return-void
.end method

.method scrollTo(I)V
    .locals 7
    .parameter "delta"

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, firstChild:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 445
    iget-boolean v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v5, :cond_2

    .line 447
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 448
    .local v2, itemWidth:I
    iget v5, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    mul-int/2addr v5, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/FastScroller;->getOffset()I

    move-result v6

    add-int v3, v5, v6

    .line 449
    .local v3, previousDeltax:I
    sub-int v5, v3, p1

    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_0

    .line 453
    .end local v2           #itemWidth:I
    .end local v3           #previousDeltax:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 454
    .local v1, itemHeight:I
    iget v5, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    mul-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/FastScroller;->getOffset()I

    move-result v6

    add-int v4, v5, v6

    .line 455
    .local v4, previousDeltay:I
    sub-int v5, v4, p1

    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_0
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 783
    invoke-super {p0}, Lcom/htc/fragment/widget/AbsSpinner;->selectionChanged()V

    .line 785
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 243
    iput p1, p0, Lcom/htc/fragment/widget/Gallery;->mAnimationDuration:I

    .line 244
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 214
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 227
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1499
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1500
    iput p1, p0, Lcom/htc/fragment/widget/Gallery;->mGravity:I

    .line 1501
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->requestLayout()V

    .line 1503
    :cond_0
    return-void
.end method

.method setOrientationChangedFlag(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1888
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery;->mOrientationChangedFlag:Z

    .line 1889
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1451
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1454
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->updateSelectedItemMetadata()V

    .line 1455
    return-void
.end method

.method setSelectionFromTop(II)V
    .locals 5
    .parameter "position"
    .parameter "xy"

    .prologue
    .line 1536
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_0

    .line 1554
    :goto_0
    return-void

    .line 1539
    :cond_0
    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v3, p1

    .line 1541
    .local v1, delta:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1542
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1546
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_2

    .line 1547
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v2, v1, v3

    .line 1551
    .local v2, distance:I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery;->trackMotionScroll(I)V

    .line 1553
    .end local v2           #distance:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setSelection(I)V

    goto :goto_0

    .line 1549
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v2, v1, v3

    .restart local v2       #distance:I
    goto :goto_1
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 258
    iput p1, p0, Lcom/htc/fragment/widget/Gallery;->mSpacing:I

    .line 259
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 273
    iput p1, p0, Lcom/htc/fragment/widget/Gallery;->mUnselectedAlpha:F

    .line 274
    return-void
.end method

.method setUpThumb(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 974
    if-eqz p1, :cond_1

    .line 976
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 978
    .local v6, lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 979
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    check-cast v6, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 981
    .restart local v6       #lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    :cond_0
    iget v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 983
    .local v1, childHeightSpec:I
    iget v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 986
    .local v5, childWidthSpec:I
    iget-boolean v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v7, :cond_2

    .line 988
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 990
    invoke-direct {p0, p1, v11}, Lcom/htc/fragment/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 991
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 992
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1, v10, v4, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 1007
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v6           #lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 996
    .restart local v1       #childHeightSpec:I
    .restart local v5       #childWidthSpec:I
    .restart local v6       #lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    :cond_2
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 998
    invoke-direct {p0, p1, v11}, Lcom/htc/fragment/widget/Gallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 999
    .local v2, childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1000
    .local v3, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p1, v2, v10, v3, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1416
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1417
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/fragment/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1418
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1419
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/fragment/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1422
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
    .line 1400
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1401
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1402
    const/4 v3, 0x0

    .line 1406
    :goto_0
    return v3

    .line 1405
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1406
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/fragment/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method stopFlingRunnable()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    #calls: Lcom/htc/fragment/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/fragment/widget/Gallery$FlingRunnable;Z)V

    .line 431
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->onFinishedMovement()V

    .line 433
    return-void
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "delta"

    .prologue
    const/4 v2, 0x0

    .line 462
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 491
    :goto_0
    return-void

    .line 465
    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    .line 467
    .local v1, toLowEnd:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/fragment/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 468
    .local v0, limitedDelta:I
    if-eq v0, p1, :cond_1

    .line 470
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    #calls: Lcom/htc/fragment/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/fragment/widget/Gallery$FlingRunnable;Z)V

    .line 471
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->onFinishedMovement()V

    .line 474
    :cond_1
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_3

    .line 475
    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 479
    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 481
    if-eqz v1, :cond_4

    .line 482
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->fillToGalleryHighEnd()V

    .line 486
    :goto_3
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->clear()V

    .line 488
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->invalidate()V

    .line 489
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->putGalleryThumb()V

    .line 490
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->invokeOnItemScrollListener()V

    goto :goto_0

    .end local v0           #limitedDelta:I
    .end local v1           #toLowEnd:Z
    :cond_2
    move v1, v2

    .line 465
    goto :goto_1

    .line 477
    .restart local v0       #limitedDelta:I
    .restart local v1       #toLowEnd:Z
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->offsetChildrenTopAndBottom(I)V

    goto :goto_2

    .line 484
    :cond_4
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->fillToGalleryLowEnd()V

    goto :goto_3
.end method

.method trackMotionScroll(IIIZ)V
    .locals 4
    .parameter "from"
    .parameter "to"
    .parameter "delta"
    .parameter "isRequiredFill"

    .prologue
    const/4 v2, 0x0

    .line 495
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 521
    :goto_0
    return-void

    .line 498
    :cond_0
    if-gez p3, :cond_3

    const/4 v1, 0x1

    .line 500
    .local v1, toLowEnd:Z
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/htc/fragment/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 501
    .local v0, limitedDelta:I
    if-eq v0, p3, :cond_1

    .line 503
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    #calls: Lcom/htc/fragment/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/fragment/widget/Gallery$FlingRunnable;Z)V

    .line 504
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->onFinishedMovement()V

    .line 507
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fragment/widget/Gallery;->offsetChildrenLowEndAndHighEnd(III)V

    .line 508
    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 510
    if-eqz p4, :cond_2

    .line 512
    if-eqz v1, :cond_4

    .line 513
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->fillToGalleryHighEnd()V

    .line 518
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->putGalleryThumb()V

    .line 519
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->clear()V

    .line 520
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDelta:I
    .end local v1           #toLowEnd:Z
    :cond_3
    move v1, v2

    .line 498
    goto :goto_1

    .line 515
    .restart local v0       #limitedDelta:I
    .restart local v1       #toLowEnd:Z
    :cond_4
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->fillToGalleryLowEnd()V

    goto :goto_2
.end method
