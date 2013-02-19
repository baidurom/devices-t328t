.class Lcom/htc/widget/Gallery;
.super Lcom/htc/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/Gallery$LayoutParams;,
        Lcom/htc/widget/Gallery$FlingRunnable;
    }
.end annotation


# static fields
.field static final MODE_ACTIVITY:I = 0x3e9

.field static final MODE_EDITOR:I = 0x3ea

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Carousel\'s Gallery"

.field private static final localLOGV:Z


# instance fields
.field private display:Landroid/view/Display;

.field private isPortrait:Z

.field private mAnimationDuration:I

.field private mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

.field mDetachCounter:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field protected mDragger:Lcom/htc/widget/DragController;

.field private mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

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
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 170
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
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

    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput v5, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    .line 69
    const/16 v4, 0x190

    iput v4, p0, Lcom/htc/widget/Gallery;->mAnimationDuration:I

    .line 99
    new-instance v4, Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-direct {v4, p0}, Lcom/htc/widget/Gallery$FlingRunnable;-><init>(Lcom/htc/widget/Gallery;)V

    iput-object v4, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    .line 105
    new-instance v4, Lcom/htc/widget/Gallery$1;

    invoke-direct {v4, p0}, Lcom/htc/widget/Gallery$1;-><init>(Lcom/htc/widget/Gallery;)V

    iput-object v4, p0, Lcom/htc/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 129
    iput-boolean v6, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 134
    iput-boolean v6, p0, Lcom/htc/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 163
    const/16 v4, 0x3e9

    iput v4, p0, Lcom/htc/widget/Gallery;->mState:I

    .line 211
    iput-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    .line 213
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget/Gallery;->display:Landroid/view/Display;

    .line 797
    iput-boolean v5, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    .line 1925
    iput-boolean v5, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    .line 177
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->setOrientation()V

    .line 179
    new-instance v4, Landroid/view/GestureDetector;

    invoke-direct {v4, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/htc/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 180
    iget-object v4, p0, Lcom/htc/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 182
    sget-object v4, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 185
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 186
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 187
    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->setGravity(I)V

    .line 190
    :cond_0
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 192
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 193
    invoke-virtual {p0, v1}, Lcom/htc/widget/Gallery;->setAnimationDuration(I)V

    .line 196
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 198
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/htc/widget/Gallery;->setSpacing(I)V

    .line 200
    const/high16 v4, 0x3f80

    invoke-virtual {p0, v4}, Lcom/htc/widget/Gallery;->setUnselectedAlpha(F)V

    .line 202
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    iget v4, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    .line 205
    iget v4, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    .line 207
    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->setFastScrollEnabled(Z)V

    .line 208
    return-void
.end method

.method static synthetic access$002(Lcom/htc/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$602(Lcom/htc/widget/Gallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    return v0
.end method

.method private calculateLeft(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 1158
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getMeasuredWidth()I

    move-result v2

    .line 1159
    .local v2, myWidth:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1161
    .local v1, childWidth:I
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 1163
    .local v0, childLeft:I
    return v0

    .line 1158
    .end local v0           #childLeft:I
    .end local v1           #childWidth:I
    .end local v2           #myWidth:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v2

    goto :goto_0

    .line 1159
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
    .line 1148
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getMeasuredHeight()I

    move-result v2

    .line 1149
    .local v2, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1151
    .local v0, childHeight:I
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 1153
    .local v1, childTop:I
    return v1

    .line 1148
    .end local v0           #childHeight:I
    .end local v1           #childTop:I
    .end local v2           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getHeight()I

    move-result v2

    goto :goto_0

    .line 1149
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
    .line 675
    const/4 v9, 0x0

    .line 676
    .local v9, start:I
    const/4 v1, 0x0

    .line 678
    .local v1, count:I
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v8

    .line 679
    .local v8, numChildren:I
    iget v2, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 681
    .local v2, firstPosition:I
    if-eqz p1, :cond_4

    .line 683
    iget-boolean v10, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v10, :cond_3

    .line 685
    iget v4, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    .line 686
    .local v4, galleryLeft:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 688
    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 690
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v10, v4, :cond_2

    .line 754
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v9, v1}, Lcom/htc/widget/Gallery;->detachViewsFromParent(II)V

    .line 756
    if-eqz p1, :cond_1

    .line 758
    iget v10, p0, Lcom/htc/widget/Gallery;->mDetachCounter:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/htc/widget/Gallery;->mDetachCounter:I

    .line 759
    iget v10, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 761
    :cond_1
    return-void

    .line 694
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 695
    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 686
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 701
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryLeft:I
    .end local v7           #i:I
    :cond_3
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    .line 702
    .local v6, galleryTop:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    if-ge v7, v8, :cond_0

    .line 704
    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 706
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v6, :cond_0

    .line 710
    add-int/lit8 v1, v1, 0x1

    .line 711
    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 702
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 718
    .end local v0           #child:Landroid/view/View;
    .end local v6           #galleryTop:I
    .end local v7           #i:I
    :cond_4
    iget-boolean v10, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v10, :cond_5

    .line 720
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int v5, v10, v11

    .line 721
    .local v5, galleryRight:I
    add-int/lit8 v7, v8, -0x1

    .restart local v7       #i:I
    :goto_2
    if-ltz v7, :cond_0

    .line 723
    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 725
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v10, v5, :cond_0

    .line 729
    move v9, v7

    .line 730
    add-int/lit8 v1, v1, 0x1

    .line 731
    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 721
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 737
    .end local v0           #child:Landroid/view/View;
    .end local v5           #galleryRight:I
    .end local v7           #i:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    sub-int v3, v10, v11

    .line 738
    .local v3, galleryBottom:I
    add-int/lit8 v7, v8, -0x1

    .restart local v7       #i:I
    :goto_3
    if-ltz v7, :cond_0

    .line 740
    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 742
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v3, :cond_0

    .line 746
    move v9, v7

    .line 747
    add-int/lit8 v1, v1, 0x1

    .line 748
    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 738
    add-int/lit8 v7, v7, -0x1

    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1450
    const/4 v6, 0x0

    .line 1452
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/htc/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1457
    :cond_0
    if-nez v6, :cond_1

    .line 1458
    new-instance v0, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/widget/Gallery;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    .line 1459
    invoke-super {p0, p0}, Lcom/htc/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1462
    :cond_1
    if-eqz v6, :cond_2

    .line 1463
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->performHapticFeedback(I)Z

    .line 1466
    :cond_2
    return v6
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1375
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1376
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1375
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1379
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->setPressed(Z)V

    .line 1380
    return-void
.end method

.method private fillToGalleryHighEnd()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 975
    iget v5, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    .line 976
    .local v5, numItems:I
    iget v3, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    .line 977
    .local v3, itemSpacing:I
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v4

    .line 978
    .local v4, numChildren:I
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/widget/AdapterView;->mRight:I

    iget v8, p0, Lcom/htc/widget/AdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 982
    .local v2, galleryHighEnd:I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 984
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 986
    iget v7, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 987
    .local v1, curPosition:I
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 996
    .local v0, curLowEndEdge:I
    :goto_1
    if-ge v0, v2, :cond_5

    if-ge v1, v5, :cond_5

    .line 998
    iget v7, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 999
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 1000
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 978
    .end local v0           #curLowEndEdge:I
    .end local v1           #curPosition:I
    .end local v2           #galleryHighEnd:I
    .end local v6           #prevIterationView:Landroid/view/View;
    :cond_0
    iget v7, p0, Lcom/htc/widget/AdapterView;->mBottom:I

    iget v8, p0, Lcom/htc/widget/AdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    sub-int v2, v7, v8

    goto :goto_0

    .line 987
    .restart local v1       #curPosition:I
    .restart local v2       #galleryHighEnd:I
    .restart local v6       #prevIterationView:Landroid/view/View;
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v0, v7, v3

    goto :goto_1

    .line 991
    .end local v1           #curPosition:I
    :cond_2
    iget v7, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 992
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_3

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    .line 993
    .restart local v0       #curLowEndEdge:I
    :goto_3
    iput-boolean v9, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    goto :goto_1

    .line 992
    .end local v0           #curLowEndEdge:I
    :cond_3
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    goto :goto_3

    .line 999
    .restart local v0       #curLowEndEdge:I
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v0, v7, v3

    goto :goto_2

    .line 1002
    :cond_5
    return-void
.end method

.method private fillToGalleryLowEnd()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 944
    iget v3, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    .line 945
    .local v3, itemSpacing:I
    iget-boolean v5, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_0

    iget v2, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    .line 947
    .local v2, galleryLowEnd:I
    :goto_0
    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 951
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 953
    iget v5, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 954
    .local v1, curPosition:I
    iget-boolean v5, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v0, v5, v3

    .line 963
    .local v0, curHighEdge:I
    :goto_1
    if-le v0, v2, :cond_5

    if-ltz v1, :cond_5

    .line 965
    iget v5, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Lcom/htc/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 966
    iput v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 968
    iget-boolean v5, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v0, v5, v3

    .line 969
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 945
    .end local v0           #curHighEdge:I
    .end local v1           #curPosition:I
    .end local v2           #galleryLowEnd:I
    .end local v4           #prevIterationView:Landroid/view/View;
    :cond_0
    iget v2, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    goto :goto_0

    .line 954
    .restart local v1       #curPosition:I
    .restart local v2       #galleryLowEnd:I
    .restart local v4       #prevIterationView:Landroid/view/View;
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    goto :goto_1

    .line 958
    .end local v1           #curPosition:I
    :cond_2
    const/4 v1, 0x0

    .line 959
    .restart local v1       #curPosition:I
    iget-boolean v5, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/htc/widget/AdapterView;->mRight:I

    iget v6, p0, Lcom/htc/widget/AdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 960
    .restart local v0       #curHighEdge:I
    :goto_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    goto :goto_1

    .line 959
    .end local v0           #curHighEdge:I
    :cond_3
    iget v5, p0, Lcom/htc/widget/AdapterView;->mBottom:I

    iget v6, p0, Lcom/htc/widget/AdapterView;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    sub-int v0, v5, v6

    goto :goto_3

    .line 968
    .restart local v0       #curHighEdge:I
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    goto :goto_2

    .line 971
    :cond_5
    return-void
.end method

.method private getHighEndOfGallery()I
    .locals 2

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 648
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getHighEndOfView(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 664
    if-nez p1, :cond_0

    .line 665
    const/4 v0, 0x0

    .line 670
    :goto_0
    return v0

    .line 667
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    .line 670
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method private getLowEndOfGallery()I
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 638
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    .line 640
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    goto :goto_0
.end method

.method private getLowEndOfView(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 653
    if-nez p1, :cond_0

    .line 654
    const/4 v0, 0x0

    .line 659
    :goto_0
    return v0

    .line 656
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 659
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
    .line 1058
    iget-boolean v4, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_2

    .line 1060
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4, p1}, Lcom/htc/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 1061
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1063
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/Gallery;->setChildLayoutParams(ILandroid/view/View;)V

    .line 1065
    iget-boolean v4, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1066
    .local v2, childLowEnd:I
    :goto_0
    iget-boolean v4, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1068
    .local v3, length:I
    :goto_1
    iget v4, p0, Lcom/htc/widget/Gallery;->mHighMost:I

    add-int v5, v2, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/Gallery;->mHighMost:I

    .line 1069
    iget v4, p0, Lcom/htc/widget/Gallery;->mLowMost:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/Gallery;->mLowMost:I

    .line 1070
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1081
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLowEnd:I
    .end local v3           #length:I
    .local v1, child:Landroid/view/View;
    :goto_2
    return-object v1

    .line 1065
    .end local v1           #child:Landroid/view/View;
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    .line 1066
    .restart local v2       #childLowEnd:I
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_1

    .line 1076
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLowEnd:I
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1078
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/Gallery;->setChildLayoutParams(ILandroid/view/View;)V

    .line 1079
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1081
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_2
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 603
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 602
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 604
    :cond_0
    return-void
.end method

.method private offsetChildrenLowEndAndHighEnd(III)V
    .locals 3
    .parameter "from"
    .parameter "to"
    .parameter "offset"

    .prologue
    .line 619
    iget v2, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p2, v2

    .line 620
    iget v2, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, v2

    .line 622
    add-int/lit8 v1, p2, -0x1

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_2

    .line 624
    invoke-virtual {p0, v1}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 625
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 627
    iget-boolean v2, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_1

    .line 628
    invoke-virtual {v0, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 622
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 630
    :cond_1
    invoke-virtual {v0, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 633
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 813
    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    .line 815
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    .line 816
    return-void
.end method

.method private putGalleryThumb()V
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->isEditorMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 1008
    :cond_0
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 1
    .parameter "childPosition"

    .prologue
    .line 1470
    const/4 v0, 0x0

    return v0
.end method

.method private setChildLayoutParams(ILandroid/view/View;)V
    .locals 10
    .parameter "position"
    .parameter "child"

    .prologue
    const/4 v8, 0x0

    .line 1866
    if-nez p2, :cond_0

    .line 1918
    :goto_0
    return-void

    .line 1869
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedPosition()I

    move-result v5

    .line 1870
    .local v5, reducedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getShrinkedPosition()I

    move-result v6

    .line 1871
    .local v6, shrinkedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedPosition()I

    move-result v0

    .line 1873
    .local v0, expandedPos:I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 1874
    .local v4, paddingTop:I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 1875
    .local v2, paddingLeft:I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 1876
    .local v3, paddingRight:I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 1878
    .local v1, paddingBottom:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    .line 1880
    if-ne p1, v5, :cond_2

    .line 1882
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateReducedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1884
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_1

    .line 1885
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v8

    sub-int v2, v7, v8

    .line 1889
    :goto_1
    invoke-virtual {p2, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1887
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsHeight()I

    move-result v8

    sub-int v4, v7, v8

    goto :goto_1

    .line 1891
    :cond_2
    if-ne p1, v6, :cond_5

    .line 1893
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateShrinkedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1894
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_4

    move v7, v8

    :goto_2
    iget-boolean v9, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v9, :cond_3

    move v8, v4

    :cond_3
    invoke-virtual {p2, v7, v8, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    move v7, v2

    goto :goto_2

    .line 1896
    :cond_5
    if-ne p1, v0, :cond_7

    .line 1898
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateExpandedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1900
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_6

    .line 1901
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v8

    sub-int v2, v7, v8

    .line 1905
    :goto_3
    invoke-virtual {p2, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1903
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsHeight()I

    move-result v8

    sub-int v4, v7, v8

    goto :goto_3

    .line 1909
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1910
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_9

    move v7, v8

    :goto_4
    iget-boolean v9, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v9, :cond_8

    move v8, v4

    :cond_8
    invoke-virtual {p2, v7, v8, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_9
    move v7, v2

    goto :goto_4

    .line 1915
    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1916
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_c

    move v7, v8

    :goto_5
    iget-boolean v9, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v9, :cond_b

    move v8, v4

    :cond_b
    invoke-virtual {p2, v7, v8, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_c
    move v7, v2

    goto :goto_5
.end method

.method private setOrientation()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/widget/Gallery;->display:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/Gallery;->display:Landroid/view/Display;

    .line 220
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    .line 221
    return-void
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

    .line 1086
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/Gallery$LayoutParams;

    .line 1088
    .local v6, lparams:Lcom/htc/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 1089
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lparams:Lcom/htc/widget/Gallery$LayoutParams;
    check-cast v6, Lcom/htc/widget/Gallery$LayoutParams;

    .line 1091
    .restart local v6       #lparams:Lcom/htc/widget/Gallery$LayoutParams;
    :cond_0
    if-eqz p4, :cond_2

    const/4 v7, -0x1

    :goto_0
    invoke-virtual {p0, p1, v7, v6}, Lcom/htc/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1092
    if-nez p2, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1094
    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v8, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1096
    .local v1, childHeightSpec:I
    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v7, v8, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1099
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1104
    if-eqz p4, :cond_4

    .line 1106
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_3

    .line 1108
    move v2, p3

    .line 1109
    .local v2, childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1111
    .local v3, childRight:I
    invoke-direct {p0, p1, v9}, Lcom/htc/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1112
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 1143
    .local v0, childBottom:I
    :goto_1
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1144
    return-void

    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    :cond_2
    move v7, v8

    .line 1091
    goto :goto_0

    .line 1116
    .restart local v1       #childHeightSpec:I
    .restart local v5       #childWidthSpec:I
    :cond_3
    invoke-direct {p0, p1, v9}, Lcom/htc/widget/Gallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 1117
    .restart local v2       #childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1119
    .restart local v3       #childRight:I
    move v4, p3

    .line 1120
    .restart local v4       #childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .restart local v0       #childBottom:I
    goto :goto_1

    .line 1125
    .end local v0           #childBottom:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    :cond_4
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_5

    .line 1127
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v2, p3, v7

    .line 1128
    .restart local v2       #childLeft:I
    move v3, p3

    .line 1130
    .restart local v3       #childRight:I
    invoke-direct {p0, p1, v9}, Lcom/htc/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1131
    .restart local v4       #childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .restart local v0       #childBottom:I
    goto :goto_1

    .line 1135
    .end local v0           #childBottom:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    :cond_5
    invoke-direct {p0, p1, v9}, Lcom/htc/widget/Gallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 1136
    .restart local v2       #childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1138
    .restart local v3       #childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v4, p3, v7

    .line 1139
    .restart local v4       #childTop:I
    move v0, p3

    .restart local v0       #childBottom:I
    goto :goto_1
.end method

.method private updateSelectedItemMetadata()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1483
    iget-object v1, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1485
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1486
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1490
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1491
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1493
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1494
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1499
    :cond_2
    if-eqz v1, :cond_0

    .line 1502
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1506
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method calibrateThumb(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->isEditorMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->calibrateThumb(I)V

    .line 1052
    :cond_0
    return-void
.end method

.method cancelAnimation()V
    .locals 0

    .prologue
    .line 1922
    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->cancelAnimation()V

    .line 1923
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 362
    instance-of v0, p1, Lcom/htc/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1406
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1393
    return-void
.end method

.method public forceStopPartialFling()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    .line 804
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 805
    iput-boolean v1, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    .line 806
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 391
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    .line 394
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected generateExpandedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 415
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 416
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    .line 418
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 380
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 371
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateReducedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 427
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    .line 430
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected generateShrinkedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 403
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getShrinkedWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    .line 406
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getShrinkedHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1535
    return p2
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 320
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 321
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 323
    const/4 v0, 0x1

    return v0

    .line 321
    :cond_0
    iget v0, p0, Lcom/htc/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLowEnd"
    .parameter "delta"

    .prologue
    const/4 v5, 0x0

    .line 562
    iget-object v6, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v6}, Lcom/htc/widget/Gallery$FlingRunnable;->isPartialFling()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move v5, p2

    .line 592
    :cond_0
    :goto_0
    return v5

    .line 565
    :cond_1
    if-eqz p1, :cond_2

    iget v6, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 566
    .local v3, extremeItemPosition:I
    :goto_1
    iget v6, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 568
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_3

    move v5, p2

    .line 569
    goto :goto_0

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_2
    move v3, v5

    .line 565
    goto :goto_1

    .line 572
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_3
    if-eqz p1, :cond_5

    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery;->getHighEndOfView(Landroid/view/View;)I

    move-result v2

    .line 574
    .local v2, extremeChildBound:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getDragBinGridView()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 575
    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getHighEndOfGallery()I

    move-result v7

    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v6

    :goto_3
    sub-int v4, v7, v6

    .line 579
    .local v4, galleryBound:I
    :goto_4
    if-eqz p1, :cond_a

    .line 581
    if-le v2, v4, :cond_0

    .line 590
    :cond_4
    sub-int v0, v4, v2

    .line 592
    .local v0, boundDifference:I
    if-eqz p1, :cond_b

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 572
    .end local v0           #boundDifference:I
    .end local v2           #extremeChildBound:I
    .end local v4           #galleryBound:I
    :cond_5
    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery;->getLowEndOfView(Landroid/view/View;)I

    move-result v2

    goto :goto_2

    .line 575
    .restart local v2       #extremeChildBound:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsHeight()I

    move-result v6

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getLowEndOfGallery()I

    move-result v4

    goto :goto_4

    .line 577
    :cond_8
    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getHighEndOfGallery()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mHighBorder:I

    sub-int v4, v6, v7

    .restart local v4       #galleryBound:I
    :goto_5
    goto :goto_4

    .end local v4           #galleryBound:I
    :cond_9
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getLowEndOfGallery()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int v4, v6, v7

    goto :goto_5

    .line 586
    .restart local v4       #galleryBound:I
    :cond_a
    if-lt v2, v4, :cond_4

    goto :goto_0

    .line 592
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

    .line 830
    iget v6, p0, Lcom/htc/widget/Gallery;->mState:I

    const/16 v7, 0x3ea

    if-ne v6, v7, :cond_1

    .line 832
    const/4 v5, 0x0

    .line 833
    .local v5, width:I
    const/4 v2, 0x0

    .line 836
    .local v2, height:I
    invoke-virtual {p0, v9}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 838
    .local v1, firstChild:Landroid/view/View;
    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_3

    .line 840
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int v0, v6, v7

    .line 841
    .local v0, childrenLow:I
    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 850
    :goto_0
    if-eqz v1, :cond_6

    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    if-nez v6, :cond_6

    .line 852
    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_4

    .line 853
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 857
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 858
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 860
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 862
    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_5

    .line 863
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 871
    :cond_0
    :goto_2
    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_7

    .line 873
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    if-le v6, v0, :cond_1

    .line 874
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 883
    .end local v0           #childrenLow:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #height:I
    .end local v5           #width:I
    :cond_1
    :goto_3
    iget-boolean v6, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    if-eqz v6, :cond_2

    .line 884
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->handleDataChanged()V

    .line 886
    :cond_2
    iget v6, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-nez v6, :cond_8

    .line 888
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->resetList()V

    .line 940
    :goto_4
    return-void

    .line 845
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #height:I
    .restart local v5       #width:I
    :cond_3
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int v0, v6, v7

    .line 846
    .restart local v0       #childrenLow:I
    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_0

    .line 855
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_1

    .line 865
    :cond_5
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_2

    .line 869
    :cond_6
    iput-boolean v9, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    goto :goto_2

    .line 878
    :cond_7
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    if-le v6, v0, :cond_1

    .line 879
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    sub-int/2addr v6, v2

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_3

    .line 892
    .end local v0           #childrenLow:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #height:I
    .end local v5           #width:I
    :cond_8
    iget v6, p0, Lcom/htc/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v6, :cond_9

    .line 893
    iget v6, p0, Lcom/htc/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->setSelectedPositionInt(I)V

    .line 895
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->recycleAllViews()V

    .line 896
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->detachAllViewsFromParent()V

    .line 898
    iput v9, p0, Lcom/htc/widget/Gallery;->mLowMost:I

    .line 899
    iput v9, p0, Lcom/htc/widget/Gallery;->mHighMost:I

    .line 901
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/htc/widget/Gallery;->mState:I

    const/16 v7, 0x3e9

    if-ne v6, v7, :cond_a

    .line 903
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/widget/FastScroller;->getFirstVisiblePosition()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 905
    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_c

    .line 906
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v7}, Lcom/htc/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 911
    :cond_a
    :goto_5
    iget v6, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    iget v7, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    iget v8, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v9, v8}, Lcom/htc/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 913
    .local v3, sel:Landroid/view/View;
    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_d

    .line 915
    iget v4, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 916
    .local v4, selectedOffset:I
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 924
    :goto_6
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryHighEnd()V

    .line 925
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryLowEnd()V

    .line 926
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->putGalleryThumb()V

    .line 928
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v6}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    .line 929
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v6, :cond_b

    .line 930
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/widget/FastScroller;->clearCache()V

    .line 932
    :cond_b
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    .line 933
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->checkSelectionChanged()V

    .line 935
    iput-boolean v9, p0, Lcom/htc/widget/AdapterView;->mNeedSync:Z

    .line 936
    iput-boolean v9, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    .line 937
    iget v6, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 939
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->updateSelectedItemMetadata()V

    goto/16 :goto_4

    .line 908
    .end local v3           #sel:Landroid/view/View;
    .end local v4           #selectedOffset:I
    :cond_c
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v7}, Lcom/htc/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    goto :goto_5

    .line 920
    .restart local v3       #sel:Landroid/view/View;
    :cond_d
    iget v4, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemY:I

    .line 921
    .restart local v4       #selectedOffset:I
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_6
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 613
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 612
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 614
    :cond_0
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1329
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->onUp()V

    .line 1330
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/htc/widget/AbsSpinner;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 231
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->setOrientation()V

    .line 232
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1289
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v3}, Lcom/htc/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    .line 1294
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1297
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1300
    :cond_0
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1301
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1302
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1306
    :cond_1
    iput-boolean v2, p0, Lcom/htc/widget/Gallery;->mIsFirstScroll:Z

    .line 1309
    return v2
.end method

.method onDrawerClosed(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->setCurrentThumb(I)V

    .line 1851
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->showThumb()V

    .line 1855
    :cond_0
    return-void
.end method

.method onDrawerOpened()V
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->closeThumb()V

    .line 1861
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

    .line 1227
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1231
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 1232
    iput-boolean v2, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1235
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1240
    :goto_0
    return v2

    .line 1238
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    neg-float v1, p4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1544
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1551
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1555
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

    .line 440
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AdapterView;->mInLayout:Z

    .line 447
    invoke-virtual {p0, v1, v1}, Lcom/htc/widget/Gallery;->layout(IZ)V

    .line 448
    iput-boolean v1, p0, Lcom/htc/widget/AdapterView;->mInLayout:Z

    .line 449
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 1341
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-gez v0, :cond_0

    .line 1350
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

    .line 1249
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1251
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 1253
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1255
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 1256
    iput-boolean v3, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1267
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_3

    .line 1268
    neg-float v0, p3

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    .line 1272
    :goto_1
    iput-boolean v4, p0, Lcom/htc/widget/Gallery;->mIsFirstScroll:Z

    .line 1274
    return v3

    .line 1263
    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    .line 1264
    iput-boolean v4, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0

    .line 1270
    :cond_3
    neg-float v0, p4

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 1363
    iget v2, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 1371
    :goto_0
    return-void

    .line 1367
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->performHapticFeedback(I)Z

    .line 1368
    iget v2, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1369
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 1203
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 1206
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/Gallery;->scrollToChild(I)Z

    .line 1209
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1214
    :cond_1
    const/4 v0, 0x1

    .line 1217
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

    .line 1174
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v4, :cond_1

    .line 1175
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v4, p1}, Lcom/htc/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1176
    .local v1, intercepted:Z
    if-eqz v1, :cond_1

    move v2, v3

    .line 1191
    .end local v1           #intercepted:Z
    :cond_0
    :goto_0
    return v2

    .line 1181
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1183
    .local v2, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1184
    .local v0, action:I
    if-ne v0, v3, :cond_2

    .line 1186
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->onUp()V

    goto :goto_0

    .line 1187
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 1188
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1319
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1322
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->dispatchUnpress()V

    .line 1323
    return-void
.end method

.method public partialFling(III)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "scrollAmount"

    .prologue
    .line 794
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/widget/Gallery;->partialFling(IIIZ)V

    .line 795
    return-void
.end method

.method public partialFling(IIIZ)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "scrollAmount"
    .parameter "isRequiredFill"

    .prologue
    .line 784
    if-eqz p3, :cond_0

    .line 785
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/Gallery$FlingRunnable;->startPartialUsingDistance(IIIZ)V

    .line 787
    :cond_0
    return-void
.end method

.method public scrollBy(I)V
    .locals 1
    .parameter "scrollAmount"

    .prologue
    .line 774
    if-eqz p1, :cond_0

    .line 775
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 777
    :cond_0
    return-void
.end method

.method scrollTo(I)V
    .locals 7
    .parameter "delta"

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 480
    .local v0, firstChild:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 482
    iget-boolean v5, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_2

    .line 484
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 485
    .local v2, itemWidth:I
    iget v5, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    mul-int/2addr v5, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/widget/FastScroller;->getOffset()I

    move-result v6

    add-int v3, v5, v6

    .line 486
    .local v3, previousDeltax:I
    sub-int v5, v3, p1

    invoke-virtual {p0, v5}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_0

    .line 490
    .end local v2           #itemWidth:I
    .end local v3           #previousDeltax:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 491
    .local v1, itemHeight:I
    iget v5, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    mul-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/widget/FastScroller;->getOffset()I

    move-result v6

    add-int v4, v5, v6

    .line 492
    .local v4, previousDeltay:I
    sub-int v5, v4, p1

    invoke-virtual {p0, v5}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_0
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 821
    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    .line 823
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 280
    iput p1, p0, Lcom/htc/widget/Gallery;->mAnimationDuration:I

    .line 281
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 251
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 264
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1523
    iget v0, p0, Lcom/htc/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1524
    iput p1, p0, Lcom/htc/widget/Gallery;->mGravity:I

    .line 1525
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->requestLayout()V

    .line 1527
    :cond_0
    return-void
.end method

.method setOrientationChangedFlag(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1928
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    .line 1929
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1475
    invoke-super {p0, p1}, Lcom/htc/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1478
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->updateSelectedItemMetadata()V

    .line 1479
    return-void
.end method

.method setSelectionFromTop(II)V
    .locals 5
    .parameter "position"
    .parameter "xy"

    .prologue
    .line 1560
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_0

    .line 1578
    :goto_0
    return-void

    .line 1563
    :cond_0
    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v3, p1

    .line 1565
    .local v1, delta:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1566
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1570
    iget-boolean v3, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v3, :cond_2

    .line 1571
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v2, v1, v3

    .line 1575
    .local v2, distance:I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    .line 1577
    .end local v2           #distance:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/widget/Gallery;->setSelection(I)V

    goto :goto_0

    .line 1573
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
    .line 295
    iput p1, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    .line 296
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 310
    iput p1, p0, Lcom/htc/widget/Gallery;->mUnselectedAlpha:F

    .line 311
    return-void
.end method

.method setUpThumb(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1012
    if-eqz p1, :cond_1

    .line 1014
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/Gallery$LayoutParams;

    .line 1016
    .local v6, lparams:Lcom/htc/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lparams:Lcom/htc/widget/Gallery$LayoutParams;
    check-cast v6, Lcom/htc/widget/Gallery$LayoutParams;

    .line 1019
    .restart local v6       #lparams:Lcom/htc/widget/Gallery$LayoutParams;
    :cond_0
    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1021
    .local v1, childHeightSpec:I
    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1024
    .local v5, childWidthSpec:I
    iget-boolean v7, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_2

    .line 1026
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1028
    invoke-direct {p0, p1, v11}, Lcom/htc/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1029
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 1030
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1, v10, v4, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 1046
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v6           #lparams:Lcom/htc/widget/Gallery$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 1034
    .restart local v1       #childHeightSpec:I
    .restart local v5       #childWidthSpec:I
    .restart local v6       #lparams:Lcom/htc/widget/Gallery$LayoutParams;
    :cond_2
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1036
    invoke-direct {p0, p1, v11}, Lcom/htc/widget/Gallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 1037
    .local v2, childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1038
    .local v3, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p1, v2, v10, v3, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1440
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1441
    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1442
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1443
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1446
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
    .line 1424
    invoke-virtual {p0, p1}, Lcom/htc/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1425
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1426
    const/4 v3, 0x0

    .line 1430
    :goto_0
    return v3

    .line 1429
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1430
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method stopFlingRunnable()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V

    .line 468
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->onFinishedMovement()V

    .line 470
    return-void
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "delta"

    .prologue
    const/4 v2, 0x0

    .line 499
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 528
    :goto_0
    return-void

    .line 502
    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    .line 504
    .local v1, toLowEnd:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 505
    .local v0, limitedDelta:I
    if-eq v0, p1, :cond_1

    .line 507
    iget-object v3, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    #calls: Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V

    .line 508
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->onFinishedMovement()V

    .line 511
    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_3

    .line 512
    invoke-direct {p0, v0}, Lcom/htc/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 516
    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 518
    if-eqz v1, :cond_4

    .line 519
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryHighEnd()V

    .line 523
    :goto_3
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    .line 525
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    .line 526
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->putGalleryThumb()V

    .line 527
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invokeOnItemScrollListener()V

    goto :goto_0

    .end local v0           #limitedDelta:I
    .end local v1           #toLowEnd:Z
    :cond_2
    move v1, v2

    .line 502
    goto :goto_1

    .line 514
    .restart local v0       #limitedDelta:I
    .restart local v1       #toLowEnd:Z
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->offsetChildrenTopAndBottom(I)V

    goto :goto_2

    .line 521
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryLowEnd()V

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

    .line 532
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 558
    :goto_0
    return-void

    .line 535
    :cond_0
    if-gez p3, :cond_3

    const/4 v1, 0x1

    .line 537
    .local v1, toLowEnd:Z
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/htc/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 538
    .local v0, limitedDelta:I
    if-eq v0, p3, :cond_1

    .line 540
    iget-object v3, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    #calls: Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V

    .line 541
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->onFinishedMovement()V

    .line 544
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/Gallery;->offsetChildrenLowEndAndHighEnd(III)V

    .line 545
    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 547
    if-eqz p4, :cond_2

    .line 549
    if-eqz v1, :cond_4

    .line 550
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryHighEnd()V

    .line 555
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->putGalleryThumb()V

    .line 556
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    .line 557
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDelta:I
    .end local v1           #toLowEnd:Z
    :cond_3
    move v1, v2

    .line 535
    goto :goto_1

    .line 552
    .restart local v0       #limitedDelta:I
    .restart local v1       #toLowEnd:Z
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryLowEnd()V

    goto :goto_2
.end method
